# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "homework_ws: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ihomework_ws:/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(homework_ws_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg" NAME_WE)
add_custom_target(_homework_ws_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "homework_ws" "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg" "actionlib_msgs/GoalStatus:homework_ws/CounterFeedback:std_msgs/Header:actionlib_msgs/GoalID:homework_ws/CounterActionResult:homework_ws/CounterActionGoal:homework_ws/CounterResult:homework_ws/CounterActionFeedback:homework_ws/CounterGoal"
)

get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg" NAME_WE)
add_custom_target(_homework_ws_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "homework_ws" "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg" "homework_ws/CounterGoal:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg" NAME_WE)
add_custom_target(_homework_ws_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "homework_ws" "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg" "homework_ws/CounterResult:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg" NAME_WE)
add_custom_target(_homework_ws_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "homework_ws" "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg" "homework_ws/CounterFeedback:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg" NAME_WE)
add_custom_target(_homework_ws_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "homework_ws" "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg" ""
)

get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg" NAME_WE)
add_custom_target(_homework_ws_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "homework_ws" "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg" ""
)

get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg" NAME_WE)
add_custom_target(_homework_ws_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "homework_ws" "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/homework_ws
)
_generate_msg_cpp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/homework_ws
)
_generate_msg_cpp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/homework_ws
)
_generate_msg_cpp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/homework_ws
)
_generate_msg_cpp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/homework_ws
)
_generate_msg_cpp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/homework_ws
)
_generate_msg_cpp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/homework_ws
)

### Generating Services

### Generating Module File
_generate_module_cpp(homework_ws
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/homework_ws
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(homework_ws_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(homework_ws_generate_messages homework_ws_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_cpp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_cpp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_cpp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_cpp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_cpp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_cpp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_cpp _homework_ws_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(homework_ws_gencpp)
add_dependencies(homework_ws_gencpp homework_ws_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS homework_ws_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/homework_ws
)
_generate_msg_eus(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/homework_ws
)
_generate_msg_eus(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/homework_ws
)
_generate_msg_eus(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/homework_ws
)
_generate_msg_eus(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/homework_ws
)
_generate_msg_eus(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/homework_ws
)
_generate_msg_eus(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/homework_ws
)

### Generating Services

### Generating Module File
_generate_module_eus(homework_ws
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/homework_ws
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(homework_ws_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(homework_ws_generate_messages homework_ws_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_eus _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_eus _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_eus _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_eus _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_eus _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_eus _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_eus _homework_ws_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(homework_ws_geneus)
add_dependencies(homework_ws_geneus homework_ws_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS homework_ws_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/homework_ws
)
_generate_msg_lisp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/homework_ws
)
_generate_msg_lisp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/homework_ws
)
_generate_msg_lisp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/homework_ws
)
_generate_msg_lisp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/homework_ws
)
_generate_msg_lisp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/homework_ws
)
_generate_msg_lisp(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/homework_ws
)

### Generating Services

### Generating Module File
_generate_module_lisp(homework_ws
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/homework_ws
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(homework_ws_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(homework_ws_generate_messages homework_ws_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_lisp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_lisp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_lisp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_lisp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_lisp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_lisp _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_lisp _homework_ws_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(homework_ws_genlisp)
add_dependencies(homework_ws_genlisp homework_ws_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS homework_ws_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/homework_ws
)
_generate_msg_nodejs(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/homework_ws
)
_generate_msg_nodejs(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/homework_ws
)
_generate_msg_nodejs(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/homework_ws
)
_generate_msg_nodejs(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/homework_ws
)
_generate_msg_nodejs(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/homework_ws
)
_generate_msg_nodejs(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/homework_ws
)

### Generating Services

### Generating Module File
_generate_module_nodejs(homework_ws
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/homework_ws
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(homework_ws_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(homework_ws_generate_messages homework_ws_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_nodejs _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_nodejs _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_nodejs _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_nodejs _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_nodejs _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_nodejs _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_nodejs _homework_ws_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(homework_ws_gennodejs)
add_dependencies(homework_ws_gennodejs homework_ws_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS homework_ws_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg;/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/homework_ws
)
_generate_msg_py(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/homework_ws
)
_generate_msg_py(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/homework_ws
)
_generate_msg_py(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/homework_ws
)
_generate_msg_py(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/homework_ws
)
_generate_msg_py(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/homework_ws
)
_generate_msg_py(homework_ws
  "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/homework_ws
)

### Generating Services

### Generating Module File
_generate_module_py(homework_ws
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/homework_ws
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(homework_ws_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(homework_ws_generate_messages homework_ws_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterAction.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_py _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionGoal.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_py _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionResult.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_py _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterActionFeedback.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_py _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterGoal.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_py _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterResult.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_py _homework_ws_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/catkin_test/devel/share/homework_ws/msg/CounterFeedback.msg" NAME_WE)
add_dependencies(homework_ws_generate_messages_py _homework_ws_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(homework_ws_genpy)
add_dependencies(homework_ws_genpy homework_ws_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS homework_ws_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/homework_ws)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/homework_ws
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(homework_ws_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(homework_ws_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/homework_ws)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/homework_ws
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(homework_ws_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(homework_ws_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/homework_ws)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/homework_ws
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(homework_ws_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(homework_ws_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/homework_ws)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/homework_ws
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(homework_ws_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(homework_ws_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/homework_ws)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/homework_ws\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/homework_ws
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(homework_ws_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(homework_ws_generate_messages_py std_msgs_generate_messages_py)
endif()
