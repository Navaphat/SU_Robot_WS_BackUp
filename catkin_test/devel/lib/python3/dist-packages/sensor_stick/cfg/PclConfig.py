## *********************************************************
##
## File autogenerated for the sensor_stick package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'name': 'Default', 'type': '', 'state': True, 'cstate': 'true', 'id': 0, 'parent': 0, 'parameters': [{'name': 'axis', 'type': 'int', 'default': 2, 'level': 0, 'description': 'Select Axis', 'min': 0, 'max': 2, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': "{'enum': [{'name': 'X', 'type': 'int', 'value': 0, 'srcline': 8, 'srcfile': '/home/navaphat/WorkSpace/catkin_test/src/Sensor-Stick/sensor_stick/config/Pcl.cfg', 'description': 'X-axis', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Y', 'type': 'int', 'value': 1, 'srcline': 9, 'srcfile': '/home/navaphat/WorkSpace/catkin_test/src/Sensor-Stick/sensor_stick/config/Pcl.cfg', 'description': 'Y-axis', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Z', 'type': 'int', 'value': 2, 'srcline': 10, 'srcfile': '/home/navaphat/WorkSpace/catkin_test/src/Sensor-Stick/sensor_stick/config/Pcl.cfg', 'description': 'Z-axis', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'Select axis'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'min', 'type': 'double', 'default': 0.77, 'level': 0, 'description': 'min', 'min': -0.5, 'max': 3.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'max', 'type': 'double', 'default': 2.0, 'level': 0, 'description': 'max', 'min': -0.5, 'max': 3.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}], 'groups': [], 'srcline': 246, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT', 'parentclass': '', 'parentname': 'Default', 'field': 'default', 'upper': 'DEFAULT', 'lower': 'groups'}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

Pcl_X = 0
Pcl_Y = 1
Pcl_Z = 2
