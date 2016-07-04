# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pal_control_msgs: 8 messages, 1 services")

set(MSG_I_FLAGS "-Ipal_control_msgs:/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/msg;-Ipal_control_msgs:/home/charles/catkin_ws/devel/share/pal_control_msgs/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pal_control_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerAction.msg" NAME_WE)
add_custom_target(_pal_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_control_msgs" "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerAction.msg" "pal_control_msgs/MotionManagerFeedback:pal_control_msgs/MotionManagerActionGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:pal_control_msgs/MotionManagerActionFeedback:std_msgs/Header:pal_control_msgs/MotionManagerGoal:pal_control_msgs/MotionManagerResult:pal_control_msgs/MotionManagerActionResult"
)

get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/srv/CurrentLimit.srv" NAME_WE)
add_custom_target(_pal_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_control_msgs" "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/srv/CurrentLimit.srv" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg" NAME_WE)
add_custom_target(_pal_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_control_msgs" "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:pal_control_msgs/MotionManagerGoal"
)

get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/msg/ActuatorCurrentLimit.msg" NAME_WE)
add_custom_target(_pal_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_control_msgs" "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/msg/ActuatorCurrentLimit.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg" NAME_WE)
add_custom_target(_pal_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_control_msgs" "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:pal_control_msgs/MotionManagerResult"
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg" NAME_WE)
add_custom_target(_pal_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_control_msgs" "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:pal_control_msgs/MotionManagerFeedback"
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg" NAME_WE)
add_custom_target(_pal_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_control_msgs" "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg" NAME_WE)
add_custom_target(_pal_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_control_msgs" "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg" NAME_WE)
add_custom_target(_pal_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_control_msgs" "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_cpp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_cpp(pal_control_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/msg/ActuatorCurrentLimit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_cpp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_cpp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_cpp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_cpp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_cpp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs
)

### Generating Services
_generate_srv_cpp(pal_control_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/srv/CurrentLimit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs
)

### Generating Module File
_generate_module_cpp(pal_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pal_control_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pal_control_msgs_generate_messages pal_control_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerAction.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_cpp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/srv/CurrentLimit.srv" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_cpp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_cpp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/msg/ActuatorCurrentLimit.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_cpp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_cpp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_cpp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_cpp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_cpp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_cpp _pal_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_control_msgs_gencpp)
add_dependencies(pal_control_msgs_gencpp pal_control_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_control_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_lisp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_lisp(pal_control_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/msg/ActuatorCurrentLimit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_lisp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_lisp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_lisp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_lisp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_lisp(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs
)

### Generating Services
_generate_srv_lisp(pal_control_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/srv/CurrentLimit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs
)

### Generating Module File
_generate_module_lisp(pal_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pal_control_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pal_control_msgs_generate_messages pal_control_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerAction.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_lisp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/srv/CurrentLimit.srv" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_lisp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_lisp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/msg/ActuatorCurrentLimit.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_lisp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_lisp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_lisp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_lisp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_lisp _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_lisp _pal_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_control_msgs_genlisp)
add_dependencies(pal_control_msgs_genlisp pal_control_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_control_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerAction.msg"
  "${MSG_I_FLAGS}"
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_py(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_py(pal_control_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/msg/ActuatorCurrentLimit.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_py(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_py(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_py(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_py(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs
)
_generate_msg_py(pal_control_msgs
  "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs
)

### Generating Services
_generate_srv_py(pal_control_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/srv/CurrentLimit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs
)

### Generating Module File
_generate_module_py(pal_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pal_control_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pal_control_msgs_generate_messages pal_control_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerAction.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_py _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/srv/CurrentLimit.srv" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_py _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_py _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/msg/ActuatorCurrentLimit.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_py _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_py _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_py _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_py _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_py _pal_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg" NAME_WE)
add_dependencies(pal_control_msgs_generate_messages_py _pal_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_control_msgs_genpy)
add_dependencies(pal_control_msgs_genpy pal_control_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_control_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_control_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(pal_control_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_control_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(pal_control_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_control_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(pal_control_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
