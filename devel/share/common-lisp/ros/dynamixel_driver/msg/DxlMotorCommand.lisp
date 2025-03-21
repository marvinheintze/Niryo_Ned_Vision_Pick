; Auto-generated. Do not edit!


(cl:in-package dynamixel_driver-msg)


;//! \htmlinclude DxlMotorCommand.msg.html

(cl:defclass <DxlMotorCommand> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:fixnum
    :initform 0)
   (motors_id
    :reader motors_id
    :initarg :motors_id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (params
    :reader params
    :initarg :params
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass DxlMotorCommand (<DxlMotorCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DxlMotorCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DxlMotorCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_driver-msg:<DxlMotorCommand> is deprecated: use dynamixel_driver-msg:DxlMotorCommand instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <DxlMotorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_driver-msg:cmd_type-val is deprecated.  Use dynamixel_driver-msg:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'motors_id-val :lambda-list '(m))
(cl:defmethod motors_id-val ((m <DxlMotorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_driver-msg:motors_id-val is deprecated.  Use dynamixel_driver-msg:motors_id instead.")
  (motors_id m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <DxlMotorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_driver-msg:params-val is deprecated.  Use dynamixel_driver-msg:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DxlMotorCommand>)))
    "Constants for message type '<DxlMotorCommand>"
  '((:CMD_TYPE_POSITION . 1)
    (:CMD_TYPE_VELOCITY . 2)
    (:CMD_TYPE_EFFORT . 3)
    (:CMD_TYPE_TORQUE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DxlMotorCommand)))
    "Constants for message type 'DxlMotorCommand"
  '((:CMD_TYPE_POSITION . 1)
    (:CMD_TYPE_VELOCITY . 2)
    (:CMD_TYPE_EFFORT . 3)
    (:CMD_TYPE_TORQUE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DxlMotorCommand>) ostream)
  "Serializes a message object of type '<DxlMotorCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motors_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'motors_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DxlMotorCommand>) istream)
  "Deserializes a message object of type '<DxlMotorCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motors_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motors_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DxlMotorCommand>)))
  "Returns string type for a message object of type '<DxlMotorCommand>"
  "dynamixel_driver/DxlMotorCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DxlMotorCommand)))
  "Returns string type for a message object of type 'DxlMotorCommand"
  "dynamixel_driver/DxlMotorCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DxlMotorCommand>)))
  "Returns md5sum for a message object of type '<DxlMotorCommand>"
  "1fd0ce1ecaa67db6efa4b24d2606e47b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DxlMotorCommand)))
  "Returns md5sum for a message object of type 'DxlMotorCommand"
  "1fd0ce1ecaa67db6efa4b24d2606e47b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DxlMotorCommand>)))
  "Returns full string definition for message of type '<DxlMotorCommand>"
  (cl:format cl:nil "uint8 cmd_type~%uint8 CMD_TYPE_POSITION=1~%uint8 CMD_TYPE_VELOCITY=2~%uint8 CMD_TYPE_EFFORT=3~%uint8 CMD_TYPE_TORQUE=4~%~%uint8[] motors_id~%uint32[] params~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DxlMotorCommand)))
  "Returns full string definition for message of type 'DxlMotorCommand"
  (cl:format cl:nil "uint8 cmd_type~%uint8 CMD_TYPE_POSITION=1~%uint8 CMD_TYPE_VELOCITY=2~%uint8 CMD_TYPE_EFFORT=3~%uint8 CMD_TYPE_TORQUE=4~%~%uint8[] motors_id~%uint32[] params~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DxlMotorCommand>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motors_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DxlMotorCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'DxlMotorCommand
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':motors_id (motors_id msg))
    (cl:cons ':params (params msg))
))
