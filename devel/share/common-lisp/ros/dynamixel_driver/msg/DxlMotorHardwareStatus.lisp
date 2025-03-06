; Auto-generated. Do not edit!


(cl:in-package dynamixel_driver-msg)


;//! \htmlinclude DxlMotorHardwareStatus.msg.html

(cl:defclass <DxlMotorHardwareStatus> (roslisp-msg-protocol:ros-message)
  ((motor_identity
    :reader motor_identity
    :initarg :motor_identity
    :type niryo_robot_msgs-msg:MotorHeader
    :initform (cl:make-instance 'niryo_robot_msgs-msg:MotorHeader))
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:integer
    :initform 0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (error
    :reader error
    :initarg :error
    :type cl:integer
    :initform 0)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform ""))
)

(cl:defclass DxlMotorHardwareStatus (<DxlMotorHardwareStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DxlMotorHardwareStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DxlMotorHardwareStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_driver-msg:<DxlMotorHardwareStatus> is deprecated: use dynamixel_driver-msg:DxlMotorHardwareStatus instead.")))

(cl:ensure-generic-function 'motor_identity-val :lambda-list '(m))
(cl:defmethod motor_identity-val ((m <DxlMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_driver-msg:motor_identity-val is deprecated.  Use dynamixel_driver-msg:motor_identity instead.")
  (motor_identity m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <DxlMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_driver-msg:temperature-val is deprecated.  Use dynamixel_driver-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <DxlMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_driver-msg:voltage-val is deprecated.  Use dynamixel_driver-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <DxlMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_driver-msg:error-val is deprecated.  Use dynamixel_driver-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <DxlMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_driver-msg:error_msg-val is deprecated.  Use dynamixel_driver-msg:error_msg instead.")
  (error_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DxlMotorHardwareStatus>) ostream)
  "Serializes a message object of type '<DxlMotorHardwareStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor_identity) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'temperature)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DxlMotorHardwareStatus>) istream)
  "Deserializes a message object of type '<DxlMotorHardwareStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor_identity) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DxlMotorHardwareStatus>)))
  "Returns string type for a message object of type '<DxlMotorHardwareStatus>"
  "dynamixel_driver/DxlMotorHardwareStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DxlMotorHardwareStatus)))
  "Returns string type for a message object of type 'DxlMotorHardwareStatus"
  "dynamixel_driver/DxlMotorHardwareStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DxlMotorHardwareStatus>)))
  "Returns md5sum for a message object of type '<DxlMotorHardwareStatus>"
  "aa4311819f2846ae7b0f01fb11479f2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DxlMotorHardwareStatus)))
  "Returns md5sum for a message object of type 'DxlMotorHardwareStatus"
  "aa4311819f2846ae7b0f01fb11479f2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DxlMotorHardwareStatus>)))
  "Returns full string definition for message of type '<DxlMotorHardwareStatus>"
  (cl:format cl:nil "niryo_robot_msgs/MotorHeader motor_identity~%~%uint32 temperature~%float64 voltage~%uint32 error~%string error_msg~%~%================================================================================~%MSG: niryo_robot_msgs/MotorHeader~%uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DxlMotorHardwareStatus)))
  "Returns full string definition for message of type 'DxlMotorHardwareStatus"
  (cl:format cl:nil "niryo_robot_msgs/MotorHeader motor_identity~%~%uint32 temperature~%float64 voltage~%uint32 error~%string error_msg~%~%================================================================================~%MSG: niryo_robot_msgs/MotorHeader~%uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DxlMotorHardwareStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor_identity))
     4
     8
     4
     4 (cl:length (cl:slot-value msg 'error_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DxlMotorHardwareStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DxlMotorHardwareStatus
    (cl:cons ':motor_identity (motor_identity msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':error (error msg))
    (cl:cons ':error_msg (error_msg msg))
))
