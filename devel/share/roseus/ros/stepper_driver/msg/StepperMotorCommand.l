;; Auto-generated. Do not edit!


(when (boundp 'stepper_driver::StepperMotorCommand)
  (if (not (find-package "STEPPER_DRIVER"))
    (make-package "STEPPER_DRIVER"))
  (shadow 'StepperMotorCommand (find-package "STEPPER_DRIVER")))
(unless (find-package "STEPPER_DRIVER::STEPPERMOTORCOMMAND")
  (make-package "STEPPER_DRIVER::STEPPERMOTORCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude StepperMotorCommand.msg.html


(intern "*CMD_TYPE_POSITION*" (find-package "STEPPER_DRIVER::STEPPERMOTORCOMMAND"))
(shadow '*CMD_TYPE_POSITION* (find-package "STEPPER_DRIVER::STEPPERMOTORCOMMAND"))
(defconstant stepper_driver::StepperMotorCommand::*CMD_TYPE_POSITION* 1)
(intern "*CMD_TYPE_VELOCITY*" (find-package "STEPPER_DRIVER::STEPPERMOTORCOMMAND"))
(shadow '*CMD_TYPE_VELOCITY* (find-package "STEPPER_DRIVER::STEPPERMOTORCOMMAND"))
(defconstant stepper_driver::StepperMotorCommand::*CMD_TYPE_VELOCITY* 2)
(intern "*CMD_TYPE_EFFORT*" (find-package "STEPPER_DRIVER::STEPPERMOTORCOMMAND"))
(shadow '*CMD_TYPE_EFFORT* (find-package "STEPPER_DRIVER::STEPPERMOTORCOMMAND"))
(defconstant stepper_driver::StepperMotorCommand::*CMD_TYPE_EFFORT* 3)
(intern "*CMD_TYPE_TORQUE*" (find-package "STEPPER_DRIVER::STEPPERMOTORCOMMAND"))
(shadow '*CMD_TYPE_TORQUE* (find-package "STEPPER_DRIVER::STEPPERMOTORCOMMAND"))
(defconstant stepper_driver::StepperMotorCommand::*CMD_TYPE_TORQUE* 4)
(defclass stepper_driver::StepperMotorCommand
  :super ros::object
  :slots (_cmd_type _motors_id _params ))

(defmethod stepper_driver::StepperMotorCommand
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
    ;; int32[] _params
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
     ;; int32[] _params
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
   ;; int32[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _params i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get stepper_driver::StepperMotorCommand :md5sum-) "c42b44c9b9cc379b2ebb23de94f3faf4")
(setf (get stepper_driver::StepperMotorCommand :datatype-) "stepper_driver/StepperMotorCommand")
(setf (get stepper_driver::StepperMotorCommand :definition-)
      "uint8 cmd_type
uint8 CMD_TYPE_POSITION=1
uint8 CMD_TYPE_VELOCITY=2
uint8 CMD_TYPE_EFFORT=3
uint8 CMD_TYPE_TORQUE=4

uint8[] motors_id
int32[] params
")



(provide :stepper_driver/StepperMotorCommand "c42b44c9b9cc379b2ebb23de94f3faf4")


