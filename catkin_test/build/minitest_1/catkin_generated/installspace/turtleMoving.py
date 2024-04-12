#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist

def callback(data):
    if data.data == "Right":
        rightcircular_move()
    if data.data == "Left":
        leftCircular_move()
        
vel_msg = Twist()

def rightcircular_move():
    vel_msg.linear.x = 2.0
    vel_msg.linear.y = 0
    vel_msg.linear.z = 0
    vel_msg.angular.x = 0
    vel_msg.angular.y = 0
    vel_msg.angular.z = -1.8

def leftCircular_move():
    vel_msg.linear.x = 2.0
    vel_msg.linear.y = 0
    vel_msg.linear.z = 0
    vel_msg.angular.x = 0
    vel_msg.angular.y = 0
    vel_msg.angular.z = 1.8

if __name__ == '__main__':
    try:
        rospy.init_node('robot_cleaner', anonymous=False)
        rospy.Subscriber('command', String, callback)
        rate = rospy.Rate(1)
        control_signal = rospy.Publisher('/husky_velocity_controller/cmd_vel', Twist, queue_size=10)
        
        while not rospy.is_shutdown():
            control_signal.publish(vel_msg)
            rate.sleep()
            
    except rospy.ROSInterruptException:
        pass