;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::ManageTrajectory)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'ManageTrajectory (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGETRAJECTORY")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGETRAJECTORY"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGETRAJECTORYREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGETRAJECTORYREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGETRAJECTORYRESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGETRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(intern "*SAVE*" (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGETRAJECTORYREQUEST"))
(shadow '*SAVE* (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGETRAJECTORYREQUEST"))
(defconstant niryo_robot_poses_handlers::ManageTrajectoryRequest::*SAVE* 1)
(intern "*DELETE*" (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGETRAJECTORYREQUEST"))
(shadow '*DELETE* (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGETRAJECTORYREQUEST"))
(defconstant niryo_robot_poses_handlers::ManageTrajectoryRequest::*DELETE* -1)
(defclass niryo_robot_poses_handlers::ManageTrajectoryRequest
  :super ros::object
  :slots (_cmd _name _description _poses ))

(defmethod niryo_robot_poses_handlers::ManageTrajectoryRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:name __name) "")
    ((:description __description) "")
    ((:poses __poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _poses __poses)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; int32 _cmd
    4
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::ManageTrajectoryResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_poses_handlers::ManageTrajectoryResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::ManageTrajectory
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::ManageTrajectory :md5sum-) "1546ed78ca405f254ae39431a0854a69")
(setf (get niryo_robot_poses_handlers::ManageTrajectory :datatype-) "niryo_robot_poses_handlers/ManageTrajectory")
(setf (get niryo_robot_poses_handlers::ManageTrajectory :request) niryo_robot_poses_handlers::ManageTrajectoryRequest)
(setf (get niryo_robot_poses_handlers::ManageTrajectory :response) niryo_robot_poses_handlers::ManageTrajectoryResponse)

(defmethod niryo_robot_poses_handlers::ManageTrajectoryRequest
  (:response () (instance niryo_robot_poses_handlers::ManageTrajectoryResponse :init)))

(setf (get niryo_robot_poses_handlers::ManageTrajectoryRequest :md5sum-) "1546ed78ca405f254ae39431a0854a69")
(setf (get niryo_robot_poses_handlers::ManageTrajectoryRequest :datatype-) "niryo_robot_poses_handlers/ManageTrajectoryRequest")
(setf (get niryo_robot_poses_handlers::ManageTrajectoryRequest :definition-)
      "int32 cmd
int32 SAVE = 1
int32 DELETE = -1

string name
string description

geometry_msgs/Pose[] poses

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 status
string message


")

(setf (get niryo_robot_poses_handlers::ManageTrajectoryResponse :md5sum-) "1546ed78ca405f254ae39431a0854a69")
(setf (get niryo_robot_poses_handlers::ManageTrajectoryResponse :datatype-) "niryo_robot_poses_handlers/ManageTrajectoryResponse")
(setf (get niryo_robot_poses_handlers::ManageTrajectoryResponse :definition-)
      "int32 cmd
int32 SAVE = 1
int32 DELETE = -1

string name
string description

geometry_msgs/Pose[] poses

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 status
string message


")



(provide :niryo_robot_poses_handlers/ManageTrajectory "1546ed78ca405f254ae39431a0854a69")


