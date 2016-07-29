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

import almath
import rospy
from naoqi import ALProxy
from std_msgs.msg import String, Bool ,Float32MultiArray
import argparse
import threading
from nao_interaction_msgs.msg import (AudioSourceLocalization)
from sensor_msgs.msg import JointState
class NaoBehavior:
    def __init__(self, robotIP ,port):

        # behavior lists
        self.l_type = []
        self.l_behaviors = []

        # auto
        self.breathEnabled = False
        self.idletime = 8  # waits for half a second so 10  = 5 seconds
        self.idlecount = 0

        # activation
        self.active = False
        self.resting = False
        self.speechini= False
        self.headOdom = [0,0]
        self.stop = False
        self.headlock =False
        self.enableAutoRotate = True
        self.track = False
        self.trackingPaused = False



        # proxies
        self.memoryProxy = ALProxy("ALMemory", robotIP, port)

        self.managerProxy = ALProxy("ALBehaviorManager", robotIP, port)
        self.motionProxy = ALProxy("ALMotion", robotIP, port)
        self.animatedSpeechProxy = ALProxy("ALAnimatedSpeech", robotIP, port)
        self.navigationProxy = ALProxy("ALNavigation", robotIP, port)
        self.postureProxy = ALProxy("ALRobotPosture", robotIP, port)
        self.asr = ALProxy("ALSpeechRecognition", robotIP, port)
        self.tracker = ALProxy("ALTracker", robotIP, port)

        self.autonomousMovesProxy = ALProxy("ALAutonomousMoves", robotIP, port)
        self.autonomousMovesProxy.setExpressiveListeningEnabled(False)
        self.memValue = "WordRecognized"
        self.tts = ALProxy("ALTextToSpeech", robotIP, port)
        self.tts.setParameter("speed", 100)

        #topics
        rospy.Subscriber("/nao_behavior/add", String, self.run_callback)
        rospy.Subscriber("/nao_behavior/enable_Tracking", String, self.starttracker)
        rospy.Subscriber("/nao_behavior/disable_Tracking", String, self.stoptracker)
        self.statesub = rospy.Subscriber("/joint_states", JointState, self.jointstateC)

        rospy.Subscriber("/nao_audio/audio_source_localization", AudioSourceLocalization, self.audio_callback)
        self.speechPub = rospy.Publisher('/nao_behavior/speech_detection', Bool, queue_size=5)
        self.trackingPub = rospy.Publisher('/nao_behavior/tracking', Bool, queue_size=1)

        #speech ini
        rospy.Subscriber("/nao_behavior/head", Float32MultiArray, self.move)

        self.breath(True)


    def starttracker(self,data):
    	if self.track == True:
    		return
    	self.track = True
		#Add target to track.
		targetName = "Face"
		faceWidth = faceSize
		self.tracer.setEffecto('Head')
		self.tracker.registerTarget(targetName, 0.1)
		self.tracker.toggleSearch(True)
		#start tracking
		self.tracker.track(targetName)
		try:
			while self.track:		
				self.trackingPub.publish( self.tracker.isTargetLost())
				time.sleep(0.5)

		except KeyboardInterrupt:
				pass
		self.tracker.stoptracker()
    	self.tracker.unregisterAllTargets()

    def stoptracker(self,data):
    	self.track = false
    
    

    def move(self, data):
        if self.headlock == True:
            return
        self.headlock ==  True

        # we want to tilt the body if the position is too far to the endge
        if self.enableAutoRotate:
            if data.data[0] > 2:
                self.rotate(0.1)
            elif data.data[0] < -2:
                self.rotate(-0.1)
            self.headlock == false
            return

        Id = self.motionProxy.post.setAngles(["HeadYaw", "HeadPitch"], [data.data[0],data.data[1]], data.data[2])
        self.motionProxy.wait(Id, 0)
        self.headlock == False


    def headmove(self, angles,speed):
        if self.headlock == True:
            return
        self.headlock == True
        Id = self.motionProxy.post.setAngles(["HeadYaw", "HeadPitch"], angles, speed)
        self.motionProxy.wait(Id, 0)
        self.headlock == False


    def search(self):
        prevodom = self.headOdom
        self.headmove([-0.8,self.headOdom[1]],0.1)
        time.sleep(2)

        if self.stop == False :
            self.headmove([0.8, self.headOdom[1]],0.1)
            time.sleep(2)
        #return to original
        if self.stop == False:
            self.headmove(prevodom,0.1)

        self.stop = False


    def audio_callback(self,msg):

        if self.speechini == False :
            self.speechini = True
            self.asr.pause(True)
            self.vocabulary = ["yes", "no", "please", "hello","the","be","to","of","and","in","that","have","it","robot"]

            self.asr.setVocabulary(self.vocabulary, True)
            self.asr.setVisualExpression(True)
            self.asr.setAudioExpression(True)

            self.asr.subscribe("ASR")


        self.asr.pause(False)
        nodetectionCount = 0
       # print  msg.azimuth.data
        while True:
            time.sleep(0.8)
            speech = self.memoryProxy.getData(self.memValue, 0)
            voice = self.memoryProxy.getData('SpeechDetected', 0)
            if (voice ==1 ):
                if speech[1] > 0.1:
                    nodetectionCount =0
                    self.speechPub.publish(True)
                    return
            else:
                nodetectionCount +=1
            if nodetectionCount >10:
                self.asr.pause(True)
                return




    def navigate(self,x):
        self.checkawake()

        self.motionProxy.moveTo(x,0,0)
    def rotate(self,z):
        self.checkawake()
        self.motionProxy.moveTo(0, 0, z)



    def run_callback(self, data):

        # add to queue
        behavior = data.data
        if behavior == 'wakeup':
            self.l_behaviors.append(behavior)
            self.l_type.append("wakeup")

        elif behavior == 'rest':
            self.l_behaviors.append(behavior)
            self.l_type.append('rest')

        elif behavior == "help":
            self.getBehaviors()
        elif behavior.startswith('say ') == True:
            # cut after say and aspace
            self.l_behaviors.append(behavior[4:])
            self.l_type.append('say')
        elif behavior.startswith('wait'):
            self.l_behaviors.append(behavior[5:])
            self.l_type.append('wait')
        elif behavior.startswith('sayanimated'):
            self.l_behaviors.append(behavior[11:])
            self.l_type.append('sayanimated')
        elif behavior.startswith('move '):
            self.l_behaviors.append(behavior[5:])
            self.l_type.append('move')
        elif behavior.startswith('nod'):
            self.l_behaviors.append(behavior)
            self.l_type.append('nod')
        elif behavior.startswith('search'):
            self.search()
            return
        elif behavior.startswith('stop'):
            self.stop = True
            return
        elif behavior.startswith('rotate'):
            self.l_behaviors.append(behavior[7:])
            self.l_type.append('rotate')

        else:
            self.l_behaviors.append(behavior)
            self.l_type.append('behavior')

        # start processing after first call
        if self.active == False:
            self.active = True

            t1 = threading.Thread(target=self.run)
            t1.start()
            print ('exit')


    def run(self):
        while True:
            # if we have items in the queue
            if len(self.l_behaviors) > 0:
            	if self.track == True:
            		self.track = False
            		self.trackingPaused = True

            	#we want to stop tracking

                time.sleep(0.5)
                # no longer idle
                self.idlecount = 0
                behavior = self.l_behaviors[0]
                if self.l_type[0] == 'behavior':
                    # if the next behavior is a say
                    # say and run the behavior at the same time
                    try:
                        if self.l_type[1] == 'say':
                            t1 = threading.Thread(target=self.texttospeach ,args =(self.l_behaviors[1],))
                            del self.l_type[1]
                            del self.l_behaviors[1]
                            t1.start()

                    except:
                        i = 0
                    self.launchBehavior(behavior)
                elif self.l_type[0] == 'rest':
                    self.rest()
                elif self.l_type[0] == 'wakeup':
                    self.wakeup()
                elif  self.l_type[0] =='say':
                    self.texttospeach(behavior)
                elif self.l_type[0] == 'move':
                    self.navigate(float(behavior))
                elif self.l_type[0] == 'rotate':
                    self.rotate(float(behavior))
                elif self.l_type[0] == 'nod':
                    self.nod()

                elif self.l_type == 'wait':
                    try:
                        rospy.loginfo('waiting')
                        time.sleep(int(behavior))
                    except:
                        rospy.loginfo('incorect time must be wait <seconds> replace <>')
                elif self.l_type[0] == 'sayanimated':
                    self.sayAnimated(behavior)

                # pop out of list
                del self.l_type[0]
                del self.l_behaviors[0]

            else:
            	#if tracking has been paused to run some behaviors turn it back on
            	if self.trackingPaused == True:
            		self.trackingPaused = False
            		self.starttracker("sdsd")


                if self.breathEnabled == False and self.idlecount == self.idlecount and self.resting ==False:
                    self.breathEnabled == True
                    self.idlecount = 0
                    self.active =False

                    self.breath(True)
                    rospy.loginfo('Breathing')
                    return
                elif self.breathEnabled == False:
                    self.idlecount += 1



    def rest(self):
        # stop breathing if its enabled
        self.resting  = True
        if self.breathEnabled == True:
            self.breath(False)

        self.motionProxy.rest()
        time.sleep(1)
        self.motionProxy.stiffnessInterpolation("Body", 0, 0.5)
        self.asr.unsubscribe("ASR")

    def breath(self, boolv):
        # pBpm is a float between 5 and 30 setting the breathing frequency in beats per minute.
        # pAmplitude is a float between 0 and 1 setting the amplitude of the breathing animation.
        # At high frequencies, only low amplitudes are allowed. Input amplitude may be clipped.
        if boolv == True:
            self.checkawake()
            self.breathEnabled = True
            # Fast breathing: 20 Bpm and low Amplitude
            self.motionProxy.setBreathConfig([['Bpm', 5.0], ['Amplitude', 0.3]])
        else:
            self.breathEnabled = False

        self.motionProxy.setBreathEnabled('Legs' , boolv)
        self.motionProxy.setBreathEnabled( 'Arms', boolv)
        self.motionProxy.setBreathEnabled('Head',False)

    def wakeup(self):
        self.postureProxy.goToPosture("StandInit", 0.5)
        self.resting = False

    def checkawake(self):
        self.managerProxy.stopAllBehaviors()
        self.breath(False)
        # if robot is not awake, wake it
        if self.motionProxy.robotIsWakeUp() == False:
            self.wakeup()

    def sayAnimated(self, text):
        self.checkawake()
        # set the local configuration
        configuration = {"bodyLanguageMode": "contextual"}
        # say the text with the local configuration
        self.animatedSpeechProxy.say(text, configuration)

    def texttospeach(self, text):
        self.tts.say(text)

    def launchBehavior(self, behaviorName):

        ''' Launch and stop a behavior, if possible. '''
        if (self.managerProxy.isBehaviorInstalled(behaviorName)):
            # Check that it is not already running.
            if (not self.managerProxy.isBehaviorRunning(behaviorName)):
                # check if robot is awake
                self.checkawake()
                # Launch behavior. This is a blocking call, use post if you do not
                # want to wait for the behavior to finish.
                rospy.loginfo ("Running Behavior"+ behaviorName)
                self.headlock = True
                headodom =  self.motionProxy.getAngles(["HeadYaw", "HeadPitch"], True)
                Id = self.managerProxy.post.runBehavior(behaviorName)
                self.headlock = False
                # wait till behavior stops running
                self.managerProxy.wait(Id, 0)

                #return head back to original
                self.headmove(headodom,0.1)
            else:
                rospy.loginfo("Behavior is already running.")
        else:
            rospy.loginfo("Behavior not found.")

    def getBehaviors(self):
        names = self.managerProxy.getInstalledBehaviors()
        for x in names:
            rospy.loginfo(x)

    def on_shutdown(self):
        self.asr.unsubscribe("ASR")
        self.rest()
    def jointstateC(self, data):
        #keeps our odom up to date
        self.headOdom[0] = data.position[0]
        self.headOdom[1] = data.position[1]

    def nod(self):

        prevodom = self.headOdom
        odom = self.headOdom
        odom[1] -= 0.5
        self.headmove(odom,0.08)

        odom[1] += 0.5
        self.headmove(odom,0.08)






