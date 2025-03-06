;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_tools_commander::ToolCommand)
  (if (not (find-package "NIRYO_ROBOT_TOOLS_COMMANDER"))
    (make-package "NIRYO_ROBOT_TOOLS_COMMANDER"))
  (shadow 'ToolCommand (find-package "NIRYO_ROBOT_TOOLS_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND")
  (make-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ToolCommand.msg.html


(intern "*OPEN_GRIPPER*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*OPEN_GRIPPER* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*OPEN_GRIPPER* 1)
(intern "*CLOSE_GRIPPER*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*CLOSE_GRIPPER* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*CLOSE_GRIPPER* 2)
(intern "*PULL_AIR_VACUUM_PUMP*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*PULL_AIR_VACUUM_PUMP* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*PULL_AIR_VACUUM_PUMP* 10)
(intern "*PUSH_AIR_VACUUM_PUMP*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*PUSH_AIR_VACUUM_PUMP* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*PUSH_AIR_VACUUM_PUMP* 11)
(intern "*SETUP_DIGITAL_IO*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*SETUP_DIGITAL_IO* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*SETUP_DIGITAL_IO* 20)
(intern "*ACTIVATE_DIGITAL_IO*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*ACTIVATE_DIGITAL_IO* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*ACTIVATE_DIGITAL_IO* 21)
(intern "*DEACTIVATE_DIGITAL_IO*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*DEACTIVATE_DIGITAL_IO* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*DEACTIVATE_DIGITAL_IO* 22)
(defclass niryo_robot_tools_commander::ToolCommand
  :super ros::object
  :slots (_cmd_type _tool_id _gripper_close_speed _gripper_open_speed _activate _gpio ))

(defmethod niryo_robot_tools_commander::ToolCommand
  (:init
   (&key
    ((:cmd_type __cmd_type) 0)
    ((:tool_id __tool_id) 0)
    ((:gripper_close_speed __gripper_close_speed) 0)
    ((:gripper_open_speed __gripper_open_speed) 0)
    ((:activate __activate) nil)
    ((:gpio __gpio) 0)
    )
   (send-super :init)
   (setq _cmd_type (round __cmd_type))
   (setq _tool_id (round __tool_id))
   (setq _gripper_close_speed (round __gripper_close_speed))
   (setq _gripper_open_speed (round __gripper_open_speed))
   (setq _activate __activate)
   (setq _gpio (round __gpio))
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:tool_id
   (&optional __tool_id)
   (if __tool_id (setq _tool_id __tool_id)) _tool_id)
  (:gripper_close_speed
   (&optional __gripper_close_speed)
   (if __gripper_close_speed (setq _gripper_close_speed __gripper_close_speed)) _gripper_close_speed)
  (:gripper_open_speed
   (&optional __gripper_open_speed)
   (if __gripper_open_speed (setq _gripper_open_speed __gripper_open_speed)) _gripper_open_speed)
  (:activate
   (&optional __activate)
   (if __activate (setq _activate __activate)) _activate)
  (:gpio
   (&optional __gpio)
   (if __gpio (setq _gpio __gpio)) _gpio)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd_type
    1
    ;; uint8 _tool_id
    1
    ;; uint16 _gripper_close_speed
    2
    ;; uint16 _gripper_open_speed
    2
    ;; bool _activate
    1
    ;; int8 _gpio
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd_type
       (write-byte _cmd_type s)
     ;; uint8 _tool_id
       (write-byte _tool_id s)
     ;; uint16 _gripper_close_speed
       (write-word _gripper_close_speed s)
     ;; uint16 _gripper_open_speed
       (write-word _gripper_open_speed s)
     ;; bool _activate
       (if _activate (write-byte -1 s) (write-byte 0 s))
     ;; int8 _gpio
       (write-byte _gpio s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _tool_id
     (setq _tool_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _gripper_close_speed
     (setq _gripper_close_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _gripper_open_speed
     (setq _gripper_open_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _activate
     (setq _activate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _gpio
     (setq _gpio (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gpio 127) (setq _gpio (- _gpio 256)))
   ;;
   self)
  )

(setf (get niryo_robot_tools_commander::ToolCommand :md5sum-) "1f70245697cb6e31e028474766912a0e")
(setf (get niryo_robot_tools_commander::ToolCommand :datatype-) "niryo_robot_tools_commander/ToolCommand")
(setf (get niryo_robot_tools_commander::ToolCommand :definition-)
      "# Gripper
uint8 OPEN_GRIPPER = 1
uint8 CLOSE_GRIPPER = 2

# Vacuump pump
uint8 PULL_AIR_VACUUM_PUMP = 10
uint8 PUSH_AIR_VACUUM_PUMP = 11

# Tools controlled by digital I/Os
uint8 SETUP_DIGITAL_IO = 20
uint8 ACTIVATE_DIGITAL_IO = 21
uint8 DEACTIVATE_DIGITAL_IO = 22

uint8 cmd_type

# Gripper1= 11, Gripper2=12, Gripper3=13, VaccuumPump=31, Electromagnet=30
uint8 tool_id

# if gripper close
uint16 gripper_close_speed

# if gripper open
uint16 gripper_open_speed

# if vacuum pump or electromagnet grove
bool activate

# if tool is set by digital outputs (electromagnet)
# if gpio<0 get value in memory
int8 gpio

")



(provide :niryo_robot_tools_commander/ToolCommand "1f70245697cb6e31e028474766912a0e")


