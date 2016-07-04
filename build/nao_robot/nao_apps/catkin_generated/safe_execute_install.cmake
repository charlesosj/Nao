execute_process(COMMAND "/home/charles/catkin_ws/build/nao_robot/nao_apps/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/charles/catkin_ws/build/nao_robot/nao_apps/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
