#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist

def callback(data):
    data.linear.x = data.linear.x*1000
    data.angular.z = data.angular.z*1000
    pub.publish(data)

if __name__ == '__main__':
    try:
        rate = rospy.Rate(500)
        while not rospy.is_shutdown():
            rospy.init_node('joy_input', anonymous=False)
            pub = rospy.Publisher('controller', Twist, queue_size=10)
            rospy.Subscriber('/cmd_vel', Twist, callback)
            rate.sleep()
        

    except rospy.ROSInterruptException:
        pass