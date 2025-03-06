; Auto-generated. Do not edit!


(cl:in-package niryo_robot_serial_number-srv)


;//! \htmlinclude GetSerial-request.msg.html

(cl:defclass <GetSerial-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetSerial-request (<GetSerial-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSerial-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSerial-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_serial_number-srv:<GetSerial-request> is deprecated: use niryo_robot_serial_number-srv:GetSerial-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSerial-request>) ostream)
  "Serializes a message object of type '<GetSerial-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSerial-request>) istream)
  "Deserializes a message object of type '<GetSerial-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSerial-request>)))
  "Returns string type for a service object of type '<GetSerial-request>"
  "niryo_robot_serial_number/GetSerialRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSerial-request)))
  "Returns string type for a service object of type 'GetSerial-request"
  "niryo_robot_serial_number/GetSerialRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSerial-request>)))
  "Returns md5sum for a message object of type '<GetSerial-request>"
  "09803e1f4a40b6f2352e453a75b02d0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSerial-request)))
  "Returns md5sum for a message object of type 'GetSerial-request"
  "09803e1f4a40b6f2352e453a75b02d0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSerial-request>)))
  "Returns full string definition for message of type '<GetSerial-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSerial-request)))
  "Returns full string definition for message of type 'GetSerial-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSerial-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSerial-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSerial-request
))
;//! \htmlinclude GetSerial-response.msg.html

(cl:defclass <GetSerial-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass GetSerial-response (<GetSerial-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSerial-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSerial-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_serial_number-srv:<GetSerial-response> is deprecated: use niryo_robot_serial_number-srv:GetSerial-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetSerial-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_serial_number-srv:status-val is deprecated.  Use niryo_robot_serial_number-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetSerial-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_serial_number-srv:message-val is deprecated.  Use niryo_robot_serial_number-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSerial-response>) ostream)
  "Serializes a message object of type '<GetSerial-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSerial-response>) istream)
  "Deserializes a message object of type '<GetSerial-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSerial-response>)))
  "Returns string type for a service object of type '<GetSerial-response>"
  "niryo_robot_serial_number/GetSerialResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSerial-response)))
  "Returns string type for a service object of type 'GetSerial-response"
  "niryo_robot_serial_number/GetSerialResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSerial-response>)))
  "Returns md5sum for a message object of type '<GetSerial-response>"
  "09803e1f4a40b6f2352e453a75b02d0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSerial-response)))
  "Returns md5sum for a message object of type 'GetSerial-response"
  "09803e1f4a40b6f2352e453a75b02d0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSerial-response>)))
  "Returns full string definition for message of type '<GetSerial-response>"
  (cl:format cl:nil "int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSerial-response)))
  "Returns full string definition for message of type 'GetSerial-response"
  (cl:format cl:nil "int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSerial-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSerial-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSerial-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSerial)))
  'GetSerial-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSerial)))
  'GetSerial-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSerial)))
  "Returns string type for a service object of type '<GetSerial>"
  "niryo_robot_serial_number/GetSerial")