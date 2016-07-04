#!/usr/bin/env python
import rospy
import cv2
  
import message_filters
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Twist


import roslib
#from rospy.exceptions import ROSException
roslib.load_manifest('naoqi_driver')
from rospy import Duration


import actionlib
from actionlib_msgs.msg import GoalStatus
import naoqi_bridge_msgs.msg
import trajectory_msgs.msg
from trajectory_msgs.msg import JointTrajectoryPoint
import std_srvs.srv
import os
import numpy
import time   


class Application:
   
    def __init__(self):
 
        self.a1 =0
        self.b1 =0
        self.c1 =0
        self.a2 =0
        self.b2 =0
        self.c2 =100
                 
        
   
        
        self.bridge = CvBridge()
        self.image_sub = message_filters.Subscriber("/nao_robot/camera/top/camera/image_raw",  Image)

        self.ts = message_filters.ApproximateTimeSynchronizer([self.image_sub], 10, 0.5)
        self.ts.registerCallback(self.imgCallback)
        self.pub = rospy.Publisher("/cmd_vel", Twist,queue_size=1)
        self.t = Twist() 
       
        self.client = actionlib.SimpleActionClient("joint_trajectory", naoqi_bridge_msgs.msg.JointTrajectoryAction)
        self.stiffness_client = actionlib.SimpleActionClient("joint_stiffness_trajectory", naoqi_bridge_msgs.msg.JointTrajectoryAction)
        self.angle_client = actionlib.SimpleActionClient("joint_angles_action", naoqi_bridge_msgs.msg.JointAnglesWithSpeedAction)
        rospy.loginfo("Waiting for joint_trajectory and joint_stiffness servers...")
        self.client.wait_for_server()
        self.stiffness_client.wait_for_server()
        self.angle_client.wait_for_server()
        rospy.loginfo("Done.")
       
       #trackbars
       # create trackbars for color change
        cv2.namedWindow("settings", 1)
        cv2.createTrackbar('b1','settings',0,255,self.settingsCallback)
        cv2.createTrackbar('g1','settings',0,255,self.settingsCallback)
        cv2.createTrackbar('r1','settings',0,255,self.settingsCallback)
        cv2.createTrackbar('b2','settings',0,255,self.settingsCallback)
        cv2.createTrackbar('g2','settings',0,255,self.settingsCallback)
        cv2.createTrackbar('r2','settings',0,255,self.settingsCallback)      
        cv2.namedWindow("Image window", 1)
       # cv2.namedWindow("depth", 1)
        cv2.namedWindow("thresh", 1)
        cv2.startWindowThread()
        self.headpos = 0.0
    def settingsCallback(self,data):
        self.a1 = cv2.getTrackbarPos('b1','settings')
        self.b1 = cv2.getTrackbarPos('g1','settings')
        self.c1 = cv2.getTrackbarPos('r1','settings')
        self.a2 = cv2.getTrackbarPos('b2','settings')
        self.b2 = cv2.getTrackbarPos('g2','settings')
        self.c2 = cv2.getTrackbarPos('r2','settings')
        
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
                #find center of contour
                moments = cv2.moments(c)
                center =((int(moments['m10']/moments['m00']), int(moments['m01']/moments['m00'])))
                
                if center[0] < 140:
                    self.headpos = self.headpos +0.1
                    self.pose([self.headpos])
                if center[0] > 180:
                    self.headpos = self.headpos -0.1
                    self.pose([self.headpos])

        
    def pose(self,pos):
    	
	goal = naoqi_bridge_msgs.msg.JointTrajectoryGoal()
	
# move head: single joint, multiple keypoints
	goal.trajectory.joint_names = ["HeadYaw"]
	goal.trajectory.points.append(JointTrajectoryPoint(time_from_start = Duration(1.0), positions = pos))
	#goal.trajectory.points.append(JointTrajectoryPoint(time_from_start = Duration(2.0), positions = [-1.0]))
	#goal.trajectory.points.append(JointTrajectoryPoint(time_from_start = Duration(2.5), positions = [0.0]))
	
		
	#rospy.loginfo("Sending goal...")
	self.client.send_goal(goal)
	self.client.wait_for_result()
	result = self.client.get_result()
	#rospy.loginfo("Results: %s", str(result.goal_position.position))  
	#time.sleep(1)
	self.headpos =  float(result.goal_position.position[0])
               
    def imgCallback(self, rgb_data):
        try:
            #get images
            cv_image = self.bridge.imgmsg_to_cv2(rgb_data, "bgr8")
           # h = numpy.size(cv_image, 0)
           # w = numpy.size(cv_image, 1)
           # print(h)
           # print(w)
     
        
          
              
        except CvBridgeError, e:
            print e

        cv2.imshow("Image window", cv_image)
        self.detect(cv_image)
      
         
  
           
#os.system("roslaunch nao_bringup nao_full_py.launch nao_ip:=127.0.0.1  roscore_ip:=127.0.0.1:11311 network_interface:=wlan0") 
rospy.init_node('BoxDetector', anonymous=True)
app = Application()
#Application.pose(app)

rospy.spin()
cv2.destroyAllWindows()