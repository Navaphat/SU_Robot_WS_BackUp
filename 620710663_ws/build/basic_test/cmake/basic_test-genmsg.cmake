# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "basic_test: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ibasic_test:/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(basic_test_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg" NAME_WE)
add_custom_target(_basic_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "basic_test" "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg" ""
)

get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv" NAME_WE)
add_custom_target(_basic_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "basic_test" "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(basic_test
  "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basic_test
)

### Generating Services
_generate_srv_cpp(basic_test
  "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basic_test
)

### Generating Module File
_generate_module_cpp(basic_test
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basic_test
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(basic_test_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(basic_test_generate_messages basic_test_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg" NAME_WE)
add_dependencies(basic_test_generate_messages_cpp _basic_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv" NAME_WE)
add_dependencies(basic_test_generate_messages_cpp _basic_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(basic_test_gencpp)
add_dependencies(basic_test_gencpp basic_test_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS basic_test_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(basic_test
  "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/basic_test
)

### Generating Services
_generate_srv_eus(basic_test
  "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/basic_test
)

### Generating Module File
_generate_module_eus(basic_test
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/basic_test
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(basic_test_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(basic_test_generate_messages basic_test_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg" NAME_WE)
add_dependencies(basic_test_generate_messages_eus _basic_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv" NAME_WE)
add_dependencies(basic_test_generate_messages_eus _basic_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(basic_test_geneus)
add_dependencies(basic_test_geneus basic_test_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS basic_test_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(basic_test
  "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basic_test
)

### Generating Services
_generate_srv_lisp(basic_test
  "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basic_test
)

### Generating Module File
_generate_module_lisp(basic_test
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basic_test
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(basic_test_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(basic_test_generate_messages basic_test_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg" NAME_WE)
add_dependencies(basic_test_generate_messages_lisp _basic_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv" NAME_WE)
add_dependencies(basic_test_generate_messages_lisp _basic_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(basic_test_genlisp)
add_dependencies(basic_test_genlisp basic_test_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS basic_test_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(basic_test
  "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/basic_test
)

### Generating Services
_generate_srv_nodejs(basic_test
  "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/basic_test
)

### Generating Module File
_generate_module_nodejs(basic_test
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/basic_test
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(basic_test_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(basic_test_generate_messages basic_test_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg" NAME_WE)
add_dependencies(basic_test_generate_messages_nodejs _basic_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv" NAME_WE)
add_dependencies(basic_test_generate_messages_nodejs _basic_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(basic_test_gennodejs)
add_dependencies(basic_test_gennodejs basic_test_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS basic_test_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(basic_test
  "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basic_test
)

### Generating Services
_generate_srv_py(basic_test
  "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basic_test
)

### Generating Module File
_generate_module_py(basic_test
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basic_test
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(basic_test_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(basic_test_generate_messages basic_test_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/msg/Student.msg" NAME_WE)
add_dependencies(basic_test_generate_messages_py _basic_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/navaphat/WorkSpace/620710663_ws/src/basic_test/srv/Multiply.srv" NAME_WE)
add_dependencies(basic_test_generate_messages_py _basic_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(basic_test_genpy)
add_dependencies(basic_test_genpy basic_test_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS basic_test_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basic_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basic_test
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(basic_test_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/basic_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/basic_test
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(basic_test_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basic_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basic_test
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(basic_test_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/basic_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/basic_test
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(basic_test_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basic_test)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basic_test\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basic_test
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(basic_test_generate_messages_py std_msgs_generate_messages_py)
endif()
