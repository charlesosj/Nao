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
import threading
from nao_interaction_msgs.msg import (AudioSourceLocalization)
from sensor_msgs.msg import JointState
from random import randint


class NaoBehavior:
    def __init__(self, robotIP, port):

        # behavior lists
        self.vocabulary = ["yes", "no", "please", "hello", "the", "be", "to", "of", "and", "in", "that", "have",
                           "it", "robot"]
        self.l_type = []
        self.l_behaviors = []
        self.Peoplelist = []
        self.ego_id =[]
        self.ego_location = []
        self.ego_undetected_count = []
        self.ego_active = []
        self.rvizvisual = False
        # auto
        self.breathEnabled = False
        self.idletime = 8  # waits for half a second so 10  = 5 seconds
        self.idlecount = 0
        # activation
        self.active = False
        self.resting = False
        self.speechini = False
        self.headOdom = [0, 0]
        self.stop = False
        self.headlock = False
        self.enableAutoRotate = True
        self.track = False
        self.trackingPaused = False
        self.diaglogenabled = False
        self.currentTargetid = 0
        self.currentTarget = [0, 0, 0]

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
        self.faceProxy.subscribe("Test_Face", 500, 0.0)
        self.peopleProxy = ALProxy("ALFaceDetection", robotIP, port)
        self.dialog_p = ALProxy('ALDialog', robotIP, port)
        self.topf_path = '/home/nao/top/mytopic_enu.top'
        self.topf_path = self.topf_path.decode('utf-8')
        self.topic = None
        self.autonomousMovesProxy = ALProxy("ALAutonomousMoves", robotIP, port)
        self.autonomousMovesProxy.setExpressiveListeningEnabled(False)
        self.tts = ALProxy("ALTextToSpeech", robotIP, port)
        self.tts.setParameter("speed", 90)

        # topics
        rospy.Subscriber("/nao_behavior/add", String, self.run_callback)
        rospy.Subscriber("/nao_behavior/enable_Tracking", String, self.starttracker)
        rospy.Subscriber("/nao_behavior/disable_Tracking", String, self.stoptracker)
        rospy.Subscriber("/nao_behavior/enable_Diag", String, self.startDialog)
        rospy.Subscriber("/nao_behavior/disable_Diag", String, self.stopdiag)
        self.statesub = rospy.Subscriber("/joint_states", JointState, self.jointstateC)

        # ross
        #  rospy.Subscriber("/nao_audio/audio_source_localization", AudioSourceLocalization, self.audio_callback)
        self.speechPub = rospy.Publisher('/nao_behavior/speech_detection', Bool, queue_size=1)
        self.trackingPub = rospy.Publisher('/nao_behavior/tracking', Bool, queue_size=1)
        self.startTrackPub = rospy.Publisher('/nao_behavior/enable_Tracking', String, latch=True, queue_size=5)
        self.visualPub = rospy.Publisher('visual', MarkerArray, queue_size=5)
        rospy.Subscriber("/nao_behavior/head", Float32MultiArray, self.move)

        self.breath(True)
        #  self.start_tracking()()

    def egoSphere(self):
        while self.track == True and not rospy.is_shutdown():
            time.sleep(0.5) # every half a second
            
             # get the target currently being tracked

            try:
                PeopleDetected = self.memoryProxy.getData('PeoplePerception/PeopleDetected', 0)
                # for each person
                people = PeopleDetected[1]
                i = 0
                for person in people:
                    ID = person[0]
                    # get their location using their id
                    location = self.memoryProxy.getData(
                    'PeoplePerception/Person/' + str(ID) + '/PositionInTorsoFrame', 0)
                    match_found = False
                    # check they match a face in our array
                    #if our list has some faces in already
                    if len(self.ego_id) >0:
                        #check all our faces id  and see if they match any of the new ones
                        idindex=0
                        for myid in self.ego_id:


                            #if we find a match, update its location and reset its  undetected count
                            if myid == ID: #its the same face update location
                                self.ego_location[idindex] = location
                                self.ego_undetected_count[idindex] = 0
                                self.ego_active[idindex]= False
                                match_found = True

                        #if a match wasnt found add to the bottom of the list

                        if match_found == False:
                            self.ego_id.append(ID)
                            self.ego_location.append(location)
                            self.ego_undetected_count.append(0)
                            self.ego_active.append(False)
                        idindex += 1

                    else:
                        self.ego_id.append(ID)
                        self.ego_location.append(location)
                        self.ego_undetected_count.append(0)
                        self.ego_active.append(False)
            except Exception ,e:
                pass


            #get current target being tracked 

            prevTarget = self.currentTarget 
            self.currentTarget = self.tracker.getTargetPosition()
            #if we arent currently tracking target use previous locatin
            if len(self.currentTarget) <1:
                self.currentTarget = prevTarget
                
            if len(self.ego_id) >0:
                egoindex = 0

                for location in self.ego_location:
                  
                    #incriment undetected count for every face
                    self.ego_undetected_count[egoindex] += 1                        
                    egoindex  +=1

                #start visualization
                if not self.rvizvisual:
                    self.rvizvisual = True
                    visualizationPub = threading.Thread(target=self.pub_markers)
                    visualizationPub.start()

    def pub_markers(self):
        while  not rospy.is_shutdown():
            closestid = 999
            closestx = 99999
            #if we have faces
            if len(self.ego_id ) >0:
                markerArray = MarkerArray()
                labelArray = MarkerArray()
                i=0
                for ID, location, undetected_count in zip(self.ego_id, self.ego_location,self.ego_undetected_count):

                #if not detected in a few seconds remove it
                    if undetected_count >5:
                        print 'popp'
                        self.ego_undetected_count.pop(i)
                        self.ego_id.pop(i)
                        self.ego_location.pop(i)
                        self.ego_active.pop(i)
                    else:
                        markerArray.markers.append(self.create_marker(ID, location))
                        labelArray.markers.append(self.label_marker(ID, location))
                        distance = abs(self.currentTarget[0] - location[0])
                        if distance < closestx:
                            closestx = distance
                            closestid = i
                    i += 1



                 
                if len(markerArray.markers) >0:

                    markerArray.markers[closestid].color.r = 1.0
                    markerArray.markers[closestid].color.g = 0
                    markerArray.markers[closestid].color.b = 0
                    #set the clossest id as our active face
                    self.ego_active[closestid] = True
                    markerArray.markers.extend(labelArray.markers)
                    self.visualPub.publish(markerArray)





    def create_marker(self, ID, location):
        marker = Marker()
        marker.header.frame_id = "torso"
        marker.ns = "headl"
        marker.type = marker.SPHERE
        marker.action = marker.ADD
        marker.scale.x = 0.1
        marker.scale.y = 0.1
        marker.scale.z = 0.1
        marker.color.a = 1.0
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
    def label_marker(self,ID,location):
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


    def changetarget(self):
        #if we have only one person look away
        if len(self.ego_location) ==1:
            print'i will look away'

            self.tracker.unregisterAllTargets()
            self.tracker.registerTarget("People",self.ego_id[0] )

            #self.lookaway()
        else:
        # if there are multiple faces pick the first one that isnt active
            egoindex = 0
            for active in self.ego_active:
                if not active:
                    # changing to different target
                    print'changing to next person'
                 
                    self.tracker.unregisterAllTargets()
                    self.tracker.registerTarget("People",self.ego_id[egoindex] )

                    #self.tracker.lookAt(self.ego_location[egoindex], 0, 0.1, False)
                    #self.currentTarget = self.ego_location[egoindex]
                    break
                egoindex += 1

    def start_tracking(self):
        t1 = threading.Thread(target=self.starttracker, args=('sdsds',))
        t1.start()

    def startDialog(self, msg):
        if self.diaglogenabled:
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

    def stopdiag(self, msg):
        try:
            self.dialog_p.deactivateTopic(self.topic)
            # Unload topic
            self.dialog_p.unloadTopic(self.topic)
            # Stop dialog
            self.dialog_p.unsubscribe('NaoBehavior')

        except Exception, e:
            pass
        print 'dialog stoped'
        self.diaglogenabled = False

    def starttracker(self, data):
        print 'Tracking started'
        if self.track:
            return
        self.track = True

        self.tracker.unregisterAllTargets()
        self.tracker.registerTarget("People", 1)
        self.tracker.track("People")
        # start face visualization
        t1 = threading.Thread(target=self.egoSphere)
        t1.start()
        while self.track and not rospy.is_shutdown():
            # tell everyone we have detected a face
            p = not self.tracker.isTargetLost()
            self.trackingPub.publish(p)
            if not self.track:
                break
        self.tracker.stopTracker()
        self.tracker.unregisterAllTargets()
        self.trackingPub.publish(False)

    def stoptracker(self, data):
        self.track = False

    def move(self, data):
        if self.headlock:
            return
        self.headlock = True

        # we want to till the body if the position is too far to the endge
        if self.enableAutoRotate:
            if data.data[0] > 2:
                self.rotate(0.1)
            elif data.data[0] < -2:
                self.rotate(-0.1)
            self.headlock = False
            return

        Id = self.motionProxy.post.setAngles(["HeadYaw", "HeadPitch"], [data.data[0], data.data[1]], data.data[2])
        self.motionProxy.wait(Id, 0)
        self.headlock = False

    def headmove(self, angles, speed):
        # stop tracker if its running
        if self.headlock:
            return
        self.headlock = True
        Id = self.motionProxy.post.setAngles(["HeadYaw", "HeadPitch"], angles, speed)
        self.motionProxy.wait(Id, 0)
        self.headlock = False
        return "done"

    def search(self):
        prevodom = self.headOdom
        self.headmove([-0.8, self.headOdom[1]], 0.1)
        time.sleep(2)

        if not self.stop:
            self.headmove([0.8, self.headOdom[1]], 0.1)
            time.sleep(2)
        # return to original
        if not self.stop:
            self.headmove(prevodom, 0.1)

        self.stop = False

    def audio_callback(self, msg):
        if not self.speechini:
            self.speechini = True
            self.asr.pause(True)

            self.asr.setVocabulary(self.vocabulary, True)
            self.asr.setVisualExpression(True)
            self.asr.setAudioExpression(True)

            self.asr.subscribe("ASR")

        self.asr.pause(False)
        nodetectionCount = 0
        # print  msg.azimuth.data
        while not rospy.is_shutdown():
            speech = self.memoryProxy.getData('WordRecognized', 0)
            voice = self.memoryProxy.getData('SpeechDetected', 0)
            if voice == 1:
                if speech[1] > 0.1:
                    nodetectionCount = 0
                    self.speechPub.publish(True)
                    return
            else:
                nodetectionCount += 1
            if nodetectionCount > 10:
                self.asr.pause(True)
                return

    def navigate(self, x):
        self.checkawake()

        self.motionProxy.moveTo(x, 0, 0)

    def rotate(self, z):
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
        elif behavior.startswith('say '):
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
        if not self.active:
            self.active = True

            t1 = threading.Thread(target=self.run)
            t1.start()

    def run(self):
        while not rospy.is_shutdown():
            # if we have items in the queue
            if len(self.l_behaviors) > 0:
                if self.track:
                    print 'Pausing Tracking'
                    # we want to stop tracking
                    self.track = False
                    self.trackingPaused = True

                time.sleep(0.5)
                # no longer idle
                self.idlecount = 0
                behavior = self.l_behaviors[0]
                if self.l_type[0] == 'behavior':
                    # if the next behavior is a say
                    # say and run the behavior at the same time
                    try:
                        if self.l_type[1] == 'say':
                            t1 = threading.Thread(target=self.texttospeach, args=(self.l_behaviors[1],))
                            del self.l_type[1]
                            del self.l_behaviors[1]
                            t1.start()
                    except:
                        pass
                    self.launchBehavior(behavior)
                elif self.l_type[0] == 'rest':
                    self.rest()
                elif self.l_type[0] == 'wakeup':
                    self.wakeup()
                elif self.l_type[0] == 'say':
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
                # if tracking has been paused to run some behaviors turn it back on
                if self.trackingPaused:
                    self.trackingPaused = False
                    print 'Resuming from Pause'
                    self.start_tracking()

                if self.breathEnabled and self.idlecount == self.idletime and self.resting == False:
                    self.breathEnabled = True
                    self.idlecount = 0
                    self.active = False

                    self.breath(True)
                    rospy.loginfo('Breathing')
                    return
                elif not self.breathEnabled:
                    self.idlecount += 1

    def lookaway(self):
        # pause tracking
       # self.track = False
        r = randint(0, 2)

        if r == 1:
            direction = 'left'
        else:
            direction = 'right'

        distance = 0.3
        curodom =  self.motionProxy.getAngles(["HeadYaw", "HeadPitch"], True)

        print "looking" + direction
        if direction == 'left':
            angle = [curodom[0] - distance, curodom[1]]
            self.headmove(angle, 0.07)
        elif direction == 'right':
            angle = [curodom[0] + distance, curodom[1]]
            self.headmove(angle, 0.07)

        # wait for a bit then move back to 

    def rest(self):
        # stop breathing if its enabled
        self.resting = True
        if self.breathEnabled:
            self.breath(False)

        self.motionProxy.rest()
        time.sleep(2)
        self.motionProxy.stiffnessInterpolation("Body", 0, 0.5)

    def breath(self, boolv):
        # pBpm is a float between 5 and 30 setting the breathing frequency in beats per minute.
        # pAmplitude is a float between 0 and 1 setting the amplitude of the breathing animation.
        # At high frequencies, only low amplitudes are allowed. Input amplitude may be clipped.
        if boolv:
            self.checkawake()
            self.breathEnabled = True
            # Fast breathing: 20 Bpm and low Amplitude
            self.motionProxy.setBreathConfig([['Bpm', 5.0], ['Amplitude', 0.3]])
        else:
            self.breathEnabled = False

        self.motionProxy.setBreathEnabled('Legs', boolv)
        self.motionProxy.setBreathEnabled('Arms', boolv)
        self.motionProxy.setBreathEnabled('Head', False)

    def wakeup(self):
        self.postureProxy.goToPosture("StandInit", 0.5)
        self.resting = False

    def checkawake(self):
        self.managerProxy.stopAllBehaviors()
        self.breath(False)
        # if robot is not awake, wake it
        if not self.motionProxy.robotIsWakeUp():
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

        """ Launch and stop a behavior, if possible. """
        if self.managerProxy.isBehaviorInstalled(behaviorName):
            # Check that it is not already running.
            if not self.managerProxy.isBehaviorRunning(behaviorName):
                # check if robot is awake
                self.checkawake()
                # Launch behavior. This is a blocking call, use post if you do not
                # want to wait for the behavior to finish.
                rospy.loginfo("Running Behavior" + behaviorName)
                self.headlock = True
                headodom = self.motionProxy.getAngles(["HeadYaw", "HeadPitch"], True)
                Id = self.managerProxy.post.runBehavior(behaviorName)
                self.headlock = False
                # wait till behavior stops running
                self.managerProxy.wait(Id, 0)

                # return head back to original
                self.headmove(headodom, 0.1)
                time.sleep(1)
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
        # keeps our odom up to date
        self.headOdom[0] = data.position[0]
        self.headOdom[1] = data.position[1]

    def nod(self):
        # prevodom = self.headOdom
        odom = self.headOdom
        odom[1] += 0.5
        self.headmove(odom, 0.0)

        odom[1] -= 0.5
        self.headmove(odom, 0.08)


def check_ros():
    # check if ros is running, if not start it
    try:
        m = xmlrpclib.ServerProxy(os.environ['ROS_MASTER_URI'])
        code, msg, val = m.getSystemState('/script')
    except:
        subprocess.Popen('roscore')


def launch_nodes(nao_ip):
    path = os.path.dirname(os.path.realpath(__file__))
    path = path + '/nao.launch nao_ip:=' + nao_ip
    subprocess.Popen('roslaunch ' + path, shell=True)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", type=str, default="10.18.12.88",
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
