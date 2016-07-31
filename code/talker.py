#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String



if __name__ == '__main__':
    # publisher
    pub = rospy.Publisher('/nao_behavior/add', String, queue_size=5)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10)  # 10hz

    str = 'System/animations/Stand/Emotions/Neutral/Hello_1'
    pub.publish(str)

    str = 'wait 0.5'
    pub.publish(str)

    str = 'say hello i am a robot how are you doing'
    pub.publish(str)

    str = 'sayanimated Changing the default speed value is a non-persistent modification. '
    pub.publish(str)

    str = 'move 0.2'
    pub.publish(str)


    str = 'rest'
    pub.publish(str)


