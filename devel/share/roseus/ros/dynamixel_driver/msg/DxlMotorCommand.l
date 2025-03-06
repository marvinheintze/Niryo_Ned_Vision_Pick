;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_driver::DxlMotorCommand)
  (if (not (find-package "DYNAMIXEL_DRIVER"))
    (make-package "DYNAMIXEL_DRIVER"))
  (shadow 'DxlMotorCommand (find-package "DYNAMIXEL_DRIVER")))
(unless (find-package "DYNAMIXEL_DRIVER::DXLMOTORCOMMAND")
  (make-package "DYNAMIXEL_DRIVER::DXLMOTORCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude DxlMotorCommand.msg.html


(intern "*CMD_TYPE_POSITION*" (find-package "DYNAMIXEL_DRIVER::DXLMOTORCOMMAND"))
(shadow '*CMD_TYPE_POSITION* (find-package "DYNAMIXEL_DRIVER::DXLMOTORCOMMAND"))
(defconstant dynamixel_driver::DxlMotorCommand::*CMD_TYPE_POSITION* 1)
(intern "*CMD_TYPE_VELOCITY*" (find-package "DYNAMIXEL_DRIVER::DXLMOTORCOMMAND"))
(shadow '*CMD_TYPE_VELOCITY* (find-package "DYNAMIXEL_DRIVER::DXLMOTORCOMMAND"))
(defconstant dynamixel_driver::DxlMotorCommand::*CMD_TYPE_VELOCITY* 2)
(intern "*CMD_TYPE_EFFORT*" (find-package "DYNAMIXEL_DRIVER::DXLMOTORCOMMAND"))
(shadow '*CMD_TYPE_EFFORT* (find-package "DYNAMIXEL_DRIVER::DXLMOTORCOMMAND"))
(defconstant dynamixel_driver::DxlMotorCommand::*CMD_TYPE_EFFORT* 3)
(intern "*CMD_TYPE_TORQUE*" (find-package "DYNAMIXEL_DRIVER::DXLMOTORCOMMAND"))
(shadow '*CMD_TYPE_TORQUE* (find-package "DYNAMIXEL_DRIVER::DXLMOTORCOMMAND"))
(defconstant dynamixel_driver::DxlMotorCommand::*CMD_TYPE_TORQUE* 4)
(defclass dynamixel_driver::DxlMotorCommand
  :super ros::object
  :slots (_cmd_type _motors_id _params ))

(defmethod dynamixel_driver::DxlMotorCommand
  (:init
   (&key
    ((:cmd_type __cmd_type) 0)
    ((:motors_id __motors_id) (make-array 0 :initial-element 0 :element-type :char))
    ((:params __params) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _cmd_type (round __cmd_type))
   (setq _motors_id __motors_id)
   (setq _params __params)
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:motors_id
   (&optional __motors_id)
   (if __motors_id (setq _motors_id __motors_id)) _motors_id)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd_type
    1
    ;; uint8[] _motors_id
    (* 1    (length _motors_id)) 4
    ;; uint32[] _params
    (* 4    (length _params)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd_type
       (write-byte _cmd_type s)
     ;; uint8[] _motors_id
     (write-long (length _motors_id) s)
     (princ _motors_id s)
     ;; uint32[] _params
     (write-long (length _params) s)
     (dotimes (i (length _params))
       (write-long (elt _params i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _motors_id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _motors_id (make-array n :element-type :char))
     (replace _motors_id buf :start2 ptr-) (incf ptr- n))
   ;; uint32[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _params i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dynamixel_driver::DxlMotorCommand :md5sum-) "1fd0ce1ecaa67db6efa4b24d2606e47b")
(setf (get dynamixel_driver::DxlMotorCommand :datatype-) "dynamixel_driver/DxlMotorCommand")
(setf (get dynamixel_driver::DxlMotorCommand :definition-)
      "uint8 cmd_type
uint8 CMD_TYPE_POSITION=1
uint8 CMD_TYPE_VELOCITY=2
uint8 CMD_TYPE_EFFORT=3
uint8 CMD_TYPE_TORQUE=4

uint8[] motors_id
uint32[] params
")



(provide :dynamixel_driver/DxlMotorCommand "1fd0ce1ecaa67db6efa4b24d2606e47b")


