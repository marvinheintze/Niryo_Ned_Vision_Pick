;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::SetDigitalIO)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'SetDigitalIO (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::SETDIGITALIO")
  (make-package "NIRYO_ROBOT_RPI::SETDIGITALIO"))
(unless (find-package "NIRYO_ROBOT_RPI::SETDIGITALIOREQUEST")
  (make-package "NIRYO_ROBOT_RPI::SETDIGITALIOREQUEST"))
(unless (find-package "NIRYO_ROBOT_RPI::SETDIGITALIORESPONSE")
  (make-package "NIRYO_ROBOT_RPI::SETDIGITALIORESPONSE"))

(in-package "ROS")





(defclass niryo_robot_rpi::SetDigitalIORequest
  :super ros::object
  :slots (_pin _value ))

(defmethod niryo_robot_rpi::SetDigitalIORequest
  (:init
   (&key
    ((:pin __pin) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _value (round __value))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_robot_rpi::SetDigitalIOResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_rpi::SetDigitalIOResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_rpi::SetDigitalIO
  :super ros::object
  :slots ())

(setf (get niryo_robot_rpi::SetDigitalIO :md5sum-) "58756075ba59c34125d6331e8a8727d4")
(setf (get niryo_robot_rpi::SetDigitalIO :datatype-) "niryo_robot_rpi/SetDigitalIO")
(setf (get niryo_robot_rpi::SetDigitalIO :request) niryo_robot_rpi::SetDigitalIORequest)
(setf (get niryo_robot_rpi::SetDigitalIO :response) niryo_robot_rpi::SetDigitalIOResponse)

(defmethod niryo_robot_rpi::SetDigitalIORequest
  (:response () (instance niryo_robot_rpi::SetDigitalIOResponse :init)))

(setf (get niryo_robot_rpi::SetDigitalIORequest :md5sum-) "58756075ba59c34125d6331e8a8727d4")
(setf (get niryo_robot_rpi::SetDigitalIORequest :datatype-) "niryo_robot_rpi/SetDigitalIORequest")
(setf (get niryo_robot_rpi::SetDigitalIORequest :definition-)
      "uint8 pin
uint8 value
---
int32 status
string message

")

(setf (get niryo_robot_rpi::SetDigitalIOResponse :md5sum-) "58756075ba59c34125d6331e8a8727d4")
(setf (get niryo_robot_rpi::SetDigitalIOResponse :datatype-) "niryo_robot_rpi/SetDigitalIOResponse")
(setf (get niryo_robot_rpi::SetDigitalIOResponse :definition-)
      "uint8 pin
uint8 value
---
int32 status
string message

")



(provide :niryo_robot_rpi/SetDigitalIO "58756075ba59c34125d6331e8a8727d4")


