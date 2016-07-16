import sys
import time
import rospy
from std_msgs.msg import String

from naoqi import ALProxy

class NaoBehavior:
    def __init__(self,robotIP):
        # Create proxy to ALBehaviorManager
        self.managerProxy = ALProxy("ALBehaviorManager", robotIP, 9559)
        rospy.Subscriber("/nao_behavior/run_behavior", String, self.launchAndStopBehavior)
        rospy.Subscriber("/nao_behavior/get_behaviors", String, self.getBehaviors)

    def launchAndStopBehavior(self, data):
        ''' Launch and stop a behavior, if possible. '''
        rospy.loginfo(data.data)
        behaviorName = data.data
        # Check that the behavior exists.
        if (self.managerProxy.isBehaviorInstalled(behaviorName)):

            # Check that it is not already running.
            if (not self.managerProxy.isBehaviorRunning(behaviorName)):
                # Launch behavior. This is a blocking call, use post if you do not
                # want to wait for the behavior to finish.
                rospy.loginfo("Running Behavior")
                self.managerProxy.post.runBehavior(behaviorName)
                time.sleep(0.5)
            else:
                rospy.loginfo( "Behavior is already running.")

        else:
            rospy.loginfo( "Behavior not found.")
            return


    def stop(self):
            # Stop the behavir.
            if (self.managerProxy.isBehaviorRunning(behaviorName)):
                self.managerProxy.stopBehavior(behaviorName)
                time.sleep(1.0)
            else:
                rospy.loginfo("Behavior is already stopped.")



    def getBehaviors(self, data):
        ''' Know which behaviors are on the robot '''

        names = self.managerProxy.getInstalledBehaviors()
        for x in names:
            rospy.loginfo(x)

       # rospy.loginfo(names)

        #names = managerProxy.getRunningBehaviors()



def main(robotIP, behaviorName):


  getBehaviors(managerProxy)





if __name__ == "__main__":

  if (len(sys.argv) < 1):
    print "Usage python behaviors.py 10.18.12.56 "
    sys.exit(1)
  rospy.init_node('NaoBehavior', anonymous=True)

  app = NaoBehavior(sys.argv[1])
  rospy.spin()
#commands
#rostopic pub -1 /nao_behavior/run_behavior std_msgs/String -- 'System/animations/Stand/Emotions/Neutral/Hello_1'
#rostopic pub -1 /nao_behavior/get_behaviors std_msgs/String -- 'hi'

