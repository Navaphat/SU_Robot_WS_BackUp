#!/usr/bin/env python

import rospy
from basic_test.srv import sampleService, sampleServiceResponse

def multiply(mess):
    return (mess.num1*mess.num2)

rospy.init_node('service_respond')
service = rospy.Service('service', sampleService, multiply)
rospy.spin()