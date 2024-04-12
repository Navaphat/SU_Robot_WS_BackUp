#!urs/bin/env python

import rospy, actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from actionlib_msgs.msg import *
from geometry_msgs.msg import Pose, Point, Quaternion
from gazebo_msgs.srv import DeleteModel, SpawnModel, SetModelState
from gazebo_msgs.msg import ModelState

class GoToPose():
    def __init__(self):

        self.goal_sent = False

	    # What to do if shut down (e.g. Ctrl-C or failure)
        rospy.on_shutdown(self.shutdown)
	
	    # Tell the action client that we want to spin a thread by default
        self.move_base = actionlib.SimpleActionClient("move_base", MoveBaseAction)
        rospy.loginfo("Wait for the action server to come up")

	    # Allow up to 5 seconds for the action server to come up
        self.move_base.wait_for_server(rospy.Duration(5))

    def goto(self, pos, quat):

        # Send a goal
        self.goal_sent = True
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = 'map'
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose = Pose(Point(pos['x'], pos['y'], 0.000), Quaternion(quat['r1'], quat['r2'], quat['r3'], quat['r4']))

	    # Start moving
        self.move_base.send_goal(goal)

	    # Allow TurtleBot up to 60 seconds to complete task
        success = self.move_base.wait_for_result(rospy.Duration(60)) 

        state = self.move_base.get_state()
        result = False

        if success and state == GoalStatus.SUCCEEDED:
            # We made it!
            result = True
        else:
            self.move_base.cancel_goal()

        self.goal_sent = False
        return result

    def shutdown(self):
        if self.goal_sent:
            self.move_base.cancel_goal()
        
        rospy.loginfo("Stop")
        rospy.sleep(1)

def goto(nav, pos):

        # Customize the following values so they are appropriate for your location
        position = {'x': pos[0], 'y' : pos[1]}
        quaternion = {'r1' : 0.000, 'r2' : 0.000, 'r3' : 0.000, 'r4' : 1.000}

        rospy.loginfo("Go to (%s, %s) pose", position['x'], position['y'])
        success = nav.goto(position, quaternion)

        if success:
            rospy.loginfo("Hooray, reached the desired pose")
        else:
            rospy.loginfo("The base failed to reach the desired pose")

        # Sleep to give the last log messages time to be sent
        rospy.sleep(1)

def spawn_model(pos, num):
    print("Waiting for gazebo services...")
    rospy.wait_for_service("gazebo/delete_model")
    rospy.wait_for_service("gazebo/spawn_sdf_model")
    print("Got it.")
    delete_model = rospy.ServiceProxy("gazebo/delete_model", DeleteModel)
    spawn_model = rospy.ServiceProxy("gazebo/spawn_sdf_model", SpawnModel)

    initial_pose = Pose()
    initial_pose.position.x = pos[0]
    initial_pose.position.y = pos[1]
    initial_pose.position.z = 1.5

    model_xml = ""

    with open("/home/navaphat/WorkSpace/catkin_test/src/minitest_2/models/cube_r/model.sdf", "r") as xml_file:
        model_xml = xml_file.read().replace('\n', '')

    obj_name = 'red_box_' + str(num)

    spawn_model(obj_name, model_xml, '', initial_pose, 'world')

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
    try:
        rospy.init_node('nav_test', anonymous=False)
        navigator = GoToPose()

        for i in range(0, 2):
            goto(navigator, [0, 0])

            goto(navigator, [8, -8])
            spawn_model([8, -8], i)

            goto(navigator, [8, 8])
            set_model([8, 9], i)


    except rospy.ROSInterruptException:
        rospy.loginfo("Ctrl-C caught. Quitting")