import argparse
import os
import subprocess  # running ros
import sys
import time
import xmlrpclib
import message_filters
import roslib
import actionlib
import naoqi_bridge_msgs.msg
import roslib
roslib.load_manifest('visualization_marker_tutorials')
from visualization_msgs.msg import Marker
from visualization_msgs.msg import MarkerArray
import almath
import math
import rospy
from naoqi import ALProxy
from std_msgs.msg import String, Bool, Float32MultiArray
import argparse
from threading import Thread
from nao_interaction_msgs.msg import (AudioSourceLocalization)
from sensor_msgs.msg import JointState
from random import randint

class Nao:
    def __init__(self, robotIP, port):
        # proxies
        self.memoryProxy = ALProxy("ALMemory", robotIP, port)
        self.managerProxy = ALProxy("ALBehaviorManager", robotIP, port)
        self.motionProxy = ALProxy("ALMotion", robotIP, port)
        self.animatedSpeechProxy = ALProxy("ALAnimatedSpeech", robotIP, port)
        self.navigationProxy = ALProxy("ALNavigation", robotIP, port)
        self.postureProxy = ALProxy("ALRobotPosture", robotIP, port)
        self.asr = ALProxy("ALSpeechRecognition", robotIP, port)
        self.trackerProxy= ALProxy("ALTracker", robotIP, port)
        self.peopleProxy = ALProxy("ALPeoplePerception", robotIP, port)
        self.autonomousMovesProxy = ALProxy("ALAutonomousMoves", robotIP, port)
        self.autonomousMovesProxy.setExpressiveListeningEnabled(False)
        self.dialog_p = ALProxy('ALDialog', robotIP, port)
        self.tts = ALProxy("ALTextToSpeech", robotIP, port)
        self.tts.setParameter("speed", 90)


        self.peopleID = []
        self.peopleLocation =[]
        self.trackerTarget =0
        self.behaviors = [ ]

        #publishers
        self.trackingPub = rospy.Publisher('/nao_behavior/tracking',Bool, queue_size=1)
        self.startTrackPub =rospy.Publisher('/nao_behavior/enable_Tracking', String, latch=True,queue_size=5)
        self.visualPub = rospy.Publisher('visual', MarkerArray, queue_size=5)

                # topics
        #rospy.Subscriber("/nao_behavior/add", String, self.run_callback)
        rospy.Subscriber("/nao_behavior/enable_Tracking", String,self.tracker_callback)
        rospy.Subscriber("/nao_behavior/disable_Tracking", String,self.stop_tracker)
        rospy.Subscriber("/nao_behavior/enable_Diag", String, self.startDialog)
        rospy.Subscriber("/nao_behavior/disable_Diag", String, self.resetDialog)
        rospy.Subscriber("/nao_behavior/add/blocking", String,self.blocking_callback)
        rospy.Subscriber("/nao_behavior/add/nonblocking", String,self.nonblocking_callback)

        self.dialogLoaded = False
        self.trackerEnabled = False
        self.resting = False
        self.stop = False
        self.active =False
       
        Thread(target =self.start_PeopleDetectection).start()
        self.breath()
      #  self.tracker()

    def blocking_callback (self,data):
        behavior = data.data
        if behavior == 'wakeup':
            self.wakeup()
        elif behavior == 'rest':
            self.rest()
        elif behavior == "help":
            self.getBehaviors()
        elif behavior.startswith('say '):
            print 'saying'+behavior[4:]
            self.tts.say(behavior[4:])
        elif behavior.startswith('sayanimated'):
            self.checkawake()
            # set the local configuration
            configuration = {"bodyLanguageMode": "contextual"}
            # say the text with the local configuration
            self.animatedSpeechProxy.say(behavior[11:], configuration)
       
        elif behavior.startswith('move '):
            self.checkawake()
            self.motionProxy.moveTo(float(behavior[5:]), 0, 0)          
        elif behavior.startswith('search'):
            self.search()
            return
        elif behavior.startswith('stop'):
            self.stop = True
            return
        elif behavior.startswith('lookaway'):
            pass
        elif behavior.startswith('changetarget'):
             Thread(target =self.changetarget).start()
        else:
            Thread(target =self.launchBehavior, args =(behavior,False)).start()
            #self.launchBehavior(behavior,False)


    def  nonblocking_callback(self,data):
        behavior = data.data
        if behavior == 'wakeup':
            self.wakeup()
        elif behavior == 'rest':
            self.rest()
        elif behavior == "help":
            self.getBehaviors()
        elif behavior.startswith('say '):
            print 'saying'+behavior[4:]
            self.tts.post.say(behavior[4:])
        elif behavior.startswith('sayanimated'):
            self.checkawake()
            # set the local configuration
            configuration = {"bodyLanguageMode": "contextual"}
            # say the text with the local configuration
            self.animatedSpeechProxy.post.say(behavior[11:], configuration)
       
        elif behavior.startswith('move '):
            self.checkawake()
            self.motionProxy.post.moveTo(float(behavior[5:]), 0, 0)   
       
        elif behavior.startswith('search'):
            self.search()
            return
        elif behavior.startswith('stop'):
            self.stop = True
            return
        elif behavior.startswith('lookaway'):
            self.behaviors.append(["lookaway", behavior[9:]])
        elif behavior.startswith('changetarget'):
            Thread(target =self.changetarget).start()
        else:
            self.launchBehavior(behavior,True)
            #Thread(target =self.launchBehavior, args =(behavior,True)).start()


    def changetarget(self):
        pass

   

    def launchBehavior(self, behaviorName, post):
        if self.managerProxy.isBehaviorInstalled(behaviorName):
            # Check that it is not already running.
            if not self.managerProxy.isBehaviorRunning(behaviorName):
                # check if robot is awake
                #self.checkawake()
                # Launch behavior. This is a blocking call, use postif you do not
                # want to wait for the behavior to finish.
                rospy.loginfo("Running Behavior" + behaviorName)
                head_odom = self.motionProxy.getAngles(["HeadYaw","HeadPitch"], True)


                if post:
                    ID = self.managerProxy.post.runBehavior(behaviorName)
                    self.managerProxy.wait(ID,0)
                    self.motionProxy.post.setAngles(["HeadYaw", "HeadPitch"],head_odom,  0.1)
                else:
                    self.managerProxy.runBehavior(behaviorName)
                     #move head back to original
                    self.motionProxy.setAngles(["HeadYaw", "HeadPitch"],head_odom,  0.1)

            else:
                rospy.loginfo("Behavior is already running.")
        else:
            rospy.loginfo("Behavior not found.")

    def getBehaviors(self):
        names = self.managerProxy.getInstalledBehaviors()
        for x in names:
            rospy.loginfo(x)

    def tracker_callback(self,msg):
        if self.trackerEnabled:
            return
        Thread(target =self.tracker).start()
    def stop_tracker(self):
        self.trackerProxy.stopTracker()
        self.trackerProxy.unregisterAllTargets()

    def tracker(self):

        self.trackerEnabled = True

        self.trackerProxy.registerTarget("People", 0.1)
        self.trackerProxy.track("People")
        while  not rospy.is_shutdown() and self.trackerEnabled:
            # tell everyone we have detected a face
            self.trackingPub.publish(not self.trackerProxy.isTargetLost())


    def startDialog(self,msg):
        # if dialog hasnt been enabled start it else open a new sessiom
        if not self.dialogLoaded :
            topf_path = '/home/nao/top/mytopic_enu.top'
            topf_path = topf_path.decode('utf-8')
            topic = None
            topic = self.dialog_p.loadTopic(topf_path.encode('utf-8'))
            self.dialog_p.subscribe('NaoDialog')
            self.dialog_p.activateTopic(topic)
            
        else: # if dialog is already started just open a new session
            self.dialog_p.resetAll()
        self.dialogLoaded = True

    def resetDialog(self, msg):
        self.dialog_p.resetAll()


    def start_PeopleDetectection(self):
        #enable people detection
        self.peopleProxy.subscribe("Nao_People")
        while not rospy.is_shutdown():
            try:
                #print 'started'
                #get people deteced info
                self.peopleID =[]
                PeopleDetected = self.memoryProxy.getData('PeoplePerception/PeopleDetected', 0)
                people = PeopleDetected[1] #this index stores people information
                peopleIDT = [] # temp array for id and location
                peopleLocationT =[]
                for person in people:
                    peopleIDT.append(person[0])
                    #get faces location

                    peopleLocationT.append(self.memoryProxy.getData('PeoplePerception/Person/' + str(person[0]) + '/PositionInTorsoFrame', 0))

                #if we did fine people update our array with the current id`s and locations
                if len(peopleIDT)> 0:
                    self.peopleID = peopleIDT
                    self.peopleLocation = peopleLocationT
            except Exception ,e:
                pass
            #if we have detetced faces draw them
            if len(self.peopleID) >0:
                markerArray = MarkerArray()
                labelArray = MarkerArray()

                for ID,location in zip(self.peopleID,self.peopleLocation):
                    #create markers for each person

                    markerArray.markers.append(self.location_marker(ID,location))
                    labelArray.markers.append(self.label_marker(ID, location))
                #publish fa
                markerArray.markers.extend(labelArray.markers)
                self.visualPub.publish(markerArray)


    def on_shutdown(self):
        self.peopleProxy.unsubscribe("Nao_People")
        if self.dialogLoaded:
            self.dialog_p.unsubscribe("NaoDialog")
        if self.trackerEnabled:
            self.trackerProxy.stopTracker()
            self.trackerProxy.unregisterAllTargets()
            self.trackingPub.publish(False)
        self.rest()

    def location_marker(self,ID,location):
        marker = Marker()
        marker.header.frame_id = "torso"
        marker.ns = "headl"
        marker.type = marker.SPHERE
        marker.action = marker.ADD
        marker.scale.x = 0.1
        marker.scale.y = 0.1
        marker.scale.z = 0.1
        marker.color.a = 1.0

        if ID == self.trackerTarget:
            marker.color.r = 1.0
            marker.color.g = 0.0
            marker.color.b = 0.0
        else:
            marker.color.r = 0.1
            marker.color.g = 1.0
            marker.color.b = 0.0
        marker.pose.orientation.w = 1.0
        marker.pose.position.x = location[0]
        marker.pose.position.y = location[1]
        marker.pose.position.z = location[2]
        marker.lifetime.secs = 1
        marker.text = str(ID)
        marker.id = ID
        return marker
    @staticmethod
    def label_marker(ID, location):
        marker = Marker()
        marker.header.frame_id = "torso"
        marker.type = marker.TEXT_VIEW_FACING
        marker.action = marker.ADD
        marker.ns = "label"
        marker.scale.z = 0.05
        marker.color.a = 1.0
        marker.color.r = 0.1
        marker.color.g = 1.0
        marker.color.b = 0.0
        marker.pose.orientation.w = 1.0
        marker.pose.position.x = location[0]
        marker.pose.position.y = location[1]
        marker.pose.position.z = location[2] + 0.1
        marker.lifetime.secs = 1
        marker.text = str(ID)
        marker.id = ID
        return marker
    def breath(self):
        # pBpm is a float between 5 and 30 setting the breathing frequency in beats per minute.
        # pAmplitude is a float between 0 and 1 setting the amplitude of the breathing animation.
        # At high frequencies, only low amplitudes are allowed. Input amplitude may be clipped.
        self.wakeup()

        self.motionProxy.setBreathConfig([['Bpm', 5.0], ['Amplitude', 0.3]])
        self.motionProxy.setBreathEnabled('Legs', True)
        self.motionProxy.setBreathEnabled('Arms', True)
        self.motionProxy.setBreathEnabled('Head', False)
    def rest(self):
        # stop breathing if its enabled
        self.motionProxy.rest()
        time.sleep(2)
        self.motionProxy.stiffnessInterpolation("Body", 0, 0.5)

    def wakeup(self):
        #self.managerProxy.stopAllBehaviors()
        if not self.motionProxy.robotIsWakeUp():
            self.postureProxy.goToPosture("StandInit", 0.8)
            self.resting = False

    def search(self):
        #get current head location
        prevodom = self.motionProxy.getAngles(["HeadYaw", "HeadPitch"], True)
        #move to the left
        self.motionProxy.setAngles("HeadYaw", -0.8, 0.1)
        time.sleep(2)
        #if face hasnt been found move to the right
        if not self.stop:
            self.motionProxy.setAngles("HeadYaw", 0.8, 0.1)
            time.sleep(2)
        # return to original
        if not self.stop:
            self.motionProxy.setAngles(["HeadYaw", "HeadPitch"],prevodom, 0.1)
        self.stop = False


def launch_nodes(nao_ip):
    path = os.path.dirname(os.path.realpath(__file__))
    path = path + '/nao.launch nao_ip:=' + nao_ip
    subprocess.Popen('roslaunch ' + path, shell=True)

def check_ros():
    # check if ros is running, if not start it
    try:
        m = xmlrpclib.ServerProxy(os.environ['ROS_MASTER_URI'])
        code, msg, val = m.getSystemState('/script')
    except:
        subprocess.Popen('roscore')

if __name__ == "__main__":
    #get reobot ip and port number
    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", type=str, default="10.18.12.88",
                        help="Robot ip address")
    parser.add_argument("--port", type=int, default=9559,
                        help="Robot port number")
    args = parser.parse_args()

    #check if ros is started
    check_ros()
    rospy.init_node('NaoBehavior', anonymous=True)
    launch_nodes(args.ip)
    app = Nao(args.ip, args.port)

    rospy.spin()

    # what to do on shutdown
    rospy.on_shutdown(app.on_shutdown)