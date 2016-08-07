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
import roslib; roslib.load_manifest('visualization_marker_tutorials')
from visualization_msgs.msg import Marker
from visualization_msgs.msg import MarkerArray
import almath
import math
import rospy
from naoqi import ALProxy
from std_msgs.msg import String, Bool ,Float32MultiArray
import argparse
import threading
from nao_interaction_msgs.msg import (AudioSourceLocalization)
from sensor_msgs.msg import JointState
from random import randint

class NaoBehavior:
    def __init__(self, robotIP ,port):

        # behavior lists
        self.l_type = []
        self.l_behaviors = []
        self.Peoplelist = []

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
        self.diaglogenabled= False
        self.currentTargetid = 0
        self.currentTarget = [0,0,0]




        # proxies
        self.memoryProxy = ALProxy("ALMemory", robotIP, port)

        self.managerProxy = ALProxy("ALBehaviorManager", robotIP, port)
        self.motionProxy = ALProxy("ALMotion", robotIP, port)
        self.animatedSpeechProxy = ALProxy("ALAnimatedSpeech", robotIP, port)
        self.navigationProxy = ALProxy("ALNavigation", robotIP, port)
        self.postureProxy = ALProxy("ALRobotPosture", robotIP, port)
        self.asr = ALProxy("ALSpeechRecognition", robotIP, port)
        self.tracker = ALProxy("ALTracker", robotIP, port)
        self.faceProxy = ALProxy("ALFaceDetection", robotIP, port)
        self.faceProxy.subscribe("Test_Face", 500, 0.0 )
        self.peopleProxy = ALProxy("ALFaceDetection", robotIP, port)



        self.dialog_p = ALProxy('ALDialog', robotIP, port)
        self.topf_path = '/home/nao/top/mytopic_enu.top'
        self.topf_path = self.topf_path.decode('utf-8')
        self.topic = None
        
        self.autonomousMovesProxy = ALProxy("ALAutonomousMoves", robotIP, port)
        self.autonomousMovesProxy.setExpressiveListeningEnabled(False)
        self.memValue = "WordRecognized"
        self.tts = ALProxy("ALTextToSpeech", robotIP, port)
        self.tts.setParameter("speed", 90)

        #topics			  /nao_behavior/enable_Tracking
        rospy.Subscriber("/nao_behavior/add", String, self.run_callback)
        rospy.Subscriber("/nao_behavior/enable_Tracking", String, self.starttracker)
        rospy.Subscriber("/nao_behavior/disable_Tracking", String, self.stoptracker)
        rospy.Subscriber("/nao_behavior/enable_Diag", String, self.startDialog)
        rospy.Subscriber("/nao_behavior/disable_Diag", String, self.stopdiag)
        self.statesub = rospy.Subscriber("/joint_states", JointState, self.jointstateC)
   		
   		#ross service

     #   rospy.Subscriber("/nao_audio/audio_source_localization", AudioSourceLocalization, self.audio_callback)
        self.speechPub = rospy.Publisher('/nao_behavior/speech_detection', Bool, queue_size=1)
        self.trackingPub = rospy.Publisher('/nao_behavior/tracking', Bool, queue_size=1)
        self.startTrackPub = rospy.Publisher('/nao_behavior/enable_Tracking', String,latch=True ,queue_size=5)
        self.visualPub = publisher = rospy.Publisher('visual', MarkerArray, queue_size =5)


        #speech ini
        rospy.Subscriber("/nao_behavior/head", Float32MultiArray, self.move)

        self.breath(True)
      #  self.start()

    def visualPeople(self):


        memValue = 'PeoplePerception/PeopleDetected' 
        self.Peoplelist = []

        while self.track == True and  not rospy.is_shutdown():
            markerArray = MarkerArray()
            try:
                self.currentTarget = self.tracker.getTargetPosition()
                closestid = 999
                closestx = 99999

                #get the target currently being tracked

                PeopleDetected = self.memoryProxy.getData('PeoplePerception/PeopleDetected', 0)
                # for each person
                people = PeopleDetected[1]
                i = 0

                for person in people:
                    ID = person[0]
                  # get their location using their id
                    location = self.memoryProxy.getData('PeoplePerception/Person/'+str(person[0])+'/PositionInTorsoFrame', 0)
                    self.Peoplelist.append(location)


                   # print location
                    marker = Marker()
                    marker.header.frame_id = "torso"
                    marker.type = marker.SPHERE
                    marker.action = marker.ADD
                    marker.scale.x = 0.1
                    marker.scale.y = 0.1
                    marker.scale.z = 0.1

                    marker.color.a = 1.0
                    marker.color.r = 1.0
                    marker.color.g = 1.0
                    marker.color.b = 0.0

                    marker.pose.orientation.w = 1.0
                    marker.pose.position.x = location[0]
                    marker.pose.position.y = location[1] 
                    marker.pose.position.z = location[2]
                    marker.lifetime.secs = 1
                    marker.text = str(ID)
                    marker.id = ID
                    markerArray.markers.append(marker)

                    #Find the closest person to the curent target
                    distance = abs(self.currentTarget[0] - location[0])
                    if distance < closestx:
                        closestx = distance
                        closestid =i
                    i +=1
                #change the colour of the closest id befor publisning
                markerArray.markers[closestid].color.r = 1.0
                markerArray.markers[closestid].color.g = 0
                markerArray.markers[closestid].color.b = 0

                self.currentTargetid = people[closestid][0]
                # i want the current target to be put at the end of the list
                temp = self.Peoplelist[closestid]
                self.Peoplelist.pop(closestid)
                self.Peoplelist.append(temp)
                self.currentTarget =temp
            except Exception, e:
                pass


            
            self.visualPub.publish(markerArray)
    def changetarget(self):
        #get current target
      #  self.currentTarget = self.tracker.getTargetPosition(0)
        val = abs(self.currentTarget[0] -self.Peoplelist[-1][0] )

        print val

        # if the current target isnt the last item in the list switch to it
        if val > 0.5:
            #changing to different target
            print'changing to next person'
            self.tracker.lookAt(self.Peoplelist[0],0,0.1,False)
            self.currentTarget
        else:
            print'i will look away'
            self.lookaway()

 
   
    def start(self):
    	self.starttracker('sds')

    def startDialog(self,msg):
    	if self.diaglogenabled == True:
    		print 'diag already started'
    		return	

    	print 'dialog enabled'
         # Start dialog
        self.dialog_p.setLanguage("English")

        self.topic = self.dialog_p.loadTopic(self.topf_path.encode('utf-8'))
        self.dialog_p.subscribe('NaoBehavior')
        # Activate dialog
        self.dialog_p.activateTopic(self.topic)
        self.diaglogenabled = True
    def stopdiag(self,msg):
    	print 'dialog stoped'

        try:
            self.dialog_p.deactivateTopic(self.topic)
            # Unload topic
            self.dialog_p.unloadTopic(self.topic)
            # Stop dialog
            self.dialog_p.unsubscribe('NaoBehavior')
            
        except Exception, e:
            pass
        self.diaglogenabled = False
    def starttracker(self,data):
    	print 'Tracking started'
        if self.track == True:
            return
        self.track = True
        #Add target to track.
        
      
        #self.tracker.setEffector('Head')
        self.tracker.registerTarget("People", 0.1)
       # self.tracker.toggleSearch(True)
        #start tracking
        self.tracker.track("People")
        #start rviz visualization
    

        #start face visualization
        t1 = threading.Thread(target =self.visualPeople)
        t1.start()
        while self.track == True and  not rospy.is_shutdown():
        #tell everyone we have detected a face    
            p  =not self.tracker.isTargetLost()  
            self.trackingPub.publish(p)
            if self.track ==False:
                break
        self.tracker.stopTracker()
        self.tracker.unregisterAllTargets()
        self.trackingPub.publish(False)

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
        #stop tracker if its running
        if self.headlock == True:
            return
        self.headlock == True
        Id = self.motionProxy.post.setAngles(["HeadYaw", "HeadPitch"], angles, speed)
        self.motionProxy.wait(Id, 0)
        self.headlock == False
        return "done"


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
        elif behavior.startswith('lookaway'):
            self.l_behaviors.append(behavior[9:])
            self.l_type.append('lookaway')
        elif behavior.startswith('changetarget'):
             t1 = threading.Thread(target=self.changetarget)
             t1.start()
           

        else:
            self.l_behaviors.append(behavior)
            self.l_type.append('behavior')

        # start processing after first call
        if self.active == False:
            self.active = True

            t1 = threading.Thread(target=self.run)
            t1.start()
          
    def run(self):
        while True:
            # if we have items in the queue
            if len(self.l_behaviors) > 0:
                if self.track == True:
					print 'Pausing Tracking'

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
                elif self.l_type[0] == 'lookaway':
                    self.lookaway()

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
                    print 'Resuming from Pause'
                    t1 = threading.Thread(target=self.start)
                    t1.start()


                if self.breathEnabled == False and self.idlecount == self.idletime and self.resting ==False:
                    self.breathEnabled == True
                    self.idlecount = 0
                    self.active =False

                    self.breath(True)
                    rospy.loginfo('Breathing')
                    return
                elif self.breathEnabled == False:
                    self.idlecount += 1

    def lookaway(self):
        #check if tracking is raunning, pause it and continue after
        self.track == False
        time.sleep(0.5)


        #random direction
        r = randint(0,2)
        
        if r == 1:
            direction ='left'
        else:
            direction = 'right'

        distance = 0.4
        curodom = self.headOdom
        print "looking" + direction
        if direction == 'left':
            angle = [self.headOdom[0] - distance,curodom[1]]
            d = self.headmove(angle,0.07)
        elif direction == 'right':
            angle = [self.headOdom[0] + distance,curodom[1]]
            d = self.headmove(angle,0.07)

        #wait for a bit then move back to original
        time.sleep(1)

        print 'moving back'
        #self.headmove(curodom,0.07)

        #start tracking again

        t1 = threading.Thread(target=self.start)
        t1.start()


    def rest(self):
        # stop breathing if its enabled
        self.resting  = True
        if self.breathEnabled == True:
            self.breath(False)

        self.motionProxy.rest()
        time.sleep(2)
        self.motionProxy.stiffnessInterpolation("Body", 0, 0.5)


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
        self.track = False
        try:
            self.faceProxy.unsubscribe("Test_Face")

            self.asr.unsubscribe("ASR")
        except Exception, e:
            pass
        self.stopdiag("sdsd")
        
        self.rest()

    def jointstateC(self, data):
        #keeps our odom up to date
        self.headOdom[0] = data.position[0]
        self.headOdom[1] = data.position[1]

    def nod(self):
        prevodom = self.headOdom
        odom = self.headOdom
        odom[1] += 0.5
        self.headmove(odom,0.0)

        odom[1] -= 0.5
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

