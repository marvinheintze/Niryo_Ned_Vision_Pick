;; Auto-generated. Do not edit!


(when (boundp 'stepper_driver::StepperArrayMotorHardwareStatus)
  (if (not (find-package "STEPPER_DRIVER"))
    (make-package "STEPPER_DRIVER"))
  (shadow 'StepperArrayMotorHardwareStatus (find-package "STEPPER_DRIVER")))
(unless (find-package "STEPPER_DRIVER::STEPPERARRAYMOTORHARDWARESTATUS")
  (make-package "STEPPER_DRIVER::STEPPERARRAYMOTORHARDWARESTATUS"))

(in-package "ROS")
;;//! \htmlinclude StepperArrayMotorHardwareStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stepper_driver::StepperArrayMotorHardwareStatus
  :super ros::object
  :slots (_header _motors_hw_status ))

(defmethod stepper_driver::StepperArrayMotorHardwareStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motors_hw_status __motors_hw_status) (let (r) (dotimes (i 0) (push (instance stepper_driver::StepperMotorHardwareStatus :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _motors_hw_status __motors_hw_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motors_hw_status
   (&rest __motors_hw_status)
   (if (keywordp (car __motors_hw_status))
       (send* _motors_hw_status __motors_hw_status)
     (progn
       (if __motors_hw_status (setq _motors_hw_status (car __motors_hw_status)))
       _motors_hw_status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; stepper_driver/StepperMotorHardwareStatus[] _motors_hw_status
    (apply #'+ (send-all _motors_hw_status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; stepper_driver/StepperMotorHardwareStatus[] _motors_hw_status
     (write-long (length _motors_hw_status) s)
     (dolist (elem _motors_hw_status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; stepper_driver/StepperMotorHardwareStatus[] _motors_hw_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motors_hw_status (let (r) (dotimes (i n) (push (instance stepper_driver::StepperMotorHardwareStatus :init) r)) r))
     (dolist (elem- _motors_hw_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get stepper_driver::StepperArrayMotorHardwareStatus :md5sum-) "74d6dcce2a629b114c5b711b4689c89e")
(setf (get stepper_driver::StepperArrayMotorHardwareStatus :datatype-) "stepper_driver/StepperArrayMotorHardwareStatus")
(setf (get stepper_driver::StepperArrayMotorHardwareStatus :definition-)
      "std_msgs/Header header
stepper_driver/StepperMotorHardwareStatus[] motors_hw_status
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: stepper_driver/StepperMotorHardwareStatus
niryo_robot_msgs/MotorHeader motor_identity

string firmware_version
int32 temperature
int32 voltage
int32 error

================================================================================
MSG: niryo_robot_msgs/MotorHeader
uint8 motor_id

uint8 motor_type
uint8 MOTOR_TYPE_STEPPER=1
uint8 MOTOR_TYPE_XL430=2
uint8 MOTOR_TYPE_XL320=3

")



(provide :stepper_driver/StepperArrayMotorHardwareStatus "74d6dcce2a629b114c5b711b4689c89e")


