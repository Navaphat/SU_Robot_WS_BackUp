#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def callback(data):
    if data.data == 'Forward':
        print('I am moving forward..')

    if data.data == 'TurnLeft':
        print('I am turning left..')
    
def robot():
    rospy.init_node('robot', anonymous=False)

    rospy.Subscriber("comand", String, callback)

    rospy.spin()

if __name__ == '__main__':
    robot()