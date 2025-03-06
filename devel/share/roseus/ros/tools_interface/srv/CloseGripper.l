;; Auto-generated. Do not edit!


(when (boundp 'tools_interface::CloseGripper)
  (if (not (find-package "TOOLS_INTERFACE"))
    (make-package "TOOLS_INTERFACE"))
  (shadow 'CloseGripper (find-package "TOOLS_INTERFACE")))
(unless (find-package "TOOLS_INTERFACE::CLOSEGRIPPER")
  (make-package "TOOLS_INTERFACE::CLOSEGRIPPER"))
(unless (find-package "TOOLS_INTERFACE::CLOSEGRIPPERREQUEST")
  (make-package "TOOLS_INTERFACE::CLOSEGRIPPERREQUEST"))
(unless (find-package "TOOLS_INTERFACE::CLOSEGRIPPERRESPONSE")
  (make-package "TOOLS_INTERFACE::CLOSEGRIPPERRESPONSE"))

(in-package "ROS")





(defclass tools_interface::CloseGripperRequest
  :super ros::object
  :slots (_id _close_position _close_speed _close_hold_torque _close_max_torque ))

(defmethod tools_interface::CloseGripperRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:close_position __close_position) 0)
    ((:close_speed __close_speed) 0)
    ((:close_hold_torque __close_hold_torque) 0)
    ((:close_max_torque __close_max_torque) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _close_position (round __close_position))
   (setq _close_speed (round __close_speed))
   (setq _close_hold_torque (round __close_hold_torque))
   (setq _close_max_torque (round __close_max_torque))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:close_position
   (&optional __close_position)
   (if __close_position (setq _close_position __close_position)) _close_position)
  (:close_speed
   (&optional __close_speed)
   (if __close_speed (setq _close_speed __close_speed)) _close_speed)
  (:close_hold_torque
   (&optional __close_hold_torque)
   (if __close_hold_torque (setq _close_hold_torque __close_hold_torque)) _close_hold_torque)
  (:close_max_torque
   (&optional __close_max_torque)
   (if __close_max_torque (setq _close_max_torque __close_max_torque)) _close_max_torque)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int16 _close_position
    2
    ;; int16 _close_speed
    2
    ;; int16 _close_hold_torque
    2
    ;; int16 _close_max_torque
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int16 _close_position
       (write-word _close_position s)
     ;; int16 _close_speed
       (write-word _close_speed s)
     ;; int16 _close_hold_torque
       (write-word _close_hold_torque s)
     ;; int16 _close_max_torque
       (write-word _close_max_torque s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _close_position
     (setq _close_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _close_speed
     (setq _close_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _close_hold_torque
     (setq _close_hold_torque (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _close_max_torque
     (setq _close_max_torque (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass tools_interface::CloseGripperResponse
  :super ros::object
  :slots (_state ))

(defmethod tools_interface::CloseGripperResponse
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
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass tools_interface::CloseGripper
  :super ros::object
  :slots ())

(setf (get tools_interface::CloseGripper :md5sum-) "04901e0d312f8ee9c675fc0042c3a8e4")
(setf (get tools_interface::CloseGripper :datatype-) "tools_interface/CloseGripper")
(setf (get tools_interface::CloseGripper :request) tools_interface::CloseGripperRequest)
(setf (get tools_interface::CloseGripper :response) tools_interface::CloseGripperResponse)

(defmethod tools_interface::CloseGripperRequest
  (:response () (instance tools_interface::CloseGripperResponse :init)))

(setf (get tools_interface::CloseGripperRequest :md5sum-) "04901e0d312f8ee9c675fc0042c3a8e4")
(setf (get tools_interface::CloseGripperRequest :datatype-) "tools_interface/CloseGripperRequest")
(setf (get tools_interface::CloseGripperRequest :definition-)
      "
uint8 id

int16 close_position
int16 close_speed
int16 close_hold_torque
int16 close_max_torque
---
uint8 state

")

(setf (get tools_interface::CloseGripperResponse :md5sum-) "04901e0d312f8ee9c675fc0042c3a8e4")
(setf (get tools_interface::CloseGripperResponse :datatype-) "tools_interface/CloseGripperResponse")
(setf (get tools_interface::CloseGripperResponse :definition-)
      "
uint8 id

int16 close_position
int16 close_speed
int16 close_hold_torque
int16 close_max_torque
---
uint8 state

")



(provide :tools_interface/CloseGripper "04901e0d312f8ee9c675fc0042c3a8e4")


