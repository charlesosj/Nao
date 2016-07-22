import sys
import time
import rospy
from std_msgs.msg import String
import almath
import subprocess #running ros
import xmlrpclib
import os
import argparse


from naoqi import ALProxy

class NaoBehavior:
    def __init__(self,robotIP):
        # Create proxy to ALBehaviorManager
        self.managerProxy = ALProxy("ALBehaviorManager", robotIP, 9559)
        self.motionProxy  = ALProxy("ALMotion", robotIP, 9559)
        self.animatedSpeechProxy = ALProxy("ALAnimatedSpeech", robotIP, 9559)
        rospy.Subscriber("/nao_behavior/run_behavior", String, self.run_callback)
        rospy.Subscriber("/nao_behavior/stop_behavior", String, self.stop)
        self.wakeup()

        self.auto = ALProxy("ALAutonomousLife", robotIP, 9559)

        self.activeBehavior = 0
        self.behaviorCount =0
        self.nextBehavior = 1
        self.autostate()
    def disableAuto(self):
        self.auto.stopAll()

    def autostate(self):

        self.auto.setState('solitary')


    def run_callback(self,data):
        self.auto.setState('disabled')

        self.say(data.data)
        self.autostate()
        return

        if data.data == 'wakeup':
            self.wakeup()
            return
        if data.data == 'rest':
            self.rest()
            return
        if data.data == "help":
            self.getBehaviors()
            #  self.Action(data.data)
            return

        self.launchBehavior(data.data)
    def say(self,data):
        # set the local configuration
        configuration = {"bodyLanguageMode": "contextual"}
        # say the text with the local configuration
        self.animatedSpeechProxy.say(data, configuration)


    def launchBehavior(self, behaviorName):
        ''' Launch and stop a behavior, if possible. '''
        self.behaviorCount = self.behaviorCount +1
        behaviorNumber = self.behaviorCount

        while True:
            if self.activeBehavior ==0 and self.nextBehavior == behaviorNumber:
                self.activeBehavior =1
                # Check that the behavior exists.
                if (self.managerProxy.isBehaviorInstalled(behaviorName)):
                    # Check that it is not already running.
                    if (not self.managerProxy.isBehaviorRunning(behaviorName)):
                        # Launch behavior. This is a blocking call, use post if you do not
                        # want to wait for the behavior to finish.
                        rospy.loginfo("Running Behavior")
                        self.managerProxy.post.runBehavior(behaviorName)

                        while( self.managerProxy.isBehaviorRunning(behaviorName) == True):
                            time.sleep(0.2)

                    else:
                        rospy.loginfo( "Behavior is already running.")

                else:
                    rospy.loginfo( "Behavior not found.")

                self.nextBehavior = behaviorNumber +1

                self.activeBehavior =0
                return
            elif self.activeBehavior ==1:
                print( str(behaviorNumber) +'queud')




    def stop(self,behaviorName):
            # Stop the behavior.
            if (self.managerProxy.isBehaviorRunning(behaviorName.data)):
                self.managerProxy.stopBehavior(behaviorName.data)
                rospy.loginfo("Behavior stopped.")

                time.sleep(1.0)
            else:
                rospy.loginfo("Behavior is already stopped.")

    def wakeup(self):
        self.motionProxy.wakeUp()
    def rest(self):
        self.motionProxy.rest()
        self.motionProxy.stiffnessInterpolation("Body", 0, 0.5)

   #just some movement test
    def Action(self,action):
        # Define The Initial Position for the upper body
        HeadYawAngle = + 0.0
        HeadPitchAngle = + 0.0
        ShoulderPitchAngle = +80.0
        ShoulderRollAngle = +20.0
        ElbowYawAngle = -80.0
        ElbowRollAngle = -60.0
        WristYawAngle = + 0.0
        HandAngle = + 0.0
        # Define legs position
        kneeAngle = +40.0
        torsoAngle = + 0.0  # bend the torso
        spreadAngle = + 0.0  # spread the legs

        # set joint angles for standing
        if action != 'me':
            Head = [HeadYawAngle, HeadPitchAngle]

            LeftArm = [ShoulderPitchAngle, +ShoulderRollAngle, +ElbowYawAngle, +ElbowRollAngle, WristYawAngle,
                       HandAngle]
            RightArm = [ShoulderPitchAngle, -ShoulderRollAngle, -ElbowYawAngle, -ElbowRollAngle, WristYawAngle,
                        HandAngle]

            LeftLeg = [0.0,  # hipYawPitch
                       spreadAngle,  # hipRoll
                       -kneeAngle / 2 - torsoAngle,  # hipPitch
                       kneeAngle,  # kneePitch
                       -kneeAngle / 2,  # anklePitch
                       -spreadAngle]  # ankleRoll
            RightLeg = [0.0, -spreadAngle, -kneeAngle / 2 - torsoAngle, kneeAngle, -kneeAngle / 2, spreadAngle]


            # Gather the joints together
        pTargetAngles = Head + LeftArm + LeftLeg + RightLeg + RightArm

        # Convert to radians
        pTargetAngles = [x * almath.TO_RAD for x in pTargetAngles]

        # ------------------------------ send stiffness -----------------------------
        self.motionProxy.stiffnessInterpolation("Body", 1.0, 0.5)

        # ------------------------------ send the commands -----------------------------
        # We use the "Body" name to signify the collection of all joints
        pNames = "Body"
        # We set the fraction of max speed
        pMaxSpeedFraction = 0.2
        # Ask motion to do this with a blocking call
        self.motionProxy.angleInterpolationWithSpeed(pNames, pTargetAngles, pMaxSpeedFraction)

    def getBehaviors(self):
        ''' Know which behaviors are on the robot '''

        names = self.managerProxy.getInstalledBehaviors()
        for x in names:
            rospy.loginfo(x)

       # rospy.loginfo(names)

        #names = managerProxy.getRunningBehaviors()
    def on_shutdown(self):
        self.disableAuto()
        self.rest()


def check_ros():
    # check if ros is running, if not start it
    try:
        m = xmlrpclib.ServerProxy(os.environ['ROS_MASTER_URI'])
        code, msg, val = m.getSystemState('/script')
    except:
        roscore = subprocess.Popen('roscore')
        time.sleep(1)  # wait a bit to be sure the roscore is really launched
def launch_nodes(nao_ip):
    path = os.path.dirname(os.path.realpath(__file__))
    path = path + '/nao.launch nao_ip:='+nao_ip
    subprocess.Popen('roslaunch '+ path, shell=True)






if __name__ == "__main__":

  if (len(sys.argv) < 2):
    print "Usage python behaviors.py 10.18.12.56 "
    sys.exit(1)

  nao_ip = sys.argv[1]
  check_ros()
  rospy.init_node('NaoBehavior', anonymous=True)
  launch_nodes(nao_ip)


  app = NaoBehavior(nao_ip)
  rospy.spin()

  #what to do on shutdown
  rospy.on_shutdown(app.on_shutdown)


#commands
#rostopic pub -1 /nao_behavior/run_behavior std_msgs/String -- 'System/animations/Stand/Emotions/Neutral/Hello_1'
#rostopic pub -1 /nao_behavior/get_behaviors std_msgs/String -- 'hi'

