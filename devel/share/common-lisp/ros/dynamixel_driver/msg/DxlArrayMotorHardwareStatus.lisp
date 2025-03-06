; Auto-generated. Do not edit!


(cl:in-package dynamixel_driver-msg)


;//! \htmlinclude DxlArrayMotorHardwareStatus.msg.html

(cl:defclass <DxlArrayMotorHardwareStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motors_hw_status
    :reader motors_hw_status
    :initarg :motors_hw_status
    :type (cl:vector dynamixel_driver-msg:DxlMotorHardwareStatus)
   :initform (cl:make-array 0 :element-type 'dynamixel_driver-msg:DxlMotorHardwareStatus :initial-element (cl:make-instance 'dynamixel_driver-msg:DxlMotorHardwareStatus))))
)

(cl:defclass DxlArrayMotorHardwareStatus (<DxlArrayMotorHardwareStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DxlArrayMotorHardwareStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DxlArrayMotorHardwareStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_driver-msg:<DxlArrayMotorHardwareStatus> is deprecated: use dynamixel_driver-msg:DxlArrayMotorHardwareStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DxlArrayMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_driver-msg:header-val is deprecated.  Use dynamixel_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motors_hw_status-val :lambda-list '(m))
(cl:defmethod motors_hw_status-val ((m <DxlArrayMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_driver-msg:motors_hw_status-val is deprecated.  Use dynamixel_driver-msg:motors_hw_status instead.")
  (motors_hw_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DxlArrayMotorHardwareStatus>) ostream)
  "Serializes a message object of type '<DxlArrayMotorHardwareStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motors_hw_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motors_hw_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DxlArrayMotorHardwareStatus>) istream)
  "Deserializes a message object of type '<DxlArrayMotorHardwareStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motors_hw_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motors_hw_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamixel_driver-msg:DxlMotorHardwareStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DxlArrayMotorHardwareStatus>)))
  "Returns string type for a message object of type '<DxlArrayMotorHardwareStatus>"
  "dynamixel_driver/DxlArrayMotorHardwareStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DxlArrayMotorHardwareStatus)))
  "Returns string type for a message object of type 'DxlArrayMotorHardwareStatus"
  "dynamixel_driver/DxlArrayMotorHardwareStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DxlArrayMotorHardwareStatus>)))
  "Returns md5sum for a message object of type '<DxlArrayMotorHardwareStatus>"
  "5f5602f390b032e1f3cb2909956c5381")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DxlArrayMotorHardwareStatus)))
  "Returns md5sum for a message object of type 'DxlArrayMotorHardwareStatus"
  "5f5602f390b032e1f3cb2909956c5381")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DxlArrayMotorHardwareStatus>)))
  "Returns full string definition for message of type '<DxlArrayMotorHardwareStatus>"
  (cl:format cl:nil "std_msgs/Header header~%dynamixel_driver/DxlMotorHardwareStatus[] motors_hw_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dynamixel_driver/DxlMotorHardwareStatus~%niryo_robot_msgs/MotorHeader motor_identity~%~%uint32 temperature~%float64 voltage~%uint32 error~%string error_msg~%~%================================================================================~%MSG: niryo_robot_msgs/MotorHeader~%uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DxlArrayMotorHardwareStatus)))
  "Returns full string definition for message of type 'DxlArrayMotorHardwareStatus"
  (cl:format cl:nil "std_msgs/Header header~%dynamixel_driver/DxlMotorHardwareStatus[] motors_hw_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dynamixel_driver/DxlMotorHardwareStatus~%niryo_robot_msgs/MotorHeader motor_identity~%~%uint32 temperature~%float64 voltage~%uint32 error~%string error_msg~%~%================================================================================~%MSG: niryo_robot_msgs/MotorHeader~%uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DxlArrayMotorHardwareStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motors_hw_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DxlArrayMotorHardwareStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DxlArrayMotorHardwareStatus
    (cl:cons ':header (header msg))
    (cl:cons ':motors_hw_status (motors_hw_status msg))
))
