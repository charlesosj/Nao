# Install script for directory: /home/charles/catkin_ws/src/pal_msgs/pal_control_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/charles/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_control_msgs/msg" TYPE FILE FILES "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/msg/ActuatorCurrentLimit.msg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_control_msgs/action" TYPE FILE FILES "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/action/MotionManager.action")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_control_msgs/msg" TYPE FILE FILES
    "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerAction.msg"
    "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerActionFeedback.msg"
    "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_control_msgs/msg/MotionManagerFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_control_msgs/srv" TYPE FILE FILES "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/srv/CurrentLimit.srv")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_control_msgs/cmake" TYPE FILE FILES "/home/charles/catkin_ws/build/pal_msgs/pal_control_msgs/catkin_generated/installspace/pal_control_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/charles/catkin_ws/devel/include/pal_control_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/charles/catkin_ws/devel/share/common-lisp/ros/pal_control_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/charles/catkin_ws/devel/lib/python2.7/dist-packages/pal_control_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/charles/catkin_ws/devel/lib/python2.7/dist-packages/pal_control_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/charles/catkin_ws/build/pal_msgs/pal_control_msgs/catkin_generated/installspace/pal_control_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_control_msgs/cmake" TYPE FILE FILES "/home/charles/catkin_ws/build/pal_msgs/pal_control_msgs/catkin_generated/installspace/pal_control_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_control_msgs/cmake" TYPE FILE FILES
    "/home/charles/catkin_ws/build/pal_msgs/pal_control_msgs/catkin_generated/installspace/pal_control_msgsConfig.cmake"
    "/home/charles/catkin_ws/build/pal_msgs/pal_control_msgs/catkin_generated/installspace/pal_control_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_control_msgs" TYPE FILE FILES "/home/charles/catkin_ws/src/pal_msgs/pal_control_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

