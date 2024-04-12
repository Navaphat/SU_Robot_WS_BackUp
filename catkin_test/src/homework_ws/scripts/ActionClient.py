#! /usr/bin/env python

import rospy
import actionlib
from homework_ws.msg import CounterAction, CounterGoal

def counter_client():
    client = actionlib.SimpleActionClient('counter_as', CounterAction)
    rospy.loginfo("Waiting for action server to come up...")
    client.wait_for_server()

    client.send_goal(CounterGoal(10), active_cb=callback_active, feedback_cb=callback_feedback, done_cb=callback_done)

    rospy.loginfo("Goal has been sent to the action server.")

def callback_active():
    rospy.loginfo("Action server is processing the goal")

def callback_done(state, result):
    rospy.loginfo("Action server is done. State: %s, result: %s" % (str(state), str(result)))

def callback_feedback(feedback):
    rospy.loginfo("Feedback:%s" % str(feedback))

if __name__ == '__main__':
    try:
        rospy.init_node('counter_ac')
        counter_client()
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("program interrupted before completion")