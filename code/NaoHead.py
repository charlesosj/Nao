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
        self.a1 = 0
        self.b1 = 0
        self.c1 = 0
        self.a2 = 0
        self.b2 = 0
        self.c2 = 100
        self.count = 0

        self.bridge = CvBridge()
        #self.image_sub = message_filters.Subscriber("/camera/image_raw", Image)
        self.image_sub = message_filters.Subscriber("/videofile/image_raw", Image)

        self.ts = message_filters.ApproximateTimeSynchronizer([self.image_sub], 10, 0.5)
        self.statesub = rospy.Subscriber("/joint_states", JointState, self.jointstateC)
        self.ts.registerCallback(self.imgCallback)
        self.pub = rospy.Publisher("/cmd_vel", Twist, queue_size=1)
        self.t = Twist()

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
        rospy.loginfo("Done.")

        # trackbars
        # create trackbars for hsv values
        cv2.namedWindow("settings", 1)
        cv2.createTrackbar('b1', 'settings', 0, 255, self.settingsCallback)
        cv2.createTrackbar('g1', 'settings', 0, 255, self.settingsCallback)
        cv2.createTrackbar('r1', 'settings', 0, 255, self.settingsCallback)
        cv2.createTrackbar('b2', 'settings', 0, 255, self.settingsCallback)
        cv2.createTrackbar('g2', 'settings', 0, 255, self.settingsCallback)
        cv2.createTrackbar('r2', 'settings', 0, 255, self.settingsCallback)
        cv2.namedWindow("Image window", 1)
        cv2.namedWindow("D", 1)
        # cv2.namedWindow("depth", 1)
        cv2.namedWindow("thresh", 1)
        cv2.startWindowThread()



    def __del__(self):
        cv2.destroyAllWindows()


    def jointstateC(self, data):
        # print (data.name["HeadYaw"].position())
        self.headYaw = data.position[0]
        self.headPitch = data.position[1]
      #  print(data)

    def settingsCallback(self, data):
        self.a1 = cv2.getTrackbarPos('b1', 'settings')
        self.b1 = cv2.getTrackbarPos('g1', 'settings')
        self.c1 = cv2.getTrackbarPos('r1', 'settings')
        self.a2 = cv2.getTrackbarPos('b2', 'settings')
        self.b2 = cv2.getTrackbarPos('g2', 'settings')
        self.c2 = cv2.getTrackbarPos('r2', 'settings')

    def detect(self, cv_image):
        hsv_img = cv2.cvtColor(cv_image, cv2.COLOR_BGR2HSV)

        hsv_thresh = cv2.inRange(hsv_img,
                                 numpy.array((self.a1, self.b1, self.c1)),
                                 numpy.array((self.a2, self.b2, self.c2)))
        contours, hierachy = cv2.findContours(hsv_thresh.copy(),
                                              cv2.RETR_TREE,
                                              cv2.CHAIN_APPROX_SIMPLE)
        cv2.imshow("thresh", hsv_thresh)
        for c in contours:
            a = cv2.contourArea(c)
            if a > 50.0:
                cv2.drawContours(cv_image, c, -1, (255, 0, 0))
                # find center of contour
                moments = cv2.moments(c)
                center = (int(moments['m10'] / moments['m00']), int(moments['m01'] / moments['m00']))

                self.calculateMovement(center)

    def calculateMovement(self, center):
        #
        yaw = 99.99
        pitch =99.99
        #if the x of the center is below threshhold we dont want to move as item is in the center
        if abs(center[0] - self.imgCx) < self.imgThreshX:
            yaw = self.headYaw
        #if on the right of image
        elif center[0] > self.imgCx:
            diff = abs(center[0] - self.imgCx)
            pos = diff * 0.001
            yaw = self.headYaw - pos
        #lef side of image
        elif center[0] < self.imgCx:
            diff = abs(center[0] - self.imgCx)
            pos = diff * 0.001
            yaw = self.headYaw + pos

        if abs(center[1] - self.imgCy) < self.imgThreshY:
            pitch = self.headPitch
        elif center[1] > self.imgCy:
            diff = abs(center[1] - self.imgCy)
            pos = diff * 0.01
            pitch =self.headPitch - pos

        elif center[1] < self.imgCy:
            diff = abs(center[1] - self.imgCy)
            pos = diff * 0.01
            pitch =self.headPitch + pos
        print(str(yaw)+"  "+ str(pitch))
        self.pose(yaw,pitch)

    def pose(self, yaw, pitch):
        # if  the goal head location is out of range dont move
        #print(yaw)
       # print(pitch)
        if -1.1 >= self.headYaw >= 1.1:
        #replace with current value
           yaw = self.headYaw
           print("yc")
        if 0 >= self.headPitch >= 0.9:
            pitch = self.headPitch
            print("pc")

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
            i = cv2.resize(cv_image, (320, 240))

            # get image dimensions on first run
            if self.imgH == 0:
                self.imgH = numpy.size(i, 0)
                self.imgW = numpy.size(i, 1)
                self.imgCx = self.imgW / 2
                self.imgCy = self.imgH / 2
                self.imgThreshX = self.imgCx * self.imgp
                self.imgThreshY = self.imgCy * self.imgp
         #   cv2.imshow("Image window", cv_image)
            self.detectface( i )
        except CvBridgeError, e:
            print e

    def detectface(self,frame):
        gray = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
        faceCascade = cv2.CascadeClassifier("haarcascades/haarcascade_frontalface_alt2.xml")
        faces = faceCascade.detectMultiScale(
            gray,
            minNeighbors=5,
            scaleFactor=1.1,
            minSize=(15, 15),
            flags=cv2.cv.CV_HAAR_SCALE_IMAGE )
        for (x, y, w, h) in faces:


            cv2.rectangle(frame , (x, y), (x + w, y + h), (0, 255, 0), 2)
            center = [x + (w/2),y + (h/2)]

            self.calculateMovement(center)
        cv2.imshow("Image window", frame )





rospy.init_node('NaoSocial', anonymous=True)
app = NaoSocial()




rospy.spin()