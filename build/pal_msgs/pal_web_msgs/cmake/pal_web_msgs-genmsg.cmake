# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pal_web_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ipal_web_msgs:/home/charles/catkin_ws/src/pal_msgs/pal_web_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pal_web_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/charles/catkin_ws/src/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pal_web_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_web_msgs/msg/WebGoTo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(pal_web_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pal_web_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pal_web_msgs_generate_messages pal_web_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_web_msgs_gencpp)
add_dependencies(pal_web_msgs_gencpp pal_web_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_web_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pal_web_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_web_msgs/msg/WebGoTo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(pal_web_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pal_web_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pal_web_msgs_generate_messages pal_web_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_web_msgs_genlisp)
add_dependencies(pal_web_msgs_genlisp pal_web_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_web_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pal_web_msgs
  "/home/charles/catkin_ws/src/pal_msgs/pal_web_msgs/msg/WebGoTo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(pal_web_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pal_web_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pal_web_msgs_generate_messages pal_web_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/charles/catkin_ws/src/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_web_msgs_genpy)
add_dependencies(pal_web_msgs_genpy pal_web_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_web_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(pal_web_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(pal_web_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(pal_web_msgs_generate_messages_py std_msgs_generate_messages_py)
