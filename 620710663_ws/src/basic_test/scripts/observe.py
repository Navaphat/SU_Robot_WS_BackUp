#!/usr/bin/env python3

import rospy
from basic_test.msg import Student
from std_msgs.msg import Int16

def callback(data):
    if data.data%10 == 0:
        rospy.Subscriber('student_data', Student, callback2)

def callback2(data):
    print(data.code + " " + data.name + " " + data.gpa)

def observe():
    rospy.init_node('observe', anonymous=False)

    rospy.Subscriber('increment_number', Int16, callback)

if __name__ == '__main__':
    observe()