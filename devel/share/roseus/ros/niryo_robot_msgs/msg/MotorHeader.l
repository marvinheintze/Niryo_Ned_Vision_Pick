;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::MotorHeader)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'MotorHeader (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER")
  (make-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))

(in-package "ROS")
;;//! \htmlinclude MotorHeader.msg.html


(intern "*MOTOR_TYPE_STEPPER*" (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(shadow '*MOTOR_TYPE_STEPPER* (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(defconstant niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_STEPPER* 1)
(intern "*MOTOR_TYPE_XL430*" (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(shadow '*MOTOR_TYPE_XL430* (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(defconstant niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_XL430* 2)
(intern "*MOTOR_TYPE_XL320*" (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(shadow '*MOTOR_TYPE_XL320* (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(defconstant niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_XL320* 3)
(defclass niryo_robot_msgs::MotorHeader
  :super ros::object
  :slots (_motor_id _motor_type ))

(defmethod niryo_robot_msgs::MotorHeader
  (:init
   (&key
    ((:motor_id __motor_id) 0)
    ((:motor_type __motor_type) 0)
    )
   (send-super :init)
   (setq _motor_id (round __motor_id))
   (setq _motor_type (round __motor_type))
   self)
  (:motor_id
   (&optional __motor_id)
   (if __motor_id (setq _motor_id __motor_id)) _motor_id)
  (:motor_type
   (&optional __motor_type)
   (if __motor_type (setq _motor_type __motor_type)) _motor_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _motor_id
    1
    ;; uint8 _motor_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _motor_id
       (write-byte _motor_id s)
     ;; uint8 _motor_type
       (write-byte _motor_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _motor_id
     (setq _motor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motor_type
     (setq _motor_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get niryo_robot_msgs::MotorHeader :md5sum-) "62c8c8ce0dfbcc2a0a1adc2e99696473")
(setf (get niryo_robot_msgs::MotorHeader :datatype-) "niryo_robot_msgs/MotorHeader")
(setf (get niryo_robot_msgs::MotorHeader :definition-)
      "uint8 motor_id

uint8 motor_type
uint8 MOTOR_TYPE_STEPPER=1
uint8 MOTOR_TYPE_XL430=2
uint8 MOTOR_TYPE_XL320=3

")



(provide :niryo_robot_msgs/MotorHeader "62c8c8ce0dfbcc2a0a1adc2e99696473")


