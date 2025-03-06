# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;controller_manager;conveyor_interface;hardware_interface;joints_interface;niryo_robot_msgs;roscpp;std_msgs;tools_interface".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lfake_interface".split(';') if "-lfake_interface" != "" else []
PROJECT_NAME = "fake_interface"
PROJECT_SPACE_DIR = "/home/ned/catkin_ws_niryo_ned/install"
PROJECT_VERSION = "0.0.0"
