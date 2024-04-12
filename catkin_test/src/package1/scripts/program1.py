#!/usr/bin/env python

import rospy
from std_msgs.msg import String

pub = rospy.Publisher('topic1', String, queue_size=10)
