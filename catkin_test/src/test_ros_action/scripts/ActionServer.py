#! /usr/bin/env python

import rospy
import actionlib
from test_ros_action.msg import DoDishesAction, DoDishesResult, DoDishesFeedback

class DoDishesServer:

    def __init__(self):
        self.server = actionlib.SimpleActionServer('do_dishes', DoDishesAction, self.execute, False)
        self.result = DoDishesResult()
        self.feedback = DoDishesFeedback()
        self.server.start()
    
    def execute(self, goal):
        # Do lots of awesome groundbreaking robot stuff here
        r = rospy.Rate(1)
        
        succeed = True
        for i in range(0,10):
            self.result.total_dishes_cleaned = self.result.total_dishes_cleaned + 1
            self.feedback.percent_complete = self.result.total_dishes_cleaned
            self.server.publish_feedback(self.feedback)
            r.sleep()

        if succeed:
            self.server.set_succeeded(self.result)


if __name__ == '__main__':
    print('running...')
    rospy.init_node('do_dishes_server')
    server = DoDishesServer()
    rospy.spin()