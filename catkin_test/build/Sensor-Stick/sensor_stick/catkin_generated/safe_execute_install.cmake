execute_process(COMMAND "/home/navaphat/WorkSpace/catkin_test/build/Sensor-Stick/sensor_stick/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/navaphat/WorkSpace/catkin_test/build/Sensor-Stick/sensor_stick/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
