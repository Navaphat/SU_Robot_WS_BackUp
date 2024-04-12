# Install script for directory: /home/navaphat/WorkSpace/catkin_test/src/homework_ws

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_ws/action" TYPE FILE FILES "/home/navaphat/WorkSpace/catkin_test/src/homework_ws/action/Counter.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_ws/msg" TYPE FILE FILES
    "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg"
    "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_ws/cmake" TYPE FILE FILES "/home/navaphat/WorkSpace/catkin_test/build/homework_ws/catkin_generated/installspace/homework_ws-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/navaphat/WorkSpace/catkin_test/devel/include/homework_ws")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/navaphat/WorkSpace/catkin_test/devel/share/roseus/ros/homework_ws")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/navaphat/WorkSpace/catkin_test/devel/share/common-lisp/ros/homework_ws")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/navaphat/WorkSpace/catkin_test/devel/share/gennodejs/ros/homework_ws")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/navaphat/WorkSpace/catkin_test/devel/lib/python3/dist-packages/homework_ws")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/navaphat/WorkSpace/catkin_test/devel/lib/python3/dist-packages/homework_ws")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/navaphat/WorkSpace/catkin_test/build/homework_ws/catkin_generated/installspace/homework_ws.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_ws/cmake" TYPE FILE FILES "/home/navaphat/WorkSpace/catkin_test/build/homework_ws/catkin_generated/installspace/homework_ws-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_ws/cmake" TYPE FILE FILES
    "/home/navaphat/WorkSpace/catkin_test/build/homework_ws/catkin_generated/installspace/homework_wsConfig.cmake"
    "/home/navaphat/WorkSpace/catkin_test/build/homework_ws/catkin_generated/installspace/homework_wsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/homework_ws" TYPE FILE FILES "/home/navaphat/WorkSpace/catkin_test/src/homework_ws/package.xml")
endif()

