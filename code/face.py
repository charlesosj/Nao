import time
from naoqi import *
import almath
import argparse
import threading
import atexit
import argparse
import os
import subprocess  # running ros
import sys
import time
import xmlrpclib

import almath
import rospy
from naoqi import ALProxy
from std_msgs.msg import String
import argparse
import threading

# Replace this with your robot's IP address
class face:
    def __init__(self,robotIP):

        #pythonModule = myModule("pythonModule")

        # Create a proxy to ALFaceDetection
        self.faceProxy = ALProxy("ALFaceDetection", robotIP, 9559)
        period = 500
        self.faceProxy.subscribe("Test_Face", period, 0.0)
        self.memValue = "FaceDetected"
        # Create a proxy to ALMemory
        self.memoryProxy = ALProxy("ALMemory", robotIP, 9559)

        self.motionProxy = ALProxy("ALMotion", robotIP, 9559)
        self.faces =0
        self.motionProxy.setStiffnesses("Head", 1.0)

    def getFace(self):#

        while True:
            time.sleep(0.5)
            self.faces = self.memoryProxy.getData(self.memValue, 0)
            if (self.faces and len(self.faces ) > 2):
                 self.run()
    def onexit(self):
        self.faceProxy.unsubscribe("Test_Face")

    def run(self):
        val = self.faces
        if (val and len(val) > 2):
            closestface = [99.0,99.0]
          #  closestface[0] = 99
           # closestface[1] = 99
            faceInfoArray = val[1]

            try:
                # Browse the faceInfoArray to get info on each detected face.
                for j in range(len(faceInfoArray) - 1):
                    try:
                        faceInfo = faceInfoArray[j]
                        faceShapeInfo = faceInfo[0]

                        faceExtraInfo = faceInfo[1]

                    except:
                        continue

                  #  print "  alpha %.3f - beta %.3f" % (faceShapeInfo[1], faceShapeInfo[2])
                    x = faceShapeInfo[1]
                    y =  faceShapeInfo[2]


                    if x < closestface[0]:
                        closestface[0] =x
                        closestface[1] = y

                self.headmove([closestface[0], closestface[1]])
            except Exception as e:
                print(e)


    def headmove(self,angles):
        # Simple command for the HeadYaw joint at 10% max speed
        #
        print angles[0] , angles[1]
        curangles =   self.motionProxy.getAngles(["HeadYaw", "HeadPitch"], True)

  #      if -0.04 <=  angles[0] <= 0.04  :
   #         angles[0] = curangles[1]
  #      if  -0.04 <=  angles[1] <= 0.04 :
     #       angles[1] = curangles[0]

        names = ["HeadYaw", "HeadPitch"]
       # print angles[0] , angles[1]
        fractionMaxSpeed = 0.1
        id  =self.motionProxy.post.setAngles(names, angles, fractionMaxSpeed)
        self.motionProxy.wait(id, 0)
        #print id


       # time.sleep(0.5)
def launch_nodes(nao_ip):
    path = os.path.dirname(os.path.realpath(__file__))
    path = path + '/nao.launch nao_ip:=' + nao_ip
    subprocess.Popen('roslaunch ' + path, shell=True)

if __name__ == "__main__":


 app = face("10.18.12.56")

 #rospy.init_node('face', anonymous=True)
 #launch_nodes("10.18.12.56")

 app.getFace()
 atexit.register(app.onexit())







