#!/usr/bin/env python3
# license removed for brevity
import rospy
from std_msgs.msg import String

def controller():
    pub_s = rospy.Publisher('comand', String, queue_size=10)

    rospy.init_node('contoller', anonymous=False)
    pub_s.publish("Forward")
    pub_s.publish("TurnLeft")

    rospy.spin()

if __name__ == '__main__':
    try:
        controller()
    except rospy.ROSInterruptException:
        pass