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

        self.habituation = 0
        self.speechCount =0
        self.undetectedcount=0

        self.state ='nothing'
      #  self.motionProxy = ALProxy("ALMotion", '10.18.12.56', 9559)
        self.dialog_p = ALProxy('ALDialog', '10.18.12.56', 9559)
        topf_path = os.path.dirname(os.path.realpath(__file__)) + 'topic.top' 
    
        self.topic = self.dialog_p.loadTopic(topf_path.encode('utf-8'))
        


        #publisher
        self.behaviorpub = rospy.Publisher('/nao_behavior/add', String, queue_size=5)
        self.trackingPub = rospy.Publisher('/nao_behavior/enable_Tracking', String, queue_size=1)


        #subscriber
        self.voiceDetection = rospy.Subscriber("/nao_behavior/speech_detection", Bool, self.speechCallback)
        self.tracking = rospy.Subscriber("/nao_behavior/tracking", Bool, self.speechCallback)


        #enable tracking
        self.trackingPub.publish("True")
    def startDialog(self):
        self.dialog_p.setLanguage("English")
         # Load topic - absolute path is required


         # Start dialog
        self.dialog_p.subscribe('NaoSocial')
        # Activate dialog
        self.dialog_p.activateTopic(topic)
    

    def stopdiag(self):
        # Deactivate topic
        self.dialog_p.deactivateTopic(self.topic)

        # Unload topic
        self.dialog_p.unloadTopic(self.topic)

        # Stop dialog
        self.dialog_p.unsubscribe('NaoSocial')




    def trackingC(self, data):

        #if first detection stay hello
        if self.habituation == 0 and data.data == True:
            self.hello()
            self.startDialog
        

        if data.data == True:
            self.habituation += 1
        else:
            self.undetectedcount +=1

        #if we have lost the person after 5 seconds reset habituation
        if self.undetectedcount >10:
            self.habituation = 0
            self.speechCount = 0
            self.stopdiag()


        #if the user is talking we want to nod



    def nod(self):
        pass
    def lookaway(self):
        pass




    def hello(self):
        str = 'System/animations/Stand/Gestures/Hey_1'
        self.behaviorpub.publish(str)
        str = 'say hello! I am Nao. How are you?'
        self.behaviorpub.publish(str)

        return 'done'

    def speechCallback(self,msg):
        self.speechCount += 1




rospy.init_node('NaoSocial', anonymous=True)
app = NaoSocial()

rospy.spin()




