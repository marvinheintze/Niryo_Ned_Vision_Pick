# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "mcp_can_rpi;message_runtime;niryo_robot_msgs;roscpp;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lstepper_driver;-lstepper_driver_core".split(';') if "-lstepper_driver;-lstepper_driver_core" != "" else []
PROJECT_NAME = "stepper_driver"
PROJECT_SPACE_DIR = "/home/ned/catkin_ws_niryo_ned/install"
PROJECT_VERSION = "0.0.0"
