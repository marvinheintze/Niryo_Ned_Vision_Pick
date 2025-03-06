execute_process(COMMAND "/home/ned/catkin_ws_niryo_ned/build/niryo_robot_user_interface/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ned/catkin_ws_niryo_ned/build/niryo_robot_user_interface/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
