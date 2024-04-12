#!/usr/bin/env python3

import rospy
from std_msgs.msg import Int16

def generator():
    pub_i = rospy.Publisher('increment_number', Int16, queue_size=10)

    rospy.init_node('gen_number', anonymous=False)
    rate = rospy.Rate(1) # 1hz

    n = 0
    while not rospy.is_shutdown():
        _int = n
        n = n+1

        pub_i.publish(_int)

        rate.sleep()

if __name__ == '__main__':
    try:
        generator()
    except rospy.ROSInterruptException:
        pass