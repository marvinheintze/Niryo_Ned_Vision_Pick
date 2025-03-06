# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_poses_handlers: 3 messages, 8 services")

set(MSG_I_FLAGS "-Iniryo_robot_poses_handlers:/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Imoveit_msgs:/opt/ros/melodic/share/moveit_msgs/cmake/../msg;-Iniryo_robot_msgs:/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/melodic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/melodic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_poses_handlers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg" "geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv" "geometry_msgs/Quaternion:niryo_robot_poses_handlers/NiryoPose:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv" "geometry_msgs/Quaternion:niryo_robot_poses_handlers/NiryoPose:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv" "niryo_robot_msgs/RobotState:niryo_robot_poses_handlers/Workspace:geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv" "niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg" "niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv" "niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_cpp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_cpp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Services
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Module File
_generate_module_cpp(niryo_robot_poses_handlers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_poses_handlers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_poses_handlers_generate_messages niryo_robot_poses_handlers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_poses_handlers_gencpp)
add_dependencies(niryo_robot_poses_handlers_gencpp niryo_robot_poses_handlers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_poses_handlers_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_eus(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_eus(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Services
_generate_srv_eus(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_eus(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_eus(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_eus(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_eus(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_eus(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_eus(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_eus(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Module File
_generate_module_eus(niryo_robot_poses_handlers
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(niryo_robot_poses_handlers_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(niryo_robot_poses_handlers_generate_messages niryo_robot_poses_handlers_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_eus _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_eus _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_eus _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_eus _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_eus _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_eus _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_eus _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_eus _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_eus _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_eus _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_eus _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_poses_handlers_geneus)
add_dependencies(niryo_robot_poses_handlers_geneus niryo_robot_poses_handlers_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_poses_handlers_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_lisp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_lisp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Services
_generate_srv_lisp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_lisp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_lisp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_lisp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_lisp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_lisp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_lisp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_lisp(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Module File
_generate_module_lisp(niryo_robot_poses_handlers
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(niryo_robot_poses_handlers_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(niryo_robot_poses_handlers_generate_messages niryo_robot_poses_handlers_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_poses_handlers_genlisp)
add_dependencies(niryo_robot_poses_handlers_genlisp niryo_robot_poses_handlers_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_poses_handlers_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_nodejs(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_nodejs(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Services
_generate_srv_nodejs(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_nodejs(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_nodejs(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_nodejs(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_nodejs(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_nodejs(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_nodejs(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_nodejs(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Module File
_generate_module_nodejs(niryo_robot_poses_handlers
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(niryo_robot_poses_handlers_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(niryo_robot_poses_handlers_generate_messages niryo_robot_poses_handlers_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_poses_handlers_gennodejs)
add_dependencies(niryo_robot_poses_handlers_gennodejs niryo_robot_poses_handlers_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_poses_handlers_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_py(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_py(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Services
_generate_srv_py(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Module File
_generate_module_py(niryo_robot_poses_handlers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_poses_handlers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_poses_handlers_generate_messages niryo_robot_poses_handlers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/NiryoPose.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManagePose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Workspace.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_poses_handlers_genpy)
add_dependencies(niryo_robot_poses_handlers_genpy niryo_robot_poses_handlers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_poses_handlers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_poses_handlers
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()
if(TARGET niryo_robot_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_eus niryo_robot_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_poses_handlers
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()
if(TARGET niryo_robot_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_lisp niryo_robot_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_poses_handlers
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()
if(TARGET niryo_robot_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_nodejs niryo_robot_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_py moveit_msgs_generate_messages_py)
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
