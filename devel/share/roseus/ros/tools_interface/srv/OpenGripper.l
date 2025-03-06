;; Auto-generated. Do not edit!


(when (boundp 'tools_interface::OpenGripper)
  (if (not (find-package "TOOLS_INTERFACE"))
    (make-package "TOOLS_INTERFACE"))
  (shadow 'OpenGripper (find-package "TOOLS_INTERFACE")))
(unless (find-package "TOOLS_INTERFACE::OPENGRIPPER")
  (make-package "TOOLS_INTERFACE::OPENGRIPPER"))
(unless (find-package "TOOLS_INTERFACE::OPENGRIPPERREQUEST")
  (make-package "TOOLS_INTERFACE::OPENGRIPPERREQUEST"))
(unless (find-package "TOOLS_INTERFACE::OPENGRIPPERRESPONSE")
  (make-package "TOOLS_INTERFACE::OPENGRIPPERRESPONSE"))

(in-package "ROS")





(defclass tools_interface::OpenGripperRequest
  :super ros::object
  :slots (_id _open_position _open_speed _open_hold_torque ))

(defmethod tools_interface::OpenGripperRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:open_position __open_position) 0)
    ((:open_speed __open_speed) 0)
    ((:open_hold_torque __open_hold_torque) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _open_position (round __open_position))
   (setq _open_speed (round __open_speed))
   (setq _open_hold_torque (round __open_hold_torque))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:open_position
   (&optional __open_position)
   (if __open_position (setq _open_position __open_position)) _open_position)
  (:open_speed
   (&optional __open_speed)
   (if __open_speed (setq _open_speed __open_speed)) _open_speed)
  (:open_hold_torque
   (&optional __open_hold_torque)
   (if __open_hold_torque (setq _open_hold_torque __open_hold_torque)) _open_hold_torque)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int16 _open_position
    2
    ;; int16 _open_speed
    2
    ;; int16 _open_hold_torque
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int16 _open_position
       (write-word _open_position s)
     ;; int16 _open_speed
       (write-word _open_speed s)
     ;; int16 _open_hold_torque
       (write-word _open_hold_torque s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _open_position
     (setq _open_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _open_speed
     (setq _open_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _open_hold_torque
     (setq _open_hold_torque (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass tools_interface::OpenGripperResponse
  :super ros::object
  :slots (_state ))

(defmethod tools_interface::OpenGripperResponse
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

(defclass tools_interface::OpenGripper
  :super ros::object
  :slots ())

(setf (get tools_interface::OpenGripper :md5sum-) "8fa16a49b77c971df71ae1d221893f06")
(setf (get tools_interface::OpenGripper :datatype-) "tools_interface/OpenGripper")
(setf (get tools_interface::OpenGripper :request) tools_interface::OpenGripperRequest)
(setf (get tools_interface::OpenGripper :response) tools_interface::OpenGripperResponse)

(defmethod tools_interface::OpenGripperRequest
  (:response () (instance tools_interface::OpenGripperResponse :init)))

(setf (get tools_interface::OpenGripperRequest :md5sum-) "8fa16a49b77c971df71ae1d221893f06")
(setf (get tools_interface::OpenGripperRequest :datatype-) "tools_interface/OpenGripperRequest")
(setf (get tools_interface::OpenGripperRequest :definition-)
      "
uint8 id

int16 open_position
int16 open_speed
int16 open_hold_torque
---
uint8 state

")

(setf (get tools_interface::OpenGripperResponse :md5sum-) "8fa16a49b77c971df71ae1d221893f06")
(setf (get tools_interface::OpenGripperResponse :datatype-) "tools_interface/OpenGripperResponse")
(setf (get tools_interface::OpenGripperResponse :definition-)
      "
uint8 id

int16 open_position
int16 open_speed
int16 open_hold_torque
---
uint8 state

")



(provide :tools_interface/OpenGripper "8fa16a49b77c971df71ae1d221893f06")


