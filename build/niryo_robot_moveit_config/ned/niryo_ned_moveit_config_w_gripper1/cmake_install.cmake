# Install script for directory: /home/ned/catkin_ws_niryo_ned/src/niryo_robot_moveit_config/ned/niryo_ned_moveit_config_w_gripper1

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ned/catkin_ws_niryo_ned/build/niryo_robot_moveit_config/ned/niryo_ned_moveit_config_w_gripper1/catkin_generated/installspace/niryo_ned_moveit_config_w_gripper1.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_ned_moveit_config_w_gripper1/cmake" TYPE FILE FILES
    "/home/ned/catkin_ws_niryo_ned/build/niryo_robot_moveit_config/ned/niryo_ned_moveit_config_w_gripper1/catkin_generated/installspace/niryo_ned_moveit_config_w_gripper1Config.cmake"
    "/home/ned/catkin_ws_niryo_ned/build/niryo_robot_moveit_config/ned/niryo_ned_moveit_config_w_gripper1/catkin_generated/installspace/niryo_ned_moveit_config_w_gripper1Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_ned_moveit_config_w_gripper1" TYPE FILE FILES "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_moveit_config/ned/niryo_ned_moveit_config_w_gripper1/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_ned_moveit_config_w_gripper1" TYPE DIRECTORY FILES "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_moveit_config/ned/niryo_ned_moveit_config_w_gripper1/launch" REGEX "/setup\\_assistant\\.launch$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_ned_moveit_config_w_gripper1" TYPE DIRECTORY FILES "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_moveit_config/ned/niryo_ned_moveit_config_w_gripper1/config")
endif()

