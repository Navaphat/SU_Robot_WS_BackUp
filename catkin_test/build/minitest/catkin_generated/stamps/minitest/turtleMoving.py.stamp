#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist

def circular_move():
    rospy.init_node('robot_cleaner', anonymous=True)
    rate = rospy.Rate(1)
    control_signal = rospy.Publisher('/husky_velocity_controller/cmd_vel', Twist, queue_size=10)

    vel_msg = Twist()
    vel_msg.linear.x = 2.0
    vel_msg.linear.y = 0
    vel_msg.linear.z = 0
    vel_msg.angular.x = 0
    vel_msg.angular.y = 0
    vel_msg.angular.z = -1.8

    while not rospy.is_shutdown():
        control_signal.publish(vel_msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        circular_move()
    except rospy.ROSInterruptException:
        pass