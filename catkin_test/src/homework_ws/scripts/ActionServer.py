#! /usr/bin/env python

import rospy
import actionlib
from homework_ws.msg import CounterAction, CounterFeedback, CounterResult

class CounterActionClass(object):
    def __init__(self):
        self._as = actionlib.SimpleActionServer(rospy.get_name(), CounterAction, execute_cb=self.execute_cb, auto_start = False)
        
        self._as.start()
        rospy.loginfo("Action server %s started." % rospy.get_name())

    def execute_cb(self, goal):
        rospy.loginfo('%s action server is counting up to  %i' % (rospy.get_name(), goal.num_counts))
        success = True
        rate = rospy.Rate(1)

        for i in range(0, goal.num_counts):
            if self._as.is_preempt_requested():
                rospy.loginfo('%s: Preempted' % rospy.get_name())
                self._as.set_preempted()
                success = False
                break

            self._as.publish_feedback(CounterFeedback(i))
            rate.sleep()

        if success:
            rospy.loginfo('%s: Succeeded' % rospy.get_name())
            self._as.set_succeeded(CounterResult("Done"))

if __name__ == '__main__':
    print('running...')
    rospy.init_node('counter_as')
    server = CounterActionClass()
    rospy.spin()