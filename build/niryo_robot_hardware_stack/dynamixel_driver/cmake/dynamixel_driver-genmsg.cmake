# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dynamixel_driver: 3 messages, 1 services")

set(MSG_I_FLAGS "-Idynamixel_driver:/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg;-Iniryo_robot_msgs:/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dynamixel_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg" NAME_WE)
add_custom_target(_dynamixel_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_driver" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg" "niryo_robot_msgs/MotorHeader:dynamixel_driver/DxlMotorHardwareStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg" NAME_WE)
add_custom_target(_dynamixel_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_driver" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg" NAME_WE)
add_custom_target(_dynamixel_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_driver" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg" "niryo_robot_msgs/MotorHeader"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv" NAME_WE)
add_custom_target(_dynamixel_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamixel_driver" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_driver
)
_generate_msg_cpp(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_driver
)
_generate_msg_cpp(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_driver
)

### Generating Services
_generate_srv_cpp(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_driver
)

### Generating Module File
_generate_module_cpp(dynamixel_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dynamixel_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dynamixel_driver_generate_messages dynamixel_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_cpp _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_cpp _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_cpp _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_cpp _dynamixel_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_driver_gencpp)
add_dependencies(dynamixel_driver_gencpp dynamixel_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_driver
)
_generate_msg_eus(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_driver
)
_generate_msg_eus(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_driver
)

### Generating Services
_generate_srv_eus(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_driver
)

### Generating Module File
_generate_module_eus(dynamixel_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dynamixel_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dynamixel_driver_generate_messages dynamixel_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_eus _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_eus _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_eus _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_eus _dynamixel_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_driver_geneus)
add_dependencies(dynamixel_driver_geneus dynamixel_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_driver
)
_generate_msg_lisp(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_driver
)
_generate_msg_lisp(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_driver
)

### Generating Services
_generate_srv_lisp(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_driver
)

### Generating Module File
_generate_module_lisp(dynamixel_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dynamixel_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dynamixel_driver_generate_messages dynamixel_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_lisp _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_lisp _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_lisp _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_lisp _dynamixel_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_driver_genlisp)
add_dependencies(dynamixel_driver_genlisp dynamixel_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_driver
)
_generate_msg_nodejs(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_driver
)
_generate_msg_nodejs(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_driver
)

### Generating Services
_generate_srv_nodejs(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_driver
)

### Generating Module File
_generate_module_nodejs(dynamixel_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dynamixel_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dynamixel_driver_generate_messages dynamixel_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_nodejs _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_nodejs _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_nodejs _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_nodejs _dynamixel_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_driver_gennodejs)
add_dependencies(dynamixel_driver_gennodejs dynamixel_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_driver
)
_generate_msg_py(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_driver
)
_generate_msg_py(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_driver
)

### Generating Services
_generate_srv_py(dynamixel_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_driver
)

### Generating Module File
_generate_module_py(dynamixel_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dynamixel_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dynamixel_driver_generate_messages dynamixel_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_py _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorCommand.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_py _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/msg/DxlMotorHardwareStatus.msg" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_py _dynamixel_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/dynamixel_driver/srv/SendCustomDxlValue.srv" NAME_WE)
add_dependencies(dynamixel_driver_generate_messages_py _dynamixel_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamixel_driver_genpy)
add_dependencies(dynamixel_driver_genpy dynamixel_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamixel_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamixel_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(dynamixel_driver_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dynamixel_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamixel_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_eus)
  add_dependencies(dynamixel_driver_generate_messages_eus niryo_robot_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dynamixel_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamixel_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_lisp)
  add_dependencies(dynamixel_driver_generate_messages_lisp niryo_robot_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dynamixel_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamixel_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_nodejs)
  add_dependencies(dynamixel_driver_generate_messages_nodejs niryo_robot_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dynamixel_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamixel_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(dynamixel_driver_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dynamixel_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
