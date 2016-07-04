# Install script for directory: /home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/msg" TYPE FILE FILES
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/actiontag.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/ASRActivation.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/ASREvent.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/ASRLangModelMngmt.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/ASRLanguage.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/asrresult.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/ASRSrvRequest.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/ASRSrvResponse.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/ASRStatus.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/asrupdate.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/AudioDeviceDescription.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/AudioPlayerState.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/audiosignal.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/DirectionOfArrival.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/EnablingSoundLocalisation.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/I18nText.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/TTSstate.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/TtsText.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/TtsMark.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/VoiceActivity.msg"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg/WebGuiEvent.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/action" TYPE FILE FILES
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/action/ASRFile.action"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/action/Sound.action"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/action/Tts.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/msg" TYPE FILE FILES
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/ASRFileAction.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/ASRFileActionGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/ASRFileActionResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/ASRFileActionFeedback.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/ASRFileGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/ASRFileResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/ASRFileFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/msg" TYPE FILE FILES
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/SoundAction.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/SoundActionGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/SoundActionResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/SoundActionFeedback.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/SoundGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/SoundResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/SoundFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/msg" TYPE FILE FILES
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/TtsAction.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/TtsActionGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/TtsActionResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/TtsActionFeedback.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/TtsResult.msg"
    "/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg/TtsFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/srv" TYPE FILE FILES
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/srv/ASRService.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/srv/recognizerService.srv"
    "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/srv/SoundLocalisationService.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/cmake" TYPE FILE FILES "/home/charles/catkin_ws/build/pal_msgs/pal_interaction_msgs/catkin_generated/installspace/pal_interaction_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/charles/catkin_ws/devel/include/pal_interaction_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/charles/catkin_ws/devel/share/common-lisp/ros/pal_interaction_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/charles/catkin_ws/devel/lib/python2.7/dist-packages/pal_interaction_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/charles/catkin_ws/devel/lib/python2.7/dist-packages/pal_interaction_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/charles/catkin_ws/build/pal_msgs/pal_interaction_msgs/catkin_generated/installspace/pal_interaction_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/cmake" TYPE FILE FILES "/home/charles/catkin_ws/build/pal_msgs/pal_interaction_msgs/catkin_generated/installspace/pal_interaction_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/cmake" TYPE FILE FILES
    "/home/charles/catkin_ws/build/pal_msgs/pal_interaction_msgs/catkin_generated/installspace/pal_interaction_msgsConfig.cmake"
    "/home/charles/catkin_ws/build/pal_msgs/pal_interaction_msgs/catkin_generated/installspace/pal_interaction_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs" TYPE FILE FILES "/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

