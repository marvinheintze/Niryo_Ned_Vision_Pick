# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tools_interface: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tools_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv" NAME_WE)
add_custom_target(_tools_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tools_interface" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv" NAME_WE)
add_custom_target(_tools_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tools_interface" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv" NAME_WE)
add_custom_target(_tools_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tools_interface" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv" NAME_WE)
add_custom_target(_tools_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tools_interface" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv" ""
)

get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv" NAME_WE)
add_custom_target(_tools_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tools_interface" "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
)
_generate_srv_cpp(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
)
_generate_srv_cpp(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
)
_generate_srv_cpp(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
)
_generate_srv_cpp(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
)

### Generating Module File
_generate_module_cpp(tools_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tools_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tools_interface_generate_messages tools_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_cpp _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_cpp _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_cpp _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_cpp _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_cpp _tools_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tools_interface_gencpp)
add_dependencies(tools_interface_gencpp tools_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tools_interface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tools_interface
)
_generate_srv_eus(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tools_interface
)
_generate_srv_eus(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tools_interface
)
_generate_srv_eus(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tools_interface
)
_generate_srv_eus(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tools_interface
)

### Generating Module File
_generate_module_eus(tools_interface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tools_interface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tools_interface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tools_interface_generate_messages tools_interface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_eus _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_eus _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_eus _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_eus _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_eus _tools_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tools_interface_geneus)
add_dependencies(tools_interface_geneus tools_interface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tools_interface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tools_interface
)
_generate_srv_lisp(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tools_interface
)
_generate_srv_lisp(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tools_interface
)
_generate_srv_lisp(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tools_interface
)
_generate_srv_lisp(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tools_interface
)

### Generating Module File
_generate_module_lisp(tools_interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tools_interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tools_interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tools_interface_generate_messages tools_interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_lisp _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_lisp _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_lisp _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_lisp _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_lisp _tools_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tools_interface_genlisp)
add_dependencies(tools_interface_genlisp tools_interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tools_interface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tools_interface
)
_generate_srv_nodejs(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tools_interface
)
_generate_srv_nodejs(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tools_interface
)
_generate_srv_nodejs(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tools_interface
)
_generate_srv_nodejs(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tools_interface
)

### Generating Module File
_generate_module_nodejs(tools_interface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tools_interface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tools_interface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tools_interface_generate_messages tools_interface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_nodejs _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_nodejs _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_nodejs _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_nodejs _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_nodejs _tools_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tools_interface_gennodejs)
add_dependencies(tools_interface_gennodejs tools_interface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tools_interface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
)
_generate_srv_py(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
)
_generate_srv_py(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
)
_generate_srv_py(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
)
_generate_srv_py(tools_interface
  "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
)

### Generating Module File
_generate_module_py(tools_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tools_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tools_interface_generate_messages tools_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_py _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PullAirVacuumPump.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_py _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/PushAirVacuumPump.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_py _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/CloseGripper.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_py _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_hardware_stack/tools_interface/srv/OpenGripper.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_py _tools_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tools_interface_genpy)
add_dependencies(tools_interface_genpy tools_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tools_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tools_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tools_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tools_interface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tools_interface_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tools_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tools_interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tools_interface_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tools_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tools_interface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tools_interface_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tools_interface_generate_messages_py std_msgs_generate_messages_py)
endif()
