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

# ver 2.1.3.3
# Nao Ip 10.18.12.56
#vice activitiy detection
#behaviours script
#manamaging conflics, keep general
#visualization in rviz
#rosbag logging
class NaoSocial:
    def __init__(self):
        # initial trackbar settings
        self.imgH = 0
        self.imgW = 0
        self.imgp = 0.1
        self.imgCx = 0
        self.imgCy = 0
        self.imgThresh = 0
        self.headYaw = 1
        self.headPitch = 0
        self.init = 0
        self.currentFace = [0,0]


        self.image_pub = rospy.Publisher("nao_detection", Image,queue_size=10)
        self.led_pub = rospy.Publisher("/fade_rgb",FadeRGB,queue_size =10)
        self.ledmsg = FadeRGB();
        self.bridge = CvBridge()
      #  self.image_sub = message_filters.Subscriber("/camera/image_raw", Image)
        self.image_sub = rospy.Subscriber("/camera/image_raw", Image,self.imgCallback)
        self.localization = rospy.Subscriber('/nao_audio/audio_source_localization', AudioSourceLocalization, self.localization_callback)


        self.statesub = rospy.Subscriber("/joint_states", JointState, self.jointstateC)
        self.image  = numpy.zeros((160,120,3), numpy.uint8)

        # initialize movement client
        self.client = actionlib.SimpleActionClient("joint_trajectory", naoqi_bridge_msgs.msg.JointTrajectoryAction)
        self.stiffness_client = actionlib.SimpleActionClient("joint_stiffness_trajectory", naoqi_bridge_msgs.msg.JointTrajectoryAction)
        self.angle_client = actionlib.SimpleActionClient("joint_angles_action",naoqi_bridge_msgs.msg.JointAnglesWithSpeedAction)
        rospy.loginfo("Waiting for joint_trajectory and joint_stiffness servers...")
        self.client.wait_for_server()
        self.stiffness_client.wait_for_server()
        self.angle_client.wait_for_server()
        rospy.loginfo("Done.")


        cv2.namedWindow("Image window", 1)

        cv2.startWindowThread()
       # self.leds("on")
    def localization_callback(self,msg):

        yaw = msg.azimuth.data
        print(yaw)
   #     self.pose(yaw,self.headPitch)
        #time.sleep(0.5)

        #  print (msg.head_pose.position.x)



       #  msg.azimuth.data
        #msg.elevation.data =
        #msg.confidence.data
        #msg.energy.data

        #msg.head_pose.position.x
        #msg.head_pose.position.y
        #msg.head_pose.position.z





    def publishimg(self, cv_image):
        try:#bgr8
            self.image_pub.publish(self.bridge.cv2_to_imgmsg(cv_image, "bgr8"))
        except CvBridgeError as e:
            print(e)


    def __del__(self):
        cv2.destroyAllWindows()
        self.leds("off")


    def jointstateC(self, data):
        # print (data.name["HeadYaw"].position())
        self.headYaw = data.position[0]
        self.headPitch = data.position[1]
      #  print(data)



    def calculateMovement(self, center):
        #
        yaw = self.headYaw
        pitch =self.headPitch

        yawMultiplier = 0.007
        pitchMultiplier =0.005
        #if the x of the center is below threshhold we dont want to move as item is in the center
        if abs(center[0] - self.imgCx) < self.imgThreshX:
            yaw = self.headYaw
            print("yc")
        #if on the right of image
        elif center[0] > self.imgCx:
            diff = abs(center[0] - self.imgCx)
            pos = diff * yawMultiplier
            yaw = self.headYaw - pos
        #lef side of image
        elif center[0] < self.imgCx:
            diff = abs(center[0] - self.imgCx)
            pos = diff * yawMultiplier
            yaw = self.headYaw + pos
