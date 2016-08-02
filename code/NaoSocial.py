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
from random import randint
from naoqi_bridge_msgs.msg import(
    BlinkAction,
    BlinkResult,
    BlinkFeedback,
    FadeRGB
    )

class NaoSocial:
    def __init__(self):

        self.habituation = 0
        self.speechCount =0
        self.undetectedcount=0
        self.detected = False
        self.ini = False
        self.searching = False
        self.state ='nothing'
      #  self.motionProxy = ALProxy("ALMotion", '10.18.12.56', 9559)
  
        #publisher
        self.behaviorpub = rospy.Publisher('/nao_behavior/add', String, queue_size=5)
        self.trackingPub = rospy.Publisher('/nao_behavior/enable_Tracking', String,latch=True ,queue_size=5)
        self.disabletrackingPub = rospy.Publisher('/nao_behavior/disable_Tracking', String,latch=True ,queue_size=5)


        self.enableDiagpub = rospy.Publisher('/nao_behavior/enable_Diag', String,latch=True ,queue_size=5)
        self.disableDiagpub = rospy.Publisher('/nao_behavior/disable_Diag', String,latch=True ,queue_size=5)

        #subscriber
        self.voiceDetection = rospy.Subscriber("/nao_behavior/speech_detection", Bool, self.speechCallback)
        self.tracking = rospy.Subscriber("/nao_behavior/tracking", Bool, self.trackingC)


        #enable tracking
    
        self.trackingPub.publish("ssds")

    def run(self):
        print 'started'
        while True :
            time.sleep(0.5)


           # print self.habituation ,self.undetectedcount
            if self.habituation == 0 and self.detected == True:
                self.undetectedcount = 0
                self.habituation +1
                self.hello()
                #enable diag
                self.enableDiagpub.publish("sdsd")
               # time.sleep(3)

            if self.detected == True:
                # if we have a person detected
                self.habituation += 1
                self.undetectedcount =0
                if self.habituation >3 and (self.speechCount % 15) == 0 :
                     self.nod()
                #if we have been staring at a person too long we want to look away
                if self.habituation >25:
                  #  self.lookaway()
                    #reset habituation
                    self.habituation =1
            else:
                self.undetectedcount +=1

        #if we havent detected for a while look around
            if self.detected == False  and self.searching == False and (self.undetectedcount % 15) == 0:
            	self.habituation =0
                self.searching == True
                self.behaviorpub.publish('search')
                print "searching"
            #if we are searching and we find someone stop searching
            elif self.searching == True and self.detected == True:
                self.behaviorpub.publish('stop')
                self.searching = False
                print 'searching stopped'






        #if we have lost the person after 5 seconds reset habituation
            if self.undetectedcount >100:
                print 'reset'

                self.habituation = 0
                self.speechCount = 0
                self.undetectedcount= 0
                #disable dialog
                self.disableDiagpub.publish("msg")
                self.ini = False
                return    

    def trackingC(self, data):
        self.detected = data.data
        time.sleep(0.2)

        if self.ini == False and data.data == True:
            self.ini =True
            t1 = threading.Thread(target=self.run)
            t1.start()
            #self.run()

         

       
    

    def nod(self):
        pass
    def lookaway(self):
        #randomly pick left or right
        r = randint(0,2)
        direction = 'right'
        if r == 1:
            direction ='left'
        self.behaviorpub.publish('lookaway ' +direction)
        #wait a couple seconds for this to finish
        time.sleep(1)
        

    def hello(self):
        str = 'System/animations/Stand/Gestures/Hey_1'
        self.behaviorpub.publish(str)
        str = 'say Hello '
        self.behaviorpub.publish(str)
         

    def speechCallback(self,msg):
        self.speechCount += 1
    def on_shutdown(self):
        pass



rospy.init_node('NaoSocial', anonymous=True)
app = NaoSocial()
#app.run()

rospy.spin()
rospy.on_shutdown(app.on_shutdown)



