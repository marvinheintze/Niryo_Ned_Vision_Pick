# Install script for directory: /home/ned/catkin_ws_niryo_ned/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ned/catkin_ws_niryo_ned/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ned/catkin_ws_niryo_ned/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ned/catkin_ws_niryo_ned/install" TYPE PROGRAM FILES "/home/ned/catkin_ws_niryo_ned/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ned/catkin_ws_niryo_ned/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ned/catkin_ws_niryo_ned/install" TYPE PROGRAM FILES "/home/ned/catkin_ws_niryo_ned/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ned/catkin_ws_niryo_ned/install/setup.bash;/home/ned/catkin_ws_niryo_ned/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ned/catkin_ws_niryo_ned/install" TYPE FILE FILES
    "/home/ned/catkin_ws_niryo_ned/build/catkin_generated/installspace/setup.bash"
    "/home/ned/catkin_ws_niryo_ned/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ned/catkin_ws_niryo_ned/install/setup.sh;/home/ned/catkin_ws_niryo_ned/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ned/catkin_ws_niryo_ned/install" TYPE FILE FILES
    "/home/ned/catkin_ws_niryo_ned/build/catkin_generated/installspace/setup.sh"
    "/home/ned/catkin_ws_niryo_ned/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ned/catkin_ws_niryo_ned/install/setup.zsh;/home/ned/catkin_ws_niryo_ned/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ned/catkin_ws_niryo_ned/install" TYPE FILE FILES
    "/home/ned/catkin_ws_niryo_ned/build/catkin_generated/installspace/setup.zsh"
    "/home/ned/catkin_ws_niryo_ned/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ned/catkin_ws_niryo_ned/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ned/catkin_ws_niryo_ned/install" TYPE FILE FILES "/home/ned/catkin_ws_niryo_ned/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ned/catkin_ws_niryo_ned/build/gtest/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_bringup/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_description/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_system_api_client/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_user_interface/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/realsense2_description-master/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_msgs/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_arm_commander/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_tools_commander/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_hardware_stack/cpu_interface/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_hardware_stack/dynamixel_sdk/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_hardware_stack/dynamixel_driver/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_hardware_stack/mcp_can_rpi/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_hardware_stack/niryo_robot_debug/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_modbus/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_serial_number/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_programs_manager/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_unit_tests/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_hardware_stack/stepper_driver/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_hardware_stack/conveyor_interface/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_hardware_stack/tools_interface/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_hardware_stack/joints_interface/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_rpi/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_vision/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_poses_handlers/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_gazebo/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/realsense_gazebo_plugin-master/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_hardware_stack/fake_interface/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_moveit_config/ned/niryo_ned_moveit_config_standalone/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_moveit_config/ned/niryo_ned_moveit_config_w_gripper1/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_hardware_stack/niryo_robot_hardware_interface/cmake_install.cmake")
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_python_ros_wrapper/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ned/catkin_ws_niryo_ned/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