#pitch
        if abs(center[1] - self.imgCy) < self.imgThreshY:
            pitch = self.headPitch
            print("pc")
        elif center[1] > self.imgCy:
            diff = abs(center[1] - self.imgCy)
            pos = diff * pitchMultiplier
            pitch =self.headPitch + pos

        elif center[1] < self.imgCy:
            diff = abs(center[1] - self.imgCy)
            pos = diff * pitchMultiplier
            pitch =self.headPitch - pos
      #  print(str(yaw)+"  "+ str(pitch))
        self.pose(yaw,pitch)

    def pose(self, yaw, pitch):
        # if  the goal head location is out of range dont move
        #print(yaw)
       # print(pitch)

        if yaw  < -1.1 or yaw > 1.1:
           yaw = self.headYaw


        if pitch < -1 or pitch > 1.7:
            pitch = self.headPitch

            # if  both the yaw and pitch doent need to be chance
        if yaw == self.headYaw and pitch == self.headPitch:
            return

        angle_goal = naoqi_bridge_msgs.msg.JointAnglesWithSpeedGoal()
        angle_goal.joint_angles.relative = 0
        angle_goal.joint_angles.joint_names = ["HeadYaw", "HeadPitch"]

        angle_goal.joint_angles.joint_angles = [yaw, pitch]
        angle_goal.joint_angles.speed = 0.2

        self.angle_client.send_goal_and_wait(angle_goal)
        result = self.angle_client.get_result()



    def imgCallback(self, rgb_data):
        try:
            # get images
            cv_image = self.bridge.imgmsg_to_cv2(rgb_data, "bgr8")
           # i = cv2.resize(cv_image, (320, 240))

            # get image dimensions on first run
            if self.imgH == 0:

                self.imgH = numpy.size(cv_image, 0)
                self.imgW = numpy.size(cv_image, 1)
                self.imgCx = self.imgW / 2
                self.imgCy = self.imgH / 2
                self.imgThreshX = self.imgCx * self.imgp
                self.imgThreshY = self.imgCy * self.imgp
                self.image =numpy.zeros((self.imgH,self.imgW,3), numpy.uint8)
                self.init =1
            #detect faces in the image
            #outimg = self.detectface( cv_image )
            self.image = cv_image
           # cv2.imshow("Image window", self.image)

            #publush images to rostopic
          #  self.publishimg(outimg)

        except CvBridgeError, e:
            print e

    def detectface(self,frame):
        gray = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
        cv2.equalizeHist(gray, gray)
        faceCascade = cv2.CascadeClassifier("haarcascades/haarcascade_frontalface_alt2.xml")
        faces = faceCascade.detectMultiScale(
            gray,
            minNeighbors=5,
            scaleFactor=1.1,
            minSize=(15, 15),
            flags=cv2.cv.CV_HAAR_SCALE_IMAGE )
        distnaceCenter = 999
        self.currentFace[0] = 0
        for (x, y, w, h) in faces:


            cv2.rectangle(frame , (x, y), (x + w, y + h), (0, 255, 0), 2)
            center = [x + (w/2),y + (h/2)]
            cv2.circle(frame, (center[0],center[1]), 3, (0, 0, 255), -1)
        #Oonly move to closes face to the center
            currentdistanceC = abs(center[0] - self.imgCx)
            if currentdistanceC < distnaceCenter:
                self.currentFace = center
        if self.currentFace[0] != 0:
            # if face is too far away from the center we dont want to move
            if abs(self.currentFace[0]  - self.imgCx  )  <  self.imgThreshX * 2:
                self.calculateMovement(self.currentFace)





            # cv2.imshow("Image window", self.draw(frame) )
        return  self.draw(frame)

    def draw(self,img):

        cv2.line(img, (int(self.imgCx - self.imgThreshX),0), (int(self.imgCx -self.imgThreshX),  self.imgH), (0, 255, 0), 2)
        cv2.line(img, ( int(self.imgCx + self.imgThreshX), 0), (int(self.imgCx + self.imgThreshX), self.imgH), (0, 255, 0), 2)

        cv2.line(img, (0, int(self.imgCy - self.imgThreshY )), (self.imgW,  int(self.imgCy - self.imgThreshY )), (0, 255, 0), 2)
        cv2.line(img, (0, int(self.imgCy + self.imgThreshY)), (self.imgW, int(self.imgCy + self.imgThreshY)), (0, 255, 0), 2)
        return img

    def leds(self, s):
        if s == "on":
            self.ledmsg.led_name = "AllLeds"
            self.ledmsg.color.r = 0
            self.ledmsg.color.g = 0
            self.ledmsg.color.b = 1
            self.ledmsg.color.a = 0
            self.ledmsg.fade_duration.secs = 1

        if s == "off":
            self.ledmsg.led_name = "AllLeds"
            self.ledmsg.color.r = 0
            self.ledmsg.color.g = 0
            self.ledmsg.color.b = 0
            self.ledmsg.color.a = 0
            self.ledmsg.fade_duration.secs = 1

        self.led_pub.publish(self.ledmsg)

    def run(self):

        while  True:
          if self.init ==1:
             img =  self.detectface(self.image)
             cv2.imshow("Image window", img)
          if cv2.waitKey(30) & 0xFF == ord('q'):
              sys.exit()

              break




rospy.init_node('NaoSocial', anonymous=True)
app = NaoSocial()
app.run()



rospy.spin()




