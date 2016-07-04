# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pal_common_msgs: 15 messages, 0 services")

set(MSG_I_FLAGS "-Ipal_common_msgs:/home/charles/catkin_ws/devel/share/pal_common_msgs/msg;-Ipal_common_msgs:/home/charles/catkin_ws/src/pal_msgs/pal_common_msgs/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pal_common_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:pal_common_msgs/EmptyFeedback"
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:pal_common_msgs/DisableFeedback"
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionResult.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:pal_common_msgs/EmptyResult:std_msgs/Header"
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionGoal.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:pal_common_msgs/DisableGoal"
)

get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_common_msgs/msg/JointCurrent.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/src/pal_msgs/pal_common_msgs/msg/JointCurrent.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionResult.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:pal_common_msgs/DisableResult"
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableAction.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableAction.msg" "pal_common_msgs/DisableResult:pal_common_msgs/DisableGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:pal_common_msgs/DisableActionGoal:pal_common_msgs/DisableActionFeedback:pal_common_msgs/DisableFeedback:pal_common_msgs/DisableActionResult:std_msgs/Header"
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyAction.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyAction.msg" "pal_common_msgs/EmptyResult:pal_common_msgs/EmptyFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:pal_common_msgs/EmptyActionFeedback:std_msgs/Header:pal_common_msgs/EmptyActionGoal:pal_common_msgs/EmptyActionResult:pal_common_msgs/EmptyGoal"
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:pal_common_msgs/EmptyGoal"
)

get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg" NAME_WE)
add_custom_target(_pal_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_common_msgs" "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableAction.msg"
  "${MSG_I_FLAGS}"
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionGoal.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_common_msgs/msg/JointCurrent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionResult.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_cpp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(pal_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pal_common_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pal_common_msgs_generate_messages pal_common_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_common_msgs/msg/JointCurrent.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableAction.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyAction.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_cpp _pal_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_common_msgs_gencpp)
add_dependencies(pal_common_msgs_gencpp pal_common_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_common_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableAction.msg"
  "${MSG_I_FLAGS}"
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionGoal.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_common_msgs/msg/JointCurrent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionResult.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_lisp(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(pal_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pal_common_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pal_common_msgs_generate_messages pal_common_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_common_msgs/msg/JointCurrent.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableAction.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyAction.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_lisp _pal_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_common_msgs_genlisp)
add_dependencies(pal_common_msgs_genlisp pal_common_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_common_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableAction.msg"
  "${MSG_I_FLAGS}"
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionGoal.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_common_msgs/msg/JointCurrent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionResult.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)
_generate_msg_py(pal_common_msgs
  "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(pal_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pal_common_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pal_common_msgs_generate_messages pal_common_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_common_msgs/msg/JointCurrent.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableActionResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableAction.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/DisableResult.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyAction.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/devel/share/pal_common_msgs/msg/EmptyFeedback.msg" NAME_WE)
add_dependencies(pal_common_msgs_generate_messages_py _pal_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_common_msgs_genpy)
add_dependencies(pal_common_msgs_genpy pal_common_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_common_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_common_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(pal_common_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
add_dependencies(pal_common_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_common_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(pal_common_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
add_dependencies(pal_common_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_common_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(pal_common_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
add_dependencies(pal_common_msgs_generate_messages_py std_msgs_generate_messages_py)
