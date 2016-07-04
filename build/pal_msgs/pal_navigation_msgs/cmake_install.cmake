# Install script for directory: /home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/action" TYPE FILE FILES
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/action/JoyPriority.action"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/action/JoyTurbo.action"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/action/GoToPOI.action"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/action/GoTo.action"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/action/VisualTraining.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityAction.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyTurboAction.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyTurboGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyTurboResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToPOIAction.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToPOIResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToAction.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToActionGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToActionResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToActionFeedback.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/GoToFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingAction.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/srv" TYPE FILE FILES
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES "/home/charles/catkin_ws/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/charles/catkin_ws/devel/include/pal_navigation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/charles/catkin_ws/devel/share/common-lisp/ros/pal_navigation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/charles/catkin_ws/devel/lib/python2.7/dist-packages/pal_navigation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/charles/catkin_ws/devel/lib/python2.7/dist-packages/pal_navigation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/charles/catkin_ws/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES "/home/charles/catkin_ws/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES
    "/home/charles/catkin_ws/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgsConfig.cmake"
    "/home/charles/catkin_ws/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs" TYPE FILE FILES "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pal_navigation_msgs" TYPE DIRECTORY FILES "/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/include/pal_navigation_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

