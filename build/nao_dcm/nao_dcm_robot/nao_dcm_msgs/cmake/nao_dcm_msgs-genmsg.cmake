# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "nao_dcm_msgs: 3 messages, 1 services")

set(MSG_I_FLAGS "-Inao_dcm_msgs:/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(nao_dcm_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/FSRs.msg" NAME_WE)
add_custom_target(_nao_dcm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nao_dcm_msgs" "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/FSRs.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Bumper.msg" NAME_WE)
add_custom_target(_nao_dcm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nao_dcm_msgs" "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Bumper.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Tactile.msg" NAME_WE)
add_custom_target(_nao_dcm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nao_dcm_msgs" "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Tactile.msg" ""
)

get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/srv/BoolService.srv" NAME_WE)
add_custom_target(_nao_dcm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nao_dcm_msgs" "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/srv/BoolService.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/FSRs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nao_dcm_msgs
)
_generate_msg_cpp(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Tactile.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nao_dcm_msgs
)
_generate_msg_cpp(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Bumper.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nao_dcm_msgs
)

### Generating Services
_generate_srv_cpp(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/srv/BoolService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nao_dcm_msgs
)

### Generating Module File
_generate_module_cpp(nao_dcm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nao_dcm_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(nao_dcm_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(nao_dcm_msgs_generate_messages nao_dcm_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/FSRs.msg" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_cpp _nao_dcm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Bumper.msg" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_cpp _nao_dcm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Tactile.msg" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_cpp _nao_dcm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/srv/BoolService.srv" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_cpp _nao_dcm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nao_dcm_msgs_gencpp)
add_dependencies(nao_dcm_msgs_gencpp nao_dcm_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nao_dcm_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/FSRs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nao_dcm_msgs
)
_generate_msg_lisp(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Tactile.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nao_dcm_msgs
)
_generate_msg_lisp(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Bumper.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nao_dcm_msgs
)

### Generating Services
_generate_srv_lisp(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/srv/BoolService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nao_dcm_msgs
)

### Generating Module File
_generate_module_lisp(nao_dcm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nao_dcm_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(nao_dcm_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(nao_dcm_msgs_generate_messages nao_dcm_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/FSRs.msg" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_lisp _nao_dcm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Bumper.msg" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_lisp _nao_dcm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Tactile.msg" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_lisp _nao_dcm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/srv/BoolService.srv" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_lisp _nao_dcm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nao_dcm_msgs_genlisp)
add_dependencies(nao_dcm_msgs_genlisp nao_dcm_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nao_dcm_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/FSRs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nao_dcm_msgs
)
_generate_msg_py(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Tactile.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nao_dcm_msgs
)
_generate_msg_py(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Bumper.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nao_dcm_msgs
)

### Generating Services
_generate_srv_py(nao_dcm_msgs
  "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/srv/BoolService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nao_dcm_msgs
)

### Generating Module File
_generate_module_py(nao_dcm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nao_dcm_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(nao_dcm_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(nao_dcm_msgs_generate_messages nao_dcm_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/FSRs.msg" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_py _nao_dcm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Bumper.msg" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_py _nao_dcm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/msg/Tactile.msg" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_py _nao_dcm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/charles/catkin_ws/src/nao_dcm/nao_dcm_robot/nao_dcm_msgs/srv/BoolService.srv" NAME_WE)
add_dependencies(nao_dcm_msgs_generate_messages_py _nao_dcm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nao_dcm_msgs_genpy)
add_dependencies(nao_dcm_msgs_genpy nao_dcm_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nao_dcm_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nao_dcm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nao_dcm_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(nao_dcm_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nao_dcm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nao_dcm_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(nao_dcm_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nao_dcm_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nao_dcm_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nao_dcm_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(nao_dcm_msgs_generate_messages_py std_msgs_generate_messages_py)
