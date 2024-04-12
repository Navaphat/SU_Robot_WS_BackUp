#! /usr/bin/env python
#import roslib
#roslib.load_manifest('action')

import rospy
import actionlib
from test_ros_action.msg import DoDishesAction, DoDishesGoal

if __name__ == '__main__':
    rospy.init_node('do_dishes_client')
    client = actionlib.SimpleActionClient('do_dishes', DoDishesAction)
    client.wait_for_server()

    goal = DoDishesGoal(dishwasher_id = 1)

    client.send_goal(goal)
    client.wait_for_result(rospy.Duration.from_sec(11.0)) #ไปทำอย่างอืนได้
    print(client.get_result())