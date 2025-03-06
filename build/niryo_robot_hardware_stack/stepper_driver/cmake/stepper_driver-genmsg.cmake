# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "stepper_driver: 3 messages, 1 services")

set(MSG_I_FLAGS "-Istepper_driver:/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg;-Iniryo_robot_msgs:/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(stepper_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_custom_target(_stepper_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stepper_driver" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg" "niryo_robot_msgs/MotorHeader:stepper_driver/StepperMotorHardwareStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_custom_target(_stepper_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stepper_driver" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv" NAME_WE)
add_custom_target(_stepper_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stepper_driver" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_custom_target(_stepper_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stepper_driver" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg" "niryo_robot_msgs/MotorHeader"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stepper_driver
)
_generate_msg_cpp(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stepper_driver
)
_generate_msg_cpp(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stepper_driver
)

### Generating Services
_generate_srv_cpp(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stepper_driver
)

### Generating Module File
_generate_module_cpp(stepper_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stepper_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(stepper_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(stepper_driver_generate_messages stepper_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_cpp _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_cpp _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(stepper_driver_generate_messages_cpp _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_cpp _stepper_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stepper_driver_gencpp)
add_dependencies(stepper_driver_gencpp stepper_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stepper_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stepper_driver
)
_generate_msg_eus(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stepper_driver
)
_generate_msg_eus(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stepper_driver
)

### Generating Services
_generate_srv_eus(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stepper_driver
)

### Generating Module File
_generate_module_eus(stepper_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stepper_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(stepper_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(stepper_driver_generate_messages stepper_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_eus _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_eus _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(stepper_driver_generate_messages_eus _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_eus _stepper_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stepper_driver_geneus)
add_dependencies(stepper_driver_geneus stepper_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stepper_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stepper_driver
)
_generate_msg_lisp(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stepper_driver
)
_generate_msg_lisp(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stepper_driver
)

### Generating Services
_generate_srv_lisp(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stepper_driver
)

### Generating Module File
_generate_module_lisp(stepper_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stepper_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(stepper_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(stepper_driver_generate_messages stepper_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_lisp _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_lisp _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(stepper_driver_generate_messages_lisp _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_lisp _stepper_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stepper_driver_genlisp)
add_dependencies(stepper_driver_genlisp stepper_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stepper_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stepper_driver
)
_generate_msg_nodejs(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stepper_driver
)
_generate_msg_nodejs(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stepper_driver
)

### Generating Services
_generate_srv_nodejs(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stepper_driver
)

### Generating Module File
_generate_module_nodejs(stepper_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stepper_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(stepper_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(stepper_driver_generate_messages stepper_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_nodejs _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_nodejs _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(stepper_driver_generate_messages_nodejs _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_nodejs _stepper_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stepper_driver_gennodejs)
add_dependencies(stepper_driver_gennodejs stepper_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stepper_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg;/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stepper_driver
)
_generate_msg_py(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stepper_driver
)
_generate_msg_py(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stepper_driver
)

### Generating Services
_generate_srv_py(stepper_driver
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stepper_driver
)

### Generating Module File
_generate_module_py(stepper_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stepper_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(stepper_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(stepper_driver_generate_messages stepper_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_py _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_py _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(stepper_driver_generate_messages_py _stepper_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/stepper_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(stepper_driver_generate_messages_py _stepper_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stepper_driver_genpy)
add_dependencies(stepper_driver_genpy stepper_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stepper_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stepper_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stepper_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(stepper_driver_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(stepper_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stepper_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stepper_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_eus)
  add_dependencies(stepper_driver_generate_messages_eus niryo_robot_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(stepper_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stepper_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stepper_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_lisp)
  add_dependencies(stepper_driver_generate_messages_lisp niryo_robot_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(stepper_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stepper_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stepper_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_nodejs)
  add_dependencies(stepper_driver_generate_messages_nodejs niryo_robot_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(stepper_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stepper_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stepper_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stepper_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(stepper_driver_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(stepper_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
