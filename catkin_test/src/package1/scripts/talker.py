#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String

def talke():
    pub_s = rospy.Publisher('topic1', String, queue_size=10)

    rospy.init_node('talker', anonymous=False)
    rate = rospy.Rate(1) # 1hz

    while not rospy.is_shutdown():
        _str = "hello world"

        pub_s.publish(_str)

        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass