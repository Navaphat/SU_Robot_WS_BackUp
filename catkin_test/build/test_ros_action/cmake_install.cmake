# Install script for directory: /home/navaphat/WorkSpace/catkin_test/src/test_ros_action

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/navaphat/WorkSpace/catkin_test/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/test_ros_action/action" TYPE FILE FILES "/home/navaphat/WorkSpace/catkin_test/src/test_ros_action/action/DoDishes.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/test_ros_action/msg" TYPE FILE FILES
    "/home/navaphat/WorkSpace/catkin_test/devel/share/test_ros_action/msg/DoDishesAction.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/test_ros_action/msg/DoDishesActionGoal.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/test_ros_action/msg/DoDishesActionResult.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/test_ros_action/msg/DoDishesActionFeedback.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/test_ros_action/msg/DoDishesGoal.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/test_ros_action/msg/DoDishesResult.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/test_ros_action/msg/DoDishesFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/test_ros_action/cmake" TYPE FILE FILES "/home/navaphat/WorkSpace/catkin_test/build/test_ros_action/catkin_generated/installspace/test_ros_action-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/navaphat/WorkSpace/catkin_test/devel/include/test_ros_action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/navaphat/WorkSpace/catkin_test/devel/share/roseus/ros/test_ros_action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/navaphat/WorkSpace/catkin_test/devel/share/common-lisp/ros/test_ros_action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/navaphat/WorkSpace/catkin_test/devel/share/gennodejs/ros/test_ros_action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/navaphat/WorkSpace/catkin_test/devel/lib/python3/dist-packages/test_ros_action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/navaphat/WorkSpace/catkin_test/devel/lib/python3/dist-packages/test_ros_action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/navaphat/WorkSpace/catkin_test/build/test_ros_action/catkin_generated/installspace/test_ros_action.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/test_ros_action/cmake" TYPE FILE FILES "/home/navaphat/WorkSpace/catkin_test/build/test_ros_action/catkin_generated/installspace/test_ros_action-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/test_ros_action/cmake" TYPE FILE FILES
    "/home/navaphat/WorkSpace/catkin_test/build/test_ros_action/catkin_generated/installspace/test_ros_actionConfig.cmake"
    "/home/navaphat/WorkSpace/catkin_test/build/test_ros_action/catkin_generated/installspace/test_ros_actionConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/test_ros_action" TYPE FILE FILES "/home/navaphat/WorkSpace/catkin_test/src/test_ros_action/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/test_ros_action" TYPE PROGRAM FILES "/home/navaphat/WorkSpace/catkin_test/build/test_ros_action/catkin_generated/installspace/ActionServer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/test_ros_action" TYPE PROGRAM FILES "/home/navaphat/WorkSpace/catkin_test/build/test_ros_action/catkin_generated/installspace/ActionClient.py")
endif()

