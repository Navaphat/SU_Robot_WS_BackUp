#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int16

def callback(data):
    if data.data%10 == 0:
        print("Another ten")

def listener():
    rospy.init_node('listener', anonymous=False)

    rospy.Subscriber('increment_number', Int16, callback)

    rospy.spin()

if __name__ == '__main__':
    listener()