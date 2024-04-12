#!/usr/bin/env python3
import rospy, sys
from test_ros_service.srv import sampleService

rospy.init_node('callservice')
rospy.wait_for_service('service_example')
srv = rospy.ServiceProxy('service_example', sampleService)

service_example = srv(1)
print(service_example)