def check_ros():
    # check if ros is running, if not start it
    try:
        m = xmlrpclib.ServerProxy(os.environ['ROS_MASTER_URI'])
        code, msg, val = m.getSystemState('/script')
    except:
        roscore = subprocess.Popen('roscore')
        #time.sleep(1)  # wait a bit to be sure the roscore is really launched


def launch_nodes(nao_ip):
    path = os.path.dirname(os.path.realpath(__file__))
    path = path + '/nao.launch nao_ip:=' + nao_ip
    subprocess.Popen('roslaunch ' + path, shell=True)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", type=str, default="10.18.12.56",
                        help="Robot ip address")
    parser.add_argument("--port", type=int, default=9559,
                        help="Robot port number")
    args = parser.parse_args()


    check_ros()
    rospy.init_node('NaoBehavior', anonymous=True)
    launch_nodes(args.ip)

    app = NaoBehavior(args.ip, args.port)



    rospy.spin()

    # what to do on shutdown
    rospy.on_shutdown(app.on_shutdown)


    # commands
    # rostopic pub -1 /nao_behavior/run_behavior std_msgs/String -- 'System/animations/Stand/Emotions/Neutral/Hello_1'
    # rostopic pub -1 /nao_behavior/get_behaviors std_msgs/String -- 'hi'

#

