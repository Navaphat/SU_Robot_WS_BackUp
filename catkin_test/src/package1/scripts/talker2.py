#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import Int16

def talker():
    pub_i = rospy.Publisher('topic2', Int16, queue_size=10)

    rospy.init_node('talker2', anonymous=False)
    rate = rospy.Rate(0.5) # 1hz

    n = 0
    while not rospy.is_shutdown():
        _int = n
        n = n+1

        pub_i.publish(_int)

        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass