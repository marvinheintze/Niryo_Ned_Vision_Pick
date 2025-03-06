;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_arm_commander::GetFK)
  (if (not (find-package "NIRYO_ROBOT_ARM_COMMANDER"))
    (make-package "NIRYO_ROBOT_ARM_COMMANDER"))
  (shadow 'GetFK (find-package "NIRYO_ROBOT_ARM_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::GETFK")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::GETFK"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::GETFKREQUEST")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::GETFKREQUEST"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::GETFKRESPONSE")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::GETFKRESPONSE"))

(in-package "ROS")



(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))


(defclass niryo_robot_arm_commander::GetFKRequest
  :super ros::object
  :slots (_joints ))

(defmethod niryo_robot_arm_commander::GetFKRequest
  (:init
   (&key
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joints __joints)
   self)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:serialization-length
   ()
   (+
    ;; float32[] _joints
    (* 4    (length _joints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass niryo_robot_arm_commander::GetFKResponse
  :super ros::object
  :slots (_pose ))

(defmethod niryo_robot_arm_commander::GetFKResponse
  (:init
   (&key
    ((:pose __pose) (instance niryo_robot_msgs::RobotState :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; niryo_robot_msgs/RobotState _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_msgs/RobotState _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_msgs/RobotState _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_arm_commander::GetFK
  :super ros::object
  :slots ())

(setf (get niryo_robot_arm_commander::GetFK :md5sum-) "53a46c03441f4634714037ac8abccd63")
(setf (get niryo_robot_arm_commander::GetFK :datatype-) "niryo_robot_arm_commander/GetFK")
(setf (get niryo_robot_arm_commander::GetFK :request) niryo_robot_arm_commander::GetFKRequest)
(setf (get niryo_robot_arm_commander::GetFK :response) niryo_robot_arm_commander::GetFKResponse)

(defmethod niryo_robot_arm_commander::GetFKRequest
  (:response () (instance niryo_robot_arm_commander::GetFKResponse :init)))

(setf (get niryo_robot_arm_commander::GetFKRequest :md5sum-) "53a46c03441f4634714037ac8abccd63")
(setf (get niryo_robot_arm_commander::GetFKRequest :datatype-) "niryo_robot_arm_commander/GetFKRequest")
(setf (get niryo_robot_arm_commander::GetFKRequest :definition-)
      "float32[] joints
---
niryo_robot_msgs/RobotState pose


================================================================================
MSG: niryo_robot_msgs/RobotState
geometry_msgs/Point position
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: niryo_robot_msgs/RPY
# roll, pitch and yaw

float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get niryo_robot_arm_commander::GetFKResponse :md5sum-) "53a46c03441f4634714037ac8abccd63")
(setf (get niryo_robot_arm_commander::GetFKResponse :datatype-) "niryo_robot_arm_commander/GetFKResponse")
(setf (get niryo_robot_arm_commander::GetFKResponse :definition-)
      "float32[] joints
---
niryo_robot_msgs/RobotState pose


================================================================================
MSG: niryo_robot_msgs/RobotState
geometry_msgs/Point position
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: niryo_robot_msgs/RPY
# roll, pitch and yaw

float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :niryo_robot_arm_commander/GetFK "53a46c03441f4634714037ac8abccd63")


