# !/usr/bin/env python
import rospy
import cv2
import sys
import message_filters
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Twist
import roslib

# from rospy.exceptions import ROSException
roslib.load_manifest('naoqi_driver')

import actionlib
import naoqi_bridge_msgs.msg

import os
import numpy
from sensor_msgs.msg import JointState
from nao_interaction_msgs.msg import (AudioSourceLocalization)
import time
from naoqi_bridge_msgs.msg import(
    BlinkAction,
    BlinkResult,
    BlinkFeedback,
    FadeRGB
    )

class NaoSocial:
    def __init__(self):

        cv2.namedWindow("Image window", 1)
        self.bridge = CvBridge()
        cv2.startWindowThread()
        self.imgthreshMultiplier = 3

        self.imginfo=[0,0]  #x y
        self.imgCenter=[0,0] # xy

        self.imgThreshold = [0,0]
        self.imgp = 0.1


        self.headOdom = [0,0] # yaw , pitch
        self.imgin =0
        self.init =0
        self.habituation = 0
        self.undetectedcount=0

        #publisher
        self.image_pub = rospy.Publisher("nao_detection", Image,queue_size=10)

        #subscribers
        self.image_sub = rospy.Subscriber("/camera/image_raw", Image,self.imgCallback)
        self.statesub = rospy.Subscriber("/joint_states", JointState, self.jointstateC)
        self.image  = numpy.zeros((160,120,3), numpy.uint8)
        self.voiceDetection = rospy.Subscriber("/nao_behavior/speech_detection", AudioSourceLocalization, self.speechCallback)



        #joint clients

        # initialize movement client
        self.client = actionlib.SimpleActionClient("joint_trajectory", naoqi_bridge_msgs.msg.JointTrajectoryAction)
        self.stiffness_client = actionlib.SimpleActionClient("joint_stiffness_trajectory",
                                                             naoqi_bridge_msgs.msg.JointTrajectoryAction)
        self.angle_client = actionlib.SimpleActionClient("joint_angles_action",
                                                         naoqi_bridge_msgs.msg.JointAnglesWithSpeedAction)
        rospy.loginfo("Waiting for joint_trajectory and joint_stiffness servers...")
        self.client.wait_for_server()
        self.stiffness_client.wait_for_server()
        self.angle_client.wait_for_server()
        rospy.loginfo("connected to servers.")

    def speechCallback(self,msg):

    # msg.azimuth.data = value[1][0]
    #  msg.elevation.data = value[1][1]
    #  msg.confidence.data = value[1][2]
    #   msg.energy.data = value[1][3]

    #   msg.head_pose.position.x = value[2][0]
    #  msg.head_pose.position.y = value[2][1]
    #  msg.head_pose.position.z = value[2][2]
    #  msg.head_pose.orientation.x = value[2][3]
    #  msg.head_pose.orientation.y = value[2][4]


        #self.pose2( msg.azimuth.data, msg.elevation.data  )
          self.pose2(msg.head_pose.position.x, msg.head_pose.position.y)


    def jointstateC(self, data):
        #keeps our odom up to date
        self.headOdom[0] = data.position[0]
        self.headOdom[1] = data.position[1]


    def imgCallback(self, rgb_data):
        try:
            # get images
            cv_image = self.bridge.imgmsg_to_cv2(rgb_data, "bgr8")
            # i = cv2.resize(cv_image, (320, 240))

            # get image dimensions on first run
            if  self.imginfo[0] == 0:
                self.set_ini_var(cv_image)

            # outimg = self.detectface( cv_image )
            self.image = cv_image


            # publush images to rostopic
            #  self.publishimg(outimg)

        except CvBridgeError, e:
            print e

    def detectface(self):
        gray = cv2.cvtColor(self.image, cv2.COLOR_BGR2GRAY)
        cv2.equalizeHist(gray, gray)
        faceCascade = cv2.CascadeClassifier("haarcascades/haarcascade_frontalface_alt2.xml")
        faces = faceCascade.detectMultiScale(
            gray,
            minNeighbors=5,
            scaleFactor=1.1,
            minSize=(15, 15),
            flags=cv2.cv.CV_HAAR_SCALE_IMAGE)
        distanceCenter = 999
        currentFace = [0,0]
        for (x, y, w, h) in faces:

           # cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 255, 0), 2)
            center = [x + (w / 2), y + (h / 2)]
            cv2.circle(self.image, (center[0], center[1]), 3, (0, 0, 255), -1)
            # Oonly move to closest face to the center
            currentdistanceC = abs(center[0] - self.imgCenter[0])

            if currentdistanceC < distanceCenter:
                currentFace = center
                distanceCenter =currentdistanceC#
        if currentFace[0] != 0:
            # if face is too far away from the center we dont want to move

            if abs(currentFace[0] - self.imgCenter[0]) < self.imgThreshold[0] * self.imgthreshMultiplier:
                self.calculateMovement(currentFace)
                self.habituation +=1
                self.undetectedcount = 0
                self.imgthreshMultiplier = 3
                if (self.habituation  %20) == 0:
                    print 'nodding'
                    self.nod()

        else:
            self.undetectedcount +=1
            if self.undetectedcount >120:
                self.habituation = 0
                self.imgthreshMultiplier = 9999
                self.undetectedcount = 0
              #  print "reset"

        return self.image

    def calculateMovement(self, center):
        #


        yaw = self.headOdom[0]
        pitch = self.headOdom[1]

        yawMultiplier = 0.007
        pitchMultiplier = 0.005
        # if the x of the center is below threshhold we dont want to move as item is in the center
        if abs(center[0] - self.imgCenter[0]) < self.imgThreshold[0]:
            print("yc")
        # if on the right of image
        elif center[0] > self.imgCenter[0]:
            diff = abs(center[0] - self.imgCenter[0])
            pos = diff * yawMultiplier
            yaw = yaw - pos
        # lef side of image
        elif center[0] < self.imgCenter[0]:
            diff = abs(center[0] - self.imgCenter[0])
            pos = diff * yawMultiplier
            yaw = yaw + pos
            # pitch


        if abs(center[1] - self.imgCenter[1]) < self.imgThreshold[1]:
            print("pc")
        elif center[1] > self.imgCenter[1]:
            diff = abs(center[1] - self.imgCenter[1])
            pos = diff * pitchMultiplier
            pitch = yaw + pos

        elif center[1] < self.imgCenter[1]:
            diff = abs(center[1] - self.imgCenter[1])
            pos = diff * pitchMultiplier
            pitch -= pos

        self.pose(yaw, pitch)

    def nod(self):
        prevodom = self.headOdom
        odom = self.headOdom
        odom[1] -= 0.2
        self.pose2(odom[0],odom[1],0.08)

        odom[1] += 0.2
        self.pose2(odom[0], odom[1],0.08)

       # self.pose2(prevodom[0], prevodom[1], 0.1)



    def pose(self, yaw, pitch):
        # if  the goal head location is out of range dont move
        # print(yaw)
        # print(pitch)

        if yaw < -1.1 or yaw > 1.1:
            yaw = self.headOdom[0]

        if pitch < -1 or pitch > 1.7:
            pitch = self.headOdom[1]

            # if  both the yaw and pitch doent need to be chance
        if yaw == self.headOdom[0] and pitch == self.headOdom[1]:
            return

        angle_goal = naoqi_bridge_msgs.msg.JointAnglesWithSpeedGoal()
        angle_goal.joint_angles.relative = 0
        angle_goal.joint_angles.joint_names = ["HeadYaw", "HeadPitch"]

        angle_goal.joint_angles.joint_angles = [yaw, pitch]
        angle_goal.joint_angles.speed = 0.1

        self.angle_client.send_goal_and_wait(angle_goal)
        result = self.angle_client.get_result()


    def pose2(self, yaw, pitch,speed):




        angle_goal = naoqi_bridge_msgs.msg.JointAnglesWithSpeedGoal()
        angle_goal.joint_angles.relative = 0
        angle_goal.joint_angles.joint_names = ["HeadYaw", "HeadPitch"]

        angle_goal.joint_angles.joint_angles = [yaw, pitch]
        angle_goal.joint_angles.speed = speed

        self.angle_client.send_goal_and_wait(angle_goal)
        result = self.angle_client.get_result()

    def set_ini_var(self, cv_image):
        # get height and with
        self.imginfo[1] = numpy.size(cv_image, 0)  # x
        self.imginfo[0] = numpy.size(cv_image, 1)  # y
        # calculate center position
        self.imgCenter[0] = self.imginfo[0] / 2
        self.imgCenter[1] = self.imginfo[1] / 2
        self.imgThreshold[0] = self.imgCenter[0] * self.imgp
        self.imgThreshold[1] = self.imgCenter[1] * self.imgp
        self.image = numpy.zeros((self.imginfo[0], self.imginfo[1], 3), numpy.uint8)
        self.imgthreshMultiplier = 999
        self.init =1

    def run(self):

        while  True:
          if self.init ==1:
             img =  self.detectface()
             cv2.imshow("Image window", img)
          if cv2.waitKey(30) & 0xFF == ord('q'):
              sys.exit()

              break

rospy.init_node('NaoSocial', anonymous=True)
app = NaoSocial()
app.run()



rospy.spin()




