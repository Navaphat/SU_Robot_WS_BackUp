#!urs/bin/env python

import rospy
from gazebo_msgs.msg import ModelState
from gazebo_msgs.srv import SetModelState

def set_model(pos, num):
    state_msg = ModelState()

    obj_name = 'red_box_' + str(num)

    state_msg.model_name = obj_name
    state_msg.pose.position.x = pos[0]
    state_msg.pose.position.y = pos[1]
    state_msg.pose.position.z = 1
    state_msg.pose.orientation.x = 0
    state_msg.pose.orientation.y = 0
    state_msg.pose.orientation.z = 0
    state_msg.pose.orientation.w = 0

    set_state = rospy.ServiceProxy('/gazebo/set_model_state', SetModelState)
    sesp = set_state(state_msg)

if __name__ == '__main__':

    rospy.init_node('set_pose')

    set_model([8, 9], 1)