#!/usr/bin/env python3
import rospy
from test_custom_msg.msg import Student

def callback(message):
    print(message.id + " " + message.name)
    
def listener():
    rospy.init_node('listener', anonymous=False)

    rospy.Subscriber("data", Student, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()