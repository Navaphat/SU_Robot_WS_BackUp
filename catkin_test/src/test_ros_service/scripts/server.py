#!/usr/bin/env python
import rospy
from test_ros_service.srv import sampleService, sampleServiceResponse

def turn_on_off(mess):
    if mess.one_or_zero == 1:
        return sampleServiceResponse('ON')
    else:
        return sampleServiceResponse('OFF')

rospy.init_node('service_respond')
service = rospy.Service('service_example', sampleService, turn_on_off)
rospy.spin()