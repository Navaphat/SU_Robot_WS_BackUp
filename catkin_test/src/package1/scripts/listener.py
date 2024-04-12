#!/usr/bin/env python
import rospy
from std_msgs.msg import String, Int16

def callback1(data):
    print("I heard ", data.data)

def callback2(data):
    print("I heard ", str(data.data))
    
def listener():
    rospy.init_node('listener', anonymous=False)

    rospy.Subscriber("topic1", String, callback1)
    rospy.Subscriber("topic2", Int16, callback2)

    rospy.spin()

if __name__ == '__main__':
    listener()