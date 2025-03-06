;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::GetTrajectory)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'GetTrajectory (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRAJECTORY")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRAJECTORY"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRAJECTORYREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRAJECTORYREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRAJECTORYRESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRAJECTORYRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass niryo_robot_poses_handlers::GetTrajectoryRequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_robot_poses_handlers::GetTrajectoryRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::GetTrajectoryResponse
  :super ros::object
  :slots (_status _message _list_poses ))

(defmethod niryo_robot_poses_handlers::GetTrajectoryResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:list_poses __list_poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _list_poses __list_poses)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:list_poses
   (&rest __list_poses)
   (if (keywordp (car __list_poses))
       (send* _list_poses __list_poses)
     (progn
       (if __list_poses (setq _list_poses (car __list_poses)))
       _list_poses)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; geometry_msgs/Pose[] _list_poses
    (apply #'+ (send-all _list_poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; geometry_msgs/Pose[] _list_poses
     (write-long (length _list_poses) s)
     (dolist (elem _list_poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose[] _list_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _list_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::GetTrajectory
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::GetTrajectory :md5sum-) "e074d515a67a586d5cdf2f0af35104eb")
(setf (get niryo_robot_poses_handlers::GetTrajectory :datatype-) "niryo_robot_poses_handlers/GetTrajectory")
(setf (get niryo_robot_poses_handlers::GetTrajectory :request) niryo_robot_poses_handlers::GetTrajectoryRequest)
(setf (get niryo_robot_poses_handlers::GetTrajectory :response) niryo_robot_poses_handlers::GetTrajectoryResponse)

(defmethod niryo_robot_poses_handlers::GetTrajectoryRequest
  (:response () (instance niryo_robot_poses_handlers::GetTrajectoryResponse :init)))

(setf (get niryo_robot_poses_handlers::GetTrajectoryRequest :md5sum-) "e074d515a67a586d5cdf2f0af35104eb")
(setf (get niryo_robot_poses_handlers::GetTrajectoryRequest :datatype-) "niryo_robot_poses_handlers/GetTrajectoryRequest")
(setf (get niryo_robot_poses_handlers::GetTrajectoryRequest :definition-)
      "string name
---
int32 status
string message
geometry_msgs/Pose[] list_poses


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
")

(setf (get niryo_robot_poses_handlers::GetTrajectoryResponse :md5sum-) "e074d515a67a586d5cdf2f0af35104eb")
(setf (get niryo_robot_poses_handlers::GetTrajectoryResponse :datatype-) "niryo_robot_poses_handlers/GetTrajectoryResponse")
(setf (get niryo_robot_poses_handlers::GetTrajectoryResponse :definition-)
      "string name
---
int32 status
string message
geometry_msgs/Pose[] list_poses


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
")



(provide :niryo_robot_poses_handlers/GetTrajectory "e074d515a67a586d5cdf2f0af35104eb")


