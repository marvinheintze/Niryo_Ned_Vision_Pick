# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;controller_manager;dynamixel_driver;hardware_interface;niryo_robot_msgs;roscpp;stepper_driver".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ljoints_interface;-ljoints_interface_core".split(';') if "-ljoints_interface;-ljoints_interface_core" != "" else []
PROJECT_NAME = "joints_interface"
PROJECT_SPACE_DIR = "/home/ned/catkin_ws_niryo_ned/install"
PROJECT_VERSION = "0.0.0"
