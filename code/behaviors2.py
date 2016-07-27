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
from nao_interaction_msgs.msg import (AudioSourceLocalization)

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



        # proxies
        self.memoryProxy = ALProxy("ALMemory", robotIP, port)

        self.managerProxy = ALProxy("ALBehaviorManager", robotIP, port)
        self.motionProxy = ALProxy("ALMotion", robotIP, port)
        self.animatedSpeechProxy = ALProxy("ALAnimatedSpeech", robotIP, port)
        self.navigationProxy = ALProxy("ALNavigation", robotIP, port)
        self.postureProxy = ALProxy("ALRobotPosture", robotIP, port)
        self.asr = ALProxy("ALSpeechRecognition", robotIP, port)

        self.autonomousMovesProxy = ALProxy("ALAutonomousMoves", robotIP, port)
        self.autonomousMovesProxy.setExpressiveListeningEnabled(False)
        self.memValue = "WordRecognized"
        self.tts = ALProxy("ALTextToSpeech", robotIP, port)
        self.tts.setParameter("speed", 60)
        #topics
        rospy.Subscriber("/nao_behavior/add", String, self.run_callback)
        rospy.Subscriber("/nao_audio/audio_source_localization", AudioSourceLocalization, self.audio_callback)
        self.speechPub = rospy.Publisher('/nao_behavior/speech_detection', AudioSourceLocalization, queue_size=5)
        #speech ini

        self.breath(True)

      #  self.asr.setLanguage("English")


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
            print voice
            if (voice ==1 ):
                if speech[1] > 0.1:
                    nodetectionCount =0
                    print speech
                    self.speechPub.publish(msg)
                    return
            else:
                nodetectionCount +=1
            if nodetectionCount >10:
                self.asr.pause(True)
                return




       # msg.azimuth.data = value[1][0]
      #  msg.elevation.data = value[1][1]
      #  msg.confidence.data = value[1][2]
     #   msg.energy.data = value[1][3]

     #   msg.head_pose.position.x = value[2][0]
      #  msg.head_pose.position.y = value[2][1]
      #  msg.head_pose.position.z = value[2][2]
      #  msg.head_pose.orientation.x = value[2][3]
      #  msg.head_pose.orientation.y = value[2][4]
      #  msg.head_pose.orientation.z = value[2][5]

    #run speech recognition





    def navigate(self,x):
        self.checkawake()

        self.motionProxy.moveTo(x,0,0)



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
        else:
            self.l_behaviors.append(behavior)
            self.l_type.append('behavior')

        # start processing after first call
        if self.active == False:
            self.active = True

            t1 = threading.Thread(target=self.run)
            t1.start()
           # self.run()
            print ('exit')

    def run(self):
        while True:
            # if we have items in the queue
            if len(self.l_behaviors) > 0:
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
       # self.motionProxy.setBreathEnabled('Head',False)

    def wakeup(self):
        # Wake up robot

        self.motionProxy.wakeUp()
        # Send robot to Pose Init
        self.postureProxy.goToPosture("StandInit", 0.5)
        self.resting = False


        #time.sleep(4.0)

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
                id = self.managerProxy.post.runBehavior(behaviorName)
                # wait till behavior stops running
                self.managerProxy.wait(id, 0)
            else:
                rospy.loginfo("Behavior is already running.")
        else:
            rospy.loginfo("Behavior not found.")

    def getBehaviors(self):
        names = self.managerProxy.getInstalledBehaviors()
        for x in names:
            rospy.loginfo(x)

    def on_shutdown(self):
       # self.asr.unsubscribe("ASR")
        self.rest()


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

    #time.sleep(2)

    rospy.spin()

    # what to do on shutdown
    rospy.on_shutdown(app.on_shutdown)


    # commands
    # rostopic pub -1 /nao_behavior/run_behavior std_msgs/String -- 'System/animations/Stand/Emotions/Neutral/Hello_1'
    # rostopic pub -1 /nao_behavior/get_behaviors std_msgs/String -- 'hi'

#
