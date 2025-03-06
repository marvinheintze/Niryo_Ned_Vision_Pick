; Auto-generated. Do not edit!


(cl:in-package niryo_robot_tools_commander-msg)


;//! \htmlinclude ToolCommand.msg.html

(cl:defclass <ToolCommand> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:fixnum
    :initform 0)
   (tool_id
    :reader tool_id
    :initarg :tool_id
    :type cl:fixnum
    :initform 0)
   (gripper_close_speed
    :reader gripper_close_speed
    :initarg :gripper_close_speed
    :type cl:fixnum
    :initform 0)
   (gripper_open_speed
    :reader gripper_open_speed
    :initarg :gripper_open_speed
    :type cl:fixnum
    :initform 0)
   (activate
    :reader activate
    :initarg :activate
    :type cl:boolean
    :initform cl:nil)
   (gpio
    :reader gpio
    :initarg :gpio
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ToolCommand (<ToolCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_tools_commander-msg:<ToolCommand> is deprecated: use niryo_robot_tools_commander-msg:ToolCommand instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:cmd_type-val is deprecated.  Use niryo_robot_tools_commander-msg:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'tool_id-val :lambda-list '(m))
(cl:defmethod tool_id-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:tool_id-val is deprecated.  Use niryo_robot_tools_commander-msg:tool_id instead.")
  (tool_id m))

(cl:ensure-generic-function 'gripper_close_speed-val :lambda-list '(m))
(cl:defmethod gripper_close_speed-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:gripper_close_speed-val is deprecated.  Use niryo_robot_tools_commander-msg:gripper_close_speed instead.")
  (gripper_close_speed m))

(cl:ensure-generic-function 'gripper_open_speed-val :lambda-list '(m))
(cl:defmethod gripper_open_speed-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:gripper_open_speed-val is deprecated.  Use niryo_robot_tools_commander-msg:gripper_open_speed instead.")
  (gripper_open_speed m))

(cl:ensure-generic-function 'activate-val :lambda-list '(m))
(cl:defmethod activate-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:activate-val is deprecated.  Use niryo_robot_tools_commander-msg:activate instead.")
  (activate m))

(cl:ensure-generic-function 'gpio-val :lambda-list '(m))
(cl:defmethod gpio-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:gpio-val is deprecated.  Use niryo_robot_tools_commander-msg:gpio instead.")
  (gpio m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ToolCommand>)))
    "Constants for message type '<ToolCommand>"
  '((:OPEN_GRIPPER . 1)
    (:CLOSE_GRIPPER . 2)
    (:PULL_AIR_VACUUM_PUMP . 10)
    (:PUSH_AIR_VACUUM_PUMP . 11)
    (:SETUP_DIGITAL_IO . 20)
    (:ACTIVATE_DIGITAL_IO . 21)
    (:DEACTIVATE_DIGITAL_IO . 22))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ToolCommand)))
    "Constants for message type 'ToolCommand"
  '((:OPEN_GRIPPER . 1)
    (:CLOSE_GRIPPER . 2)
    (:PULL_AIR_VACUUM_PUMP . 10)
    (:PUSH_AIR_VACUUM_PUMP . 11)
    (:SETUP_DIGITAL_IO . 20)
    (:ACTIVATE_DIGITAL_IO . 21)
    (:DEACTIVATE_DIGITAL_IO . 22))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolCommand>) ostream)
  "Serializes a message object of type '<ToolCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tool_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripper_close_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gripper_close_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripper_open_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gripper_open_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activate) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gpio)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolCommand>) istream)
  "Deserializes a message object of type '<ToolCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tool_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripper_close_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gripper_close_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripper_open_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gripper_open_speed)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'activate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gpio) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolCommand>)))
  "Returns string type for a message object of type '<ToolCommand>"
  "niryo_robot_tools_commander/ToolCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolCommand)))
  "Returns string type for a message object of type 'ToolCommand"
  "niryo_robot_tools_commander/ToolCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolCommand>)))
  "Returns md5sum for a message object of type '<ToolCommand>"
  "1f70245697cb6e31e028474766912a0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolCommand)))
  "Returns md5sum for a message object of type 'ToolCommand"
  "1f70245697cb6e31e028474766912a0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolCommand>)))
  "Returns full string definition for message of type '<ToolCommand>"
  (cl:format cl:nil "# Gripper~%uint8 OPEN_GRIPPER = 1~%uint8 CLOSE_GRIPPER = 2~%~%# Vacuump pump~%uint8 PULL_AIR_VACUUM_PUMP = 10~%uint8 PUSH_AIR_VACUUM_PUMP = 11~%~%# Tools controlled by digital I/Os~%uint8 SETUP_DIGITAL_IO = 20~%uint8 ACTIVATE_DIGITAL_IO = 21~%uint8 DEACTIVATE_DIGITAL_IO = 22~%~%uint8 cmd_type~%~%# Gripper1= 11, Gripper2=12, Gripper3=13, VaccuumPump=31, Electromagnet=30~%uint8 tool_id~%~%# if gripper close~%uint16 gripper_close_speed~%~%# if gripper open~%uint16 gripper_open_speed~%~%# if vacuum pump or electromagnet grove~%bool activate~%~%# if tool is set by digital outputs (electromagnet)~%# if gpio<0 get value in memory~%int8 gpio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolCommand)))
  "Returns full string definition for message of type 'ToolCommand"
  (cl:format cl:nil "# Gripper~%uint8 OPEN_GRIPPER = 1~%uint8 CLOSE_GRIPPER = 2~%~%# Vacuump pump~%uint8 PULL_AIR_VACUUM_PUMP = 10~%uint8 PUSH_AIR_VACUUM_PUMP = 11~%~%# Tools controlled by digital I/Os~%uint8 SETUP_DIGITAL_IO = 20~%uint8 ACTIVATE_DIGITAL_IO = 21~%uint8 DEACTIVATE_DIGITAL_IO = 22~%~%uint8 cmd_type~%~%# Gripper1= 11, Gripper2=12, Gripper3=13, VaccuumPump=31, Electromagnet=30~%uint8 tool_id~%~%# if gripper close~%uint16 gripper_close_speed~%~%# if gripper open~%uint16 gripper_open_speed~%~%# if vacuum pump or electromagnet grove~%bool activate~%~%# if tool is set by digital outputs (electromagnet)~%# if gpio<0 get value in memory~%int8 gpio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolCommand>))
  (cl:+ 0
     1
     1
     2
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolCommand
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':tool_id (tool_id msg))
    (cl:cons ':gripper_close_speed (gripper_close_speed msg))
    (cl:cons ':gripper_open_speed (gripper_open_speed msg))
    (cl:cons ':activate (activate msg))
    (cl:cons ':gpio (gpio msg))
))
