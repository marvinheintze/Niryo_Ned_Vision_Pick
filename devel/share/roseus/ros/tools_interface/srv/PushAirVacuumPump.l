;; Auto-generated. Do not edit!


(when (boundp 'tools_interface::PushAirVacuumPump)
  (if (not (find-package "TOOLS_INTERFACE"))
    (make-package "TOOLS_INTERFACE"))
  (shadow 'PushAirVacuumPump (find-package "TOOLS_INTERFACE")))
(unless (find-package "TOOLS_INTERFACE::PUSHAIRVACUUMPUMP")
  (make-package "TOOLS_INTERFACE::PUSHAIRVACUUMPUMP"))
(unless (find-package "TOOLS_INTERFACE::PUSHAIRVACUUMPUMPREQUEST")
  (make-package "TOOLS_INTERFACE::PUSHAIRVACUUMPUMPREQUEST"))
(unless (find-package "TOOLS_INTERFACE::PUSHAIRVACUUMPUMPRESPONSE")
  (make-package "TOOLS_INTERFACE::PUSHAIRVACUUMPUMPRESPONSE"))

(in-package "ROS")





(defclass tools_interface::PushAirVacuumPumpRequest
  :super ros::object
  :slots (_id _push_air_position ))

(defmethod tools_interface::PushAirVacuumPumpRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:push_air_position __push_air_position) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _push_air_position (round __push_air_position))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:push_air_position
   (&optional __push_air_position)
   (if __push_air_position (setq _push_air_position __push_air_position)) _push_air_position)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int16 _push_air_position
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int16 _push_air_position
       (write-word _push_air_position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _push_air_position
     (setq _push_air_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass tools_interface::PushAirVacuumPumpResponse
  :super ros::object
  :slots (_state ))

(defmethod tools_interface::PushAirVacuumPumpResponse
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

(defclass tools_interface::PushAirVacuumPump
  :super ros::object
  :slots ())

(setf (get tools_interface::PushAirVacuumPump :md5sum-) "41cc870230024f471ead928a5e8205a0")
(setf (get tools_interface::PushAirVacuumPump :datatype-) "tools_interface/PushAirVacuumPump")
(setf (get tools_interface::PushAirVacuumPump :request) tools_interface::PushAirVacuumPumpRequest)
(setf (get tools_interface::PushAirVacuumPump :response) tools_interface::PushAirVacuumPumpResponse)

(defmethod tools_interface::PushAirVacuumPumpRequest
  (:response () (instance tools_interface::PushAirVacuumPumpResponse :init)))

(setf (get tools_interface::PushAirVacuumPumpRequest :md5sum-) "41cc870230024f471ead928a5e8205a0")
(setf (get tools_interface::PushAirVacuumPumpRequest :datatype-) "tools_interface/PushAirVacuumPumpRequest")
(setf (get tools_interface::PushAirVacuumPumpRequest :definition-)
      "uint8 id

int16 push_air_position
---
uint8 state

")

(setf (get tools_interface::PushAirVacuumPumpResponse :md5sum-) "41cc870230024f471ead928a5e8205a0")
(setf (get tools_interface::PushAirVacuumPumpResponse :datatype-) "tools_interface/PushAirVacuumPumpResponse")
(setf (get tools_interface::PushAirVacuumPumpResponse :definition-)
      "uint8 id

int16 push_air_position
---
uint8 state

")



(provide :tools_interface/PushAirVacuumPump "41cc870230024f471ead928a5e8205a0")


