# !/usr/bin/env python
import rospy
import cv2
import sys
import message_filters
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Twist
import roslib
from naoqi import *
# from rospy.exceptions import ROSException
roslib.load_manifest('naoqi_driver')

import actionlib
import naoqi_bridge_msgs.msg
import threading
import os
import numpy
from sensor_msgs.msg import JointState
from nao_interaction_msgs.msg import (AudioSourceLocalization)
import time
from std_msgs.msg import String,Bool, Float32MultiArray

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
        self.speechCount =0
        self.undetectedcount=0
        self.searching = False

        self.state ='nothing'
        self.motionProxy = ALProxy("ALMotion", '10.18.12.56', 9559)


        #publisher
        self.image_pub = rospy.Publisher("nao_detection", Image,queue_size=10)
        self.behaviorpub = rospy.Publisher('/nao_behavior/add', String, queue_size=5)
        self.headpub = rospy.Publisher('/nao_behavior/head', Float32MultiArray, queue_size=1)


        #subscribers
        self.image_sub = rospy.Subscriber("/camera/image_raw", Image,self.imgCallback)
        self.statesub = rospy.Subscriber("/joint_states", JointState, self.jointstateC)
        self.image  = numpy.zeros((160,120,3), numpy.uint8)
        self.voiceDetection = rospy.Subscriber("/nao_behavior/speech_detection", Bool, self.speechCallback)





    def headmove(self, angles):

        curangles = self.motionProxy.getAngles(["HeadYaw", "HeadPitch"], True)

        names = ["HeadYaw", "HeadPitch"]
        # print angles[0] , angles[1]
        fractionMaxSpeed = 0.1
        id = self.motionProxy.post.setAngles(names, angles, fractionMaxSpeed)
        self.motionProxy.wait(id, 0)
        #


    def hello(self):
        str = 'System/animations/Stand/Gestures/Hey_1'
        self.behaviorpub.publish(str)
        str = 'say hello! I am Nao. How are you?'
        self.behaviorpub.publish(str)

        return 'done'


    def speechCallback(self,msg):
        self.speechCount += 1

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

                #if a face is found whles we are searching stop it
                if self.searching == True:
                    self.behaviorpub.publish('stop')
                    self.searching = False

                self.calculateMovement(currentFace)
                #if first time detecting say hello
                if self.habituation ==0:
                     hi =self.hello()
                     self.state ='detected'

                self.habituation +=1
                self.undetectedcount = 0
                self.imgthreshMultiplier = 6
                if (self.habituation  %51) == 0:
                    print 'nodding'
                    self.behaviorpub.publish('nod')


        else:
            self.undetectedcount +=1
            if self.undetectedcount >150 and self.state !='waiting':
                self.habituation = 0
                self.speechCount = 0
                self.imgthreshMultiplier = 9999
                self.undetectedcount = 0
                self.state ='waiting'
                print "reset"

            if self.state == 'waiting' and  (self.undetectedcount % 200)== 0:

                self.searching =True
                self.behaviorpub.publish('search')
                print "searching"

        return self.image

    def calculateMovement(self, center):
        yaw = self.headOdom[0]
        pitch = self.headOdom[1]

        yawMultiplier = 0.007
        pitchMultiplier = 0.005
        # if the x of the center is below threshhold we dont want to move as item is in the center
        if abs(center[0] - self.imgCenter[0]) < self.imgThreshold[0]:
            pass
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
            pass
        elif center[1] > self.imgCenter[1]:
            diff = abs(center[1] - self.imgCenter[1])
            pos = diff * pitchMultiplier
            pitch += pos

        elif center[1] < self.imgCenter[1]:
            diff = abs(center[1] - self.imgCenter[1])
            pos = diff * pitchMultiplier
            pitch -= pos

        d = Float32MultiArray()
        d.data = [yaw,pitch,0.1]
        self.headpub.publish(d)

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




