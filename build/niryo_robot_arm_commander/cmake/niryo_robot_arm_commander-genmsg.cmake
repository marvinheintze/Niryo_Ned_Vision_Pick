# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_arm_commander: 10 messages, 3 services")

set(MSG_I_FLAGS "-Iniryo_robot_arm_commander:/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg;-Iniryo_robot_arm_commander:/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Iniryo_robot_msgs:/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_arm_commander_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg" "niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv" "niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg" "actionlib_msgs/GoalID:niryo_robot_msgs/RobotState:niryo_robot_arm_commander/RobotMoveFeedback:niryo_robot_arm_commander/ArmMoveCommand:actionlib_msgs/GoalStatus:niryo_robot_arm_commander/RobotMoveActionFeedback:niryo_robot_msgs/RPY:niryo_robot_arm_commander/RobotMoveActionGoal:geometry_msgs/Pose:niryo_robot_arm_commander/ShiftPose:niryo_robot_arm_commander/RobotMoveResult:std_msgs/Header:niryo_robot_arm_commander/RobotMoveGoal:geometry_msgs/Quaternion:niryo_robot_arm_commander/RobotMoveActionResult:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg" "actionlib_msgs/GoalID:niryo_robot_arm_commander/ArmMoveCommand:niryo_robot_msgs/RPY:geometry_msgs/Pose:niryo_robot_arm_commander/ShiftPose:std_msgs/Header:niryo_robot_arm_commander/RobotMoveGoal:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:niryo_robot_arm_commander/RobotMoveResult:std_msgs/Header"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg" "niryo_robot_arm_commander/ArmMoveCommand:niryo_robot_msgs/RPY:geometry_msgs/Pose:niryo_robot_arm_commander/ShiftPose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg" "geometry_msgs/Pose:niryo_robot_arm_commander/ShiftPose:geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:niryo_robot_msgs/RPY:niryo_robot_arm_commander/RobotMoveFeedback:std_msgs/Header:niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv" "niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Services
_generate_srv_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_cpp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Module File
_generate_module_cpp(niryo_robot_arm_commander
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_arm_commander_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_arm_commander_generate_messages niryo_robot_arm_commander_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_arm_commander_gencpp)
add_dependencies(niryo_robot_arm_commander_gencpp niryo_robot_arm_commander_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_arm_commander_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Services
_generate_srv_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_eus(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Module File
_generate_module_eus(niryo_robot_arm_commander
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(niryo_robot_arm_commander_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(niryo_robot_arm_commander_generate_messages niryo_robot_arm_commander_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_eus _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_arm_commander_geneus)
add_dependencies(niryo_robot_arm_commander_geneus niryo_robot_arm_commander_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_arm_commander_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Services
_generate_srv_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_lisp(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Module File
_generate_module_lisp(niryo_robot_arm_commander
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(niryo_robot_arm_commander_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(niryo_robot_arm_commander_generate_messages niryo_robot_arm_commander_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_lisp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_arm_commander_genlisp)
add_dependencies(niryo_robot_arm_commander_genlisp niryo_robot_arm_commander_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_arm_commander_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Services
_generate_srv_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_nodejs(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Module File
_generate_module_nodejs(niryo_robot_arm_commander
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(niryo_robot_arm_commander_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(niryo_robot_arm_commander_generate_messages niryo_robot_arm_commander_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_arm_commander_gennodejs)
add_dependencies(niryo_robot_arm_commander_gennodejs niryo_robot_arm_commander_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_arm_commander_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Services
_generate_srv_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_py(niryo_robot_arm_commander
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Module File
_generate_module_py(niryo_robot_arm_commander
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_arm_commander_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_arm_commander_generate_messages niryo_robot_arm_commander_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetIK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/JogShift.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_arm_commander/srv/GetFK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_arm_commander_genpy)
add_dependencies(niryo_robot_arm_commander_genpy niryo_robot_arm_commander_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_arm_commander_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_arm_commander_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_arm_commander_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_arm_commander_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_arm_commander
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_arm_commander_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_arm_commander_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET niryo_robot_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_arm_commander_generate_messages_eus niryo_robot_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_arm_commander
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_arm_commander_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_arm_commander_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET niryo_robot_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_arm_commander_generate_messages_lisp niryo_robot_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_arm_commander
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET niryo_robot_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_arm_commander_generate_messages_nodejs niryo_robot_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(niryo_robot_arm_commander_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(niryo_robot_arm_commander_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(niryo_robot_arm_commander_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
