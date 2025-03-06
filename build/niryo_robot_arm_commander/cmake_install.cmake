# Install script for directory: /home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/msg" TYPE FILE FILES
    "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg"
    "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg"
    "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/srv" TYPE FILE FILES
    "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv"
    "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv"
    "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/action" TYPE FILE FILES "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/action/RobotMove.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/msg" TYPE FILE FILES
    "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg"
    "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg"
    "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg"
    "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg"
    "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg"
    "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg"
    "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/ned/catkin_ws_niryo_ned/build/niryo_robot_arm_commander/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/cmake" TYPE FILE FILES "/home/ned/catkin_ws_niryo_ned/build/niryo_robot_arm_commander/catkin_generated/installspace/niryo_robot_arm_commander-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ned/catkin_ws_niryo_ned/devel/include/niryo_robot_arm_commander")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ned/catkin_ws_niryo_ned/devel/share/roseus/ros/niryo_robot_arm_commander")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ned/catkin_ws_niryo_ned/devel/share/common-lisp/ros/niryo_robot_arm_commander")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ned/catkin_ws_niryo_ned/devel/share/gennodejs/ros/niryo_robot_arm_commander")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/ned/catkin_ws_niryo_ned/devel/lib/python2.7/dist-packages/niryo_robot_arm_commander")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ned/catkin_ws_niryo_ned/devel/lib/python2.7/dist-packages/niryo_robot_arm_commander" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ned/catkin_ws_niryo_ned/devel/lib/python2.7/dist-packages/niryo_robot_arm_commander" FILES_MATCHING REGEX "/home/ned/catkin_ws_niryo_ned/devel/lib/python2\\.7/dist-packages/niryo_robot_arm_commander/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ned/catkin_ws_niryo_ned/build/niryo_robot_arm_commander/catkin_generated/installspace/niryo_robot_arm_commander.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/cmake" TYPE FILE FILES "/home/ned/catkin_ws_niryo_ned/build/niryo_robot_arm_commander/catkin_generated/installspace/niryo_robot_arm_commander-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/cmake" TYPE FILE FILES
    "/home/ned/catkin_ws_niryo_ned/build/niryo_robot_arm_commander/catkin_generated/installspace/niryo_robot_arm_commanderConfig.cmake"
    "/home/ned/catkin_ws_niryo_ned/build/niryo_robot_arm_commander/catkin_generated/installspace/niryo_robot_arm_commanderConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander" TYPE FILE FILES "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_arm_commander" TYPE PROGRAM FILES "/home/ned/catkin_ws_niryo_ned/build/niryo_robot_arm_commander/catkin_generated/installspace/robot_commander_node.py")
endif()

