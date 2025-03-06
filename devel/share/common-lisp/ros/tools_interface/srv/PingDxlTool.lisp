; Auto-generated. Do not edit!


(cl:in-package tools_interface-srv)


;//! \htmlinclude PingDxlTool-request.msg.html

(cl:defclass <PingDxlTool-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PingDxlTool-request (<PingDxlTool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PingDxlTool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PingDxlTool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tools_interface-srv:<PingDxlTool-request> is deprecated: use tools_interface-srv:PingDxlTool-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PingDxlTool-request>) ostream)
  "Serializes a message object of type '<PingDxlTool-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PingDxlTool-request>) istream)
  "Deserializes a message object of type '<PingDxlTool-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PingDxlTool-request>)))
  "Returns string type for a service object of type '<PingDxlTool-request>"
  "tools_interface/PingDxlToolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingDxlTool-request)))
  "Returns string type for a service object of type 'PingDxlTool-request"
  "tools_interface/PingDxlToolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PingDxlTool-request>)))
  "Returns md5sum for a message object of type '<PingDxlTool-request>"
  "8744796096faed60cc6cc1a7e157e137")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PingDxlTool-request)))
  "Returns md5sum for a message object of type 'PingDxlTool-request"
  "8744796096faed60cc6cc1a7e157e137")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PingDxlTool-request>)))
  "Returns full string definition for message of type '<PingDxlTool-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PingDxlTool-request)))
  "Returns full string definition for message of type 'PingDxlTool-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PingDxlTool-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PingDxlTool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PingDxlTool-request
))
;//! \htmlinclude PingDxlTool-response.msg.html

(cl:defclass <PingDxlTool-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PingDxlTool-response (<PingDxlTool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PingDxlTool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PingDxlTool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tools_interface-srv:<PingDxlTool-response> is deprecated: use tools_interface-srv:PingDxlTool-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PingDxlTool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-srv:state-val is deprecated.  Use tools_interface-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PingDxlTool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-srv:id-val is deprecated.  Use tools_interface-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PingDxlTool-response>) ostream)
  "Serializes a message object of type '<PingDxlTool-response>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PingDxlTool-response>) istream)
  "Deserializes a message object of type '<PingDxlTool-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PingDxlTool-response>)))
  "Returns string type for a service object of type '<PingDxlTool-response>"
  "tools_interface/PingDxlToolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingDxlTool-response)))
  "Returns string type for a service object of type 'PingDxlTool-response"
  "tools_interface/PingDxlToolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PingDxlTool-response>)))
  "Returns md5sum for a message object of type '<PingDxlTool-response>"
  "8744796096faed60cc6cc1a7e157e137")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PingDxlTool-response)))
  "Returns md5sum for a message object of type 'PingDxlTool-response"
  "8744796096faed60cc6cc1a7e157e137")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PingDxlTool-response>)))
  "Returns full string definition for message of type '<PingDxlTool-response>"
  (cl:format cl:nil "int32 state~%uint8 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PingDxlTool-response)))
  "Returns full string definition for message of type 'PingDxlTool-response"
  (cl:format cl:nil "int32 state~%uint8 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PingDxlTool-response>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PingDxlTool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PingDxlTool-response
    (cl:cons ':state (state msg))
    (cl:cons ':id (id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PingDxlTool)))
  'PingDxlTool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PingDxlTool)))
  'PingDxlTool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingDxlTool)))
  "Returns string type for a service object of type '<PingDxlTool>"
  "tools_interface/PingDxlTool")