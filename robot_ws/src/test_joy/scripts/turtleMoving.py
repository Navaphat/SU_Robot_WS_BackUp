#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist

def callback(data):
    pub.publish(data)

if __name__ == '__main__':
    try:
        rate = rospy.Rate(500)
        while not rospy.is_shutdown():
            rospy.init_node('Joy2Turtle', anonymous=False)
            pub = rospy.Publisher('/husky_velocity_controller/cmd_vel', Twist, queue_size=10)
            rospy.Subscriber('controller', Twist, callback)
            rate.sleep()

    except rospy.ROSInterruptException:
        pass