#!/usr/bin/env python3

import rospy
from gazebo_msgs.srv import DeleteModel, SpawnModel
from geometry_msgs.msg import *

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
    initial_pose.position.z = 2

    model_xml = ""

    with open("/home/navaphat/WorkSpace/catkin_test/src/minitest_2/models/cube_r/model.sdf", "r") as xml_file:
        model_xml = xml_file.read().replace('\n', '')

    obj_name = 'red_box_' + str(num)

    spawn_model(obj_name, model_xml, '', initial_pose, 'world')

if __name__ == '__main__':

    rospy.init_node("spawn_products_in_bins")
    
    spawn_model([8, -8], 1)