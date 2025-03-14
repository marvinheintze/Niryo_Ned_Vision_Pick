;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_arm_commander::PausePlanExecution)
  (if (not (find-package "NIRYO_ROBOT_ARM_COMMANDER"))
    (make-package "NIRYO_ROBOT_ARM_COMMANDER"))
  (shadow 'PausePlanExecution (find-package "NIRYO_ROBOT_ARM_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION"))

(in-package "ROS")
;;//! \htmlinclude PausePlanExecution.msg.html


(intern "*STANDBY*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION"))
(shadow '*STANDBY* (find-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION"))
(defconstant niryo_robot_arm_commander::PausePlanExecution::*STANDBY* 0)
(intern "*PLAY*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION"))
(shadow '*PLAY* (find-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION"))
(defconstant niryo_robot_arm_commander::PausePlanExecution::*PLAY* 1)
(intern "*PAUSE*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION"))
(shadow '*PAUSE* (find-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION"))
(defconstant niryo_robot_arm_commander::PausePlanExecution::*PAUSE* 2)
(intern "*RESUME*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION"))
(shadow '*RESUME* (find-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION"))
(defconstant niryo_robot_arm_commander::PausePlanExecution::*RESUME* 3)
(intern "*CANCEL*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION"))
(shadow '*CANCEL* (find-package "NIRYO_ROBOT_ARM_COMMANDER::PAUSEPLANEXECUTION"))
(defconstant niryo_robot_arm_commander::PausePlanExecution::*CANCEL* 4)
(defclass niryo_robot_arm_commander::PausePlanExecution
  :super ros::object
  :slots (_state ))

(defmethod niryo_robot_arm_commander::PausePlanExecution
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;;
   self)
  )

(setf (get niryo_robot_arm_commander::PausePlanExecution :md5sum-) "f2b35f1d77fcdd8b347762e18126abf6")
(setf (get niryo_robot_arm_commander::PausePlanExecution :datatype-) "niryo_robot_arm_commander/PausePlanExecution")
(setf (get niryo_robot_arm_commander::PausePlanExecution :definition-)
      "int8 STANDBY = 0
int8 PLAY = 1
int8 PAUSE = 2
int8 RESUME = 3
int8 CANCEL = 4

int8 state

")



(provide :niryo_robot_arm_commander/PausePlanExecution "f2b35f1d77fcdd8b347762e18126abf6")


