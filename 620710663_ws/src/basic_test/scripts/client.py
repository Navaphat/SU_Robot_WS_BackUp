#!/usr/bin/env python

import rospy
from basic_test.srv import sampleService

rospy.init_node('callservice')
rospy.wait_for_service('service')
srv = rospy.ServiceProxy('service', sampleService)

service = srv(4, 5)
print(service)