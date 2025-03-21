;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::CommandJog)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'CommandJog (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::COMMANDJOG")
  (make-package "NIRYO_ROBOT_MSGS::COMMANDJOG"))

(in-package "ROS")
;;//! \htmlinclude CommandJog.msg.html


(intern "*JOINTS_SHIFT*" (find-package "NIRYO_ROBOT_MSGS::COMMANDJOG"))
(shadow '*JOINTS_SHIFT* (find-package "NIRYO_ROBOT_MSGS::COMMANDJOG"))
(defconstant niryo_robot_msgs::CommandJog::*JOINTS_SHIFT* 1)
(intern "*POSE_SHIFT*" (find-package "NIRYO_ROBOT_MSGS::COMMANDJOG"))
(shadow '*POSE_SHIFT* (find-package "NIRYO_ROBOT_MSGS::COMMANDJOG"))
(defconstant niryo_robot_msgs::CommandJog::*POSE_SHIFT* 2)
(defclass niryo_robot_msgs::CommandJog
  :super ros::object
  :slots (_cmd _shift_values ))

(defmethod niryo_robot_msgs::CommandJog
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:shift_values __shift_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _shift_values __shift_values)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:shift_values
   (&optional __shift_values)
   (if __shift_values (setq _shift_values __shift_values)) _shift_values)
  (:serialization-length
   ()
   (+
    ;; int32 _cmd
    4
    ;; float32[] _shift_values
    (* 4    (length _shift_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;; float32[] _shift_values
     (write-long (length _shift_values) s)
     (dotimes (i (length _shift_values))
       (sys::poke (elt _shift_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _shift_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shift_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _shift_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get niryo_robot_msgs::CommandJog :md5sum-) "982e671b205d513ea5a6ebe02f6d0ba8")
(setf (get niryo_robot_msgs::CommandJog :datatype-) "niryo_robot_msgs/CommandJog")
(setf (get niryo_robot_msgs::CommandJog :definition-)
      "int32 JOINTS_SHIFT = 1
int32 POSE_SHIFT = 2

int32 cmd

float32[] shift_values
")



(provide :niryo_robot_msgs/CommandJog "982e671b205d513ea5a6ebe02f6d0ba8")


