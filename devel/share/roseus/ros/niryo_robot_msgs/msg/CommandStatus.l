;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::CommandStatus)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'CommandStatus (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS")
  (make-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CommandStatus.msg.html


(intern "*SUCCESS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SUCCESS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SUCCESS* 1)
(intern "*CANCELLED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CANCELLED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CANCELLED* 2)
(intern "*PREEMPTED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PREEMPTED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PREEMPTED* 3)
(intern "*FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*FAILURE* -1)
(intern "*ABORTED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*ABORTED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*ABORTED* -3)
(intern "*STOPPED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*STOPPED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*STOPPED* -4)
(intern "*ROS_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*ROS_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*ROS_ERROR* -20)
(intern "*FILE_ALREADY_EXISTS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*FILE_ALREADY_EXISTS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*FILE_ALREADY_EXISTS* -30)
(intern "*UNKNOWN_COMMAND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*UNKNOWN_COMMAND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*UNKNOWN_COMMAND* -50)
(intern "*NOT_IMPLEMENTED_COMMAND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*NOT_IMPLEMENTED_COMMAND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*NOT_IMPLEMENTED_COMMAND* -51)
(intern "*INVALID_PARAMETERS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*INVALID_PARAMETERS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*INVALID_PARAMETERS* -52)
(intern "*HARDWARE_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*HARDWARE_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*HARDWARE_FAILURE* -110)
(intern "*HARDWARE_NOT_OK*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*HARDWARE_NOT_OK* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*HARDWARE_NOT_OK* -111)
(intern "*LEARNING_MODE_ON*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*LEARNING_MODE_ON* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*LEARNING_MODE_ON* -112)
(intern "*CALIBRATION_NOT_DONE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CALIBRATION_NOT_DONE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CALIBRATION_NOT_DONE* -113)
(intern "*DIGITAL_IO_PANEL_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*DIGITAL_IO_PANEL_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*DIGITAL_IO_PANEL_ERROR* -114)
(intern "*LED_MANAGER_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*LED_MANAGER_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*LED_MANAGER_ERROR* -115)
(intern "*BUTTON_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*BUTTON_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*BUTTON_ERROR* -116)
(intern "*WRONG_MOTOR_TYPE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*WRONG_MOTOR_TYPE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*WRONG_MOTOR_TYPE* -117)
(intern "*DXL_WRITE_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*DXL_WRITE_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*DXL_WRITE_ERROR* -118)
(intern "*DXL_READ_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*DXL_READ_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*DXL_READ_ERROR* -119)
(intern "*CAN_WRITE_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CAN_WRITE_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CAN_WRITE_ERROR* -120)
(intern "*CAN_READ_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CAN_READ_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CAN_READ_ERROR* -121)
(intern "*NO_CONVEYOR_LEFT*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*NO_CONVEYOR_LEFT* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*NO_CONVEYOR_LEFT* -122)
(intern "*NO_CONVEYOR_FOUND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*NO_CONVEYOR_FOUND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*NO_CONVEYOR_FOUND* -123)
(intern "*CONVEYOR_ID_INVALID*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CONVEYOR_ID_INVALID* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CONVEYOR_ID_INVALID* -124)
(intern "*CALIBRATION_IN_PROGRESS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CALIBRATION_IN_PROGRESS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CALIBRATION_IN_PROGRESS* -125)
(intern "*VIDEO_STREAM_ON_OFF_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*VIDEO_STREAM_ON_OFF_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*VIDEO_STREAM_ON_OFF_FAILURE* -170)
(intern "*VIDEO_STREAM_NOT_RUNNING*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*VIDEO_STREAM_NOT_RUNNING* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*VIDEO_STREAM_NOT_RUNNING* -171)
(intern "*OBJECT_NOT_FOUND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*OBJECT_NOT_FOUND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*OBJECT_NOT_FOUND* -172)
(intern "*MARKERS_NOT_FOUND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*MARKERS_NOT_FOUND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*MARKERS_NOT_FOUND* -173)
(intern "*ARM_COMMANDER_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*ARM_COMMANDER_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*ARM_COMMANDER_FAILURE* -220)
(intern "*GOAL_STILL_ACTIVE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*GOAL_STILL_ACTIVE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*GOAL_STILL_ACTIVE* -221)
(intern "*JOG_CONTROLLER_ENABLED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*JOG_CONTROLLER_ENABLED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*JOG_CONTROLLER_ENABLED* -222)
(intern "*CONTROLLER_PROBLEMS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CONTROLLER_PROBLEMS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CONTROLLER_PROBLEMS* -223)
(intern "*SHOULD_RESTART*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SHOULD_RESTART* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SHOULD_RESTART* -224)
(intern "*JOG_CONTROLLER_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*JOG_CONTROLLER_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*JOG_CONTROLLER_FAILURE* -225)
(intern "*PLAN_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PLAN_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PLAN_FAILED* -230)
(intern "*NO_PLAN_AVAILABLE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*NO_PLAN_AVAILABLE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*NO_PLAN_AVAILABLE* -231)
(intern "*INVERT_KINEMATICS_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*INVERT_KINEMATICS_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*INVERT_KINEMATICS_FAILURE* -232)
(intern "*TOOL_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TOOL_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TOOL_FAILURE* -251)
(intern "*TOOL_ID_INVALID*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TOOL_ID_INVALID* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TOOL_ID_INVALID* -252)
(intern "*TOOL_NOT_CONNECTED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TOOL_NOT_CONNECTED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TOOL_NOT_CONNECTED* -253)
(intern "*TOOL_ROS_INTERFACE_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TOOL_ROS_INTERFACE_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TOOL_ROS_INTERFACE_ERROR* -254)
(intern "*POSES_HANDLER_CREATION_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*POSES_HANDLER_CREATION_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*POSES_HANDLER_CREATION_FAILED* -300)
(intern "*POSES_HANDLER_REMOVAL_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*POSES_HANDLER_REMOVAL_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*POSES_HANDLER_REMOVAL_FAILED* -301)
(intern "*POSES_HANDLER_READ_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*POSES_HANDLER_READ_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*POSES_HANDLER_READ_FAILURE* -302)
(intern "*POSES_HANDLER_COMPUTE_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*POSES_HANDLER_COMPUTE_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*POSES_HANDLER_COMPUTE_FAILURE* -303)
(intern "*WORKSPACE_CREATION_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*WORKSPACE_CREATION_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*WORKSPACE_CREATION_FAILED* -308)
(intern "*PROGRAMS_MANAGER_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_FAILURE* -320)
(intern "*PROGRAMS_MANAGER_READ_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_READ_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_READ_FAILURE* -321)
(intern "*PROGRAMS_MANAGER_UNKNOWN_LANGUAGE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_UNKNOWN_LANGUAGE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_UNKNOWN_LANGUAGE* -325)
(intern "*PROGRAMS_MANAGER_NOT_RUNNABLE_LANGUAGE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_NOT_RUNNABLE_LANGUAGE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_NOT_RUNNABLE_LANGUAGE* -326)
(intern "*PROGRAMS_MANAGER_EXECUTION_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_EXECUTION_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_EXECUTION_FAILED* -327)
(intern "*PROGRAMS_MANAGER_STOPPING_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_STOPPING_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_STOPPING_FAILED* -328)
(intern "*PROGRAMS_MANAGER_AUTORUN_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_AUTORUN_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_AUTORUN_FAILURE* -329)
(intern "*PROGRAMS_MANAGER_WRITING_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_WRITING_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_WRITING_FAILURE* -330)
(intern "*PROGRAMS_MANAGER_FILE_ALREADY_EXISTS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_FILE_ALREADY_EXISTS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_FILE_ALREADY_EXISTS* -331)
(intern "*PROGRAMS_MANAGER_FILE_DOES_NOT_EXIST*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_FILE_DOES_NOT_EXIST* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_FILE_DOES_NOT_EXIST* -332)
(intern "*SERIAL_FILE_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SERIAL_FILE_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SERIAL_FILE_ERROR* -400)
(intern "*SERIAL_UNKNOWN_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SERIAL_UNKNOWN_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SERIAL_UNKNOWN_ERROR* -401)
(intern "*SYSTEM_API_CLIENT_UNKNOWN_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SYSTEM_API_CLIENT_UNKNOWN_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_UNKNOWN_ERROR* -440)
(intern "*SYSTEM_API_CLIENT_INVALID_ROBOT_NAME*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SYSTEM_API_CLIENT_INVALID_ROBOT_NAME* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_INVALID_ROBOT_NAME* -441)
(intern "*SYSTEM_API_CLIENT_REQUEST_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SYSTEM_API_CLIENT_REQUEST_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_REQUEST_FAILED* -442)
(defclass niryo_robot_msgs::CommandStatus
  :super ros::object
  :slots (_val ))

(defmethod niryo_robot_msgs::CommandStatus
  (:init
   (&key
    ((:val __val) 0)
    )
   (send-super :init)
   (setq _val (round __val))
   self)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; int32 _val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _val
       (write-long _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _val
     (setq _val (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get niryo_robot_msgs::CommandStatus :md5sum-) "63e61fe574932dd32043cfcda89ccbde")
(setf (get niryo_robot_msgs::CommandStatus :datatype-) "niryo_robot_msgs/CommandStatus")
(setf (get niryo_robot_msgs::CommandStatus :definition-)
      "int32 val

# overall behavior
int32 SUCCESS = 1
int32 CANCELLED = 2
int32 PREEMPTED = 3

int32 FAILURE = -1
int32 ABORTED = -3
int32 STOPPED = -4

int32 ROS_ERROR = -20

int32 FILE_ALREADY_EXISTS = -30

int32 UNKNOWN_COMMAND = -50
int32 NOT_IMPLEMENTED_COMMAND = -51
int32 INVALID_PARAMETERS = -52

# - Hardware
int32 HARDWARE_FAILURE = -110
int32 HARDWARE_NOT_OK = -111
int32 LEARNING_MODE_ON = -112
int32 CALIBRATION_NOT_DONE = -113
int32 DIGITAL_IO_PANEL_ERROR = -114
int32 LED_MANAGER_ERROR = -115
int32 BUTTON_ERROR = -116
int32 WRONG_MOTOR_TYPE = -117
int32 DXL_WRITE_ERROR = -118
int32 DXL_READ_ERROR = -119
int32 CAN_WRITE_ERROR = -120
int32 CAN_READ_ERROR = -121
int32 NO_CONVEYOR_LEFT = -122
int32 NO_CONVEYOR_FOUND = -123
int32 CONVEYOR_ID_INVALID = -124
int32 CALIBRATION_IN_PROGRESS = -125

# - Vision
int32 VIDEO_STREAM_ON_OFF_FAILURE = -170
int32 VIDEO_STREAM_NOT_RUNNING = -171
int32 OBJECT_NOT_FOUND = -172
int32 MARKERS_NOT_FOUND = -173

# - Commander
# Arm Commander
int32 ARM_COMMANDER_FAILURE = -220
int32 GOAL_STILL_ACTIVE = -221
int32 JOG_CONTROLLER_ENABLED = -222
int32 CONTROLLER_PROBLEMS = -223
int32 SHOULD_RESTART = -224
int32 JOG_CONTROLLER_FAILURE = -225

int32 PLAN_FAILED = -230
int32 NO_PLAN_AVAILABLE = -231
int32 INVERT_KINEMATICS_FAILURE = -232

# Tool Commander
int32 TOOL_FAILURE = -251
int32 TOOL_ID_INVALID = -252
int32 TOOL_NOT_CONNECTED = -253
int32 TOOL_ROS_INTERFACE_ERROR = -254

# - Pose Handlers
int32 POSES_HANDLER_CREATION_FAILED = -300
int32 POSES_HANDLER_REMOVAL_FAILED = -301
int32 POSES_HANDLER_READ_FAILURE = -302
int32 POSES_HANDLER_COMPUTE_FAILURE = -303

int32 WORKSPACE_CREATION_FAILED = -308

# - Programs Manager
int32 PROGRAMS_MANAGER_FAILURE = -320
int32 PROGRAMS_MANAGER_READ_FAILURE = -321
int32 PROGRAMS_MANAGER_UNKNOWN_LANGUAGE = -325
int32 PROGRAMS_MANAGER_NOT_RUNNABLE_LANGUAGE = -326
int32 PROGRAMS_MANAGER_EXECUTION_FAILED = -327
int32 PROGRAMS_MANAGER_STOPPING_FAILED = -328
int32 PROGRAMS_MANAGER_AUTORUN_FAILURE = -329
int32 PROGRAMS_MANAGER_WRITING_FAILURE = -330
int32 PROGRAMS_MANAGER_FILE_ALREADY_EXISTS = -331
int32 PROGRAMS_MANAGER_FILE_DOES_NOT_EXIST = -332


# - Serial
int32 SERIAL_FILE_ERROR = -400
int32 SERIAL_UNKNOWN_ERROR = -401


# - System Api Client
int32 SYSTEM_API_CLIENT_UNKNOWN_ERROR = -440
int32 SYSTEM_API_CLIENT_INVALID_ROBOT_NAME = -441
int32 SYSTEM_API_CLIENT_REQUEST_FAILED = -442

")



(provide :niryo_robot_msgs/CommandStatus "63e61fe574932dd32043cfcda89ccbde")


