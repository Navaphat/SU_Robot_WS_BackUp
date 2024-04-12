#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def command():
    pub = rospy.Publisher('command', String, queue_size=10)

    rospy.init_node('commander', anonymous=False)
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        print("please Enter: ")
        _str = input()
        pub.publish(_str)
        rate.sleep()

if __name__ == '__main__':
    try:
        command()
    except rospy.ROSInterruptException:
        pass