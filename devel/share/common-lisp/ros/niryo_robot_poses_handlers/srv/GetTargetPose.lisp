; Auto-generated. Do not edit!


(cl:in-package niryo_robot_poses_handlers-srv)


;//! \htmlinclude GetTargetPose-request.msg.html

(cl:defclass <GetTargetPose-request> (roslisp-msg-protocol:ros-message)
  ((workspace
    :reader workspace
    :initarg :workspace
    :type cl:string
    :initform "")
   (height_offset
    :reader height_offset
    :initarg :height_offset
    :type cl:float
    :initform 0.0)
   (x_rel
    :reader x_rel
    :initarg :x_rel
    :type cl:float
    :initform 0.0)
   (y_rel
    :reader y_rel
    :initarg :y_rel
    :type cl:float
    :initform 0.0)
   (yaw_rel
    :reader yaw_rel
    :initarg :yaw_rel
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetTargetPose-request (<GetTargetPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTargetPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTargetPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<GetTargetPose-request> is deprecated: use niryo_robot_poses_handlers-srv:GetTargetPose-request instead.")))

(cl:ensure-generic-function 'workspace-val :lambda-list '(m))
(cl:defmethod workspace-val ((m <GetTargetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:workspace-val is deprecated.  Use niryo_robot_poses_handlers-srv:workspace instead.")
  (workspace m))

(cl:ensure-generic-function 'height_offset-val :lambda-list '(m))
(cl:defmethod height_offset-val ((m <GetTargetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:height_offset-val is deprecated.  Use niryo_robot_poses_handlers-srv:height_offset instead.")
  (height_offset m))

(cl:ensure-generic-function 'x_rel-val :lambda-list '(m))
(cl:defmethod x_rel-val ((m <GetTargetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:x_rel-val is deprecated.  Use niryo_robot_poses_handlers-srv:x_rel instead.")
  (x_rel m))

(cl:ensure-generic-function 'y_rel-val :lambda-list '(m))
(cl:defmethod y_rel-val ((m <GetTargetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:y_rel-val is deprecated.  Use niryo_robot_poses_handlers-srv:y_rel instead.")
  (y_rel m))

(cl:ensure-generic-function 'yaw_rel-val :lambda-list '(m))
(cl:defmethod yaw_rel-val ((m <GetTargetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:yaw_rel-val is deprecated.  Use niryo_robot_poses_handlers-srv:yaw_rel instead.")
  (yaw_rel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTargetPose-request>) ostream)
  "Serializes a message object of type '<GetTargetPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'workspace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'workspace))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_rel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_rel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTargetPose-request>) istream)
  "Deserializes a message object of type '<GetTargetPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'workspace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'workspace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_rel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_rel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTargetPose-request>)))
  "Returns string type for a service object of type '<GetTargetPose-request>"
  "niryo_robot_poses_handlers/GetTargetPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTargetPose-request)))
  "Returns string type for a service object of type 'GetTargetPose-request"
  "niryo_robot_poses_handlers/GetTargetPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTargetPose-request>)))
  "Returns md5sum for a message object of type '<GetTargetPose-request>"
  "96c8664367e4374b4e0555b7722ce454")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTargetPose-request)))
  "Returns md5sum for a message object of type 'GetTargetPose-request"
  "96c8664367e4374b4e0555b7722ce454")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTargetPose-request>)))
  "Returns full string definition for message of type '<GetTargetPose-request>"
  (cl:format cl:nil "string workspace~%float32 height_offset~%float32 x_rel~%float32 y_rel~%float32 yaw_rel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTargetPose-request)))
  "Returns full string definition for message of type 'GetTargetPose-request"
  (cl:format cl:nil "string workspace~%float32 height_offset~%float32 x_rel~%float32 y_rel~%float32 yaw_rel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTargetPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'workspace))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTargetPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTargetPose-request
    (cl:cons ':workspace (workspace msg))
    (cl:cons ':height_offset (height_offset msg))
    (cl:cons ':x_rel (x_rel msg))
    (cl:cons ':y_rel (y_rel msg))
    (cl:cons ':yaw_rel (yaw_rel msg))
))
;//! \htmlinclude GetTargetPose-response.msg.html

(cl:defclass <GetTargetPose-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (target_pose
    :reader target_pose
    :initarg :target_pose
    :type niryo_robot_msgs-msg:RobotState
    :initform (cl:make-instance 'niryo_robot_msgs-msg:RobotState)))
)

(cl:defclass GetTargetPose-response (<GetTargetPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTargetPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTargetPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<GetTargetPose-response> is deprecated: use niryo_robot_poses_handlers-srv:GetTargetPose-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetTargetPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:status-val is deprecated.  Use niryo_robot_poses_handlers-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetTargetPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:message-val is deprecated.  Use niryo_robot_poses_handlers-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <GetTargetPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:target_pose-val is deprecated.  Use niryo_robot_poses_handlers-srv:target_pose instead.")
  (target_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTargetPose-response>) ostream)
  "Serializes a message object of type '<GetTargetPose-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTargetPose-response>) istream)
  "Deserializes a message object of type '<GetTargetPose-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTargetPose-response>)))
  "Returns string type for a service object of type '<GetTargetPose-response>"
  "niryo_robot_poses_handlers/GetTargetPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTargetPose-response)))
  "Returns string type for a service object of type 'GetTargetPose-response"
  "niryo_robot_poses_handlers/GetTargetPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTargetPose-response>)))
  "Returns md5sum for a message object of type '<GetTargetPose-response>"
  "96c8664367e4374b4e0555b7722ce454")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTargetPose-response)))
  "Returns md5sum for a message object of type 'GetTargetPose-response"
  "96c8664367e4374b4e0555b7722ce454")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTargetPose-response>)))
  "Returns full string definition for message of type '<GetTargetPose-response>"
  (cl:format cl:nil "int32 status~%string message~%niryo_robot_msgs/RobotState target_pose~%~%~%================================================================================~%MSG: niryo_robot_msgs/RobotState~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTargetPose-response)))
  "Returns full string definition for message of type 'GetTargetPose-response"
  (cl:format cl:nil "int32 status~%string message~%niryo_robot_msgs/RobotState target_pose~%~%~%================================================================================~%MSG: niryo_robot_msgs/RobotState~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTargetPose-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTargetPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTargetPose-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':target_pose (target_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTargetPose)))
  'GetTargetPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTargetPose)))
  'GetTargetPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTargetPose)))
  "Returns string type for a service object of type '<GetTargetPose>"
  "niryo_robot_poses_handlers/GetTargetPose")