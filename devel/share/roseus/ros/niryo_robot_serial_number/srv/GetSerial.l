;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_serial_number::GetSerial)
  (if (not (find-package "NIRYO_ROBOT_SERIAL_NUMBER"))
    (make-package "NIRYO_ROBOT_SERIAL_NUMBER"))
  (shadow 'GetSerial (find-package "NIRYO_ROBOT_SERIAL_NUMBER")))
(unless (find-package "NIRYO_ROBOT_SERIAL_NUMBER::GETSERIAL")
  (make-package "NIRYO_ROBOT_SERIAL_NUMBER::GETSERIAL"))
(unless (find-package "NIRYO_ROBOT_SERIAL_NUMBER::GETSERIALREQUEST")
  (make-package "NIRYO_ROBOT_SERIAL_NUMBER::GETSERIALREQUEST"))
(unless (find-package "NIRYO_ROBOT_SERIAL_NUMBER::GETSERIALRESPONSE")
  (make-package "NIRYO_ROBOT_SERIAL_NUMBER::GETSERIALRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_serial_number::GetSerialRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_serial_number::GetSerialRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass niryo_robot_serial_number::GetSerialResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_serial_number::GetSerialResponse
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
    ;; int16 _status
    2
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _status
       (write-word _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_serial_number::GetSerial
  :super ros::object
  :slots ())

(setf (get niryo_robot_serial_number::GetSerial :md5sum-) "09803e1f4a40b6f2352e453a75b02d0b")
(setf (get niryo_robot_serial_number::GetSerial :datatype-) "niryo_robot_serial_number/GetSerial")
(setf (get niryo_robot_serial_number::GetSerial :request) niryo_robot_serial_number::GetSerialRequest)
(setf (get niryo_robot_serial_number::GetSerial :response) niryo_robot_serial_number::GetSerialResponse)

(defmethod niryo_robot_serial_number::GetSerialRequest
  (:response () (instance niryo_robot_serial_number::GetSerialResponse :init)))

(setf (get niryo_robot_serial_number::GetSerialRequest :md5sum-) "09803e1f4a40b6f2352e453a75b02d0b")
(setf (get niryo_robot_serial_number::GetSerialRequest :datatype-) "niryo_robot_serial_number/GetSerialRequest")
(setf (get niryo_robot_serial_number::GetSerialRequest :definition-)
      "---
int16 status
string message

")

(setf (get niryo_robot_serial_number::GetSerialResponse :md5sum-) "09803e1f4a40b6f2352e453a75b02d0b")
(setf (get niryo_robot_serial_number::GetSerialResponse :datatype-) "niryo_robot_serial_number/GetSerialResponse")
(setf (get niryo_robot_serial_number::GetSerialResponse :definition-)
      "---
int16 status
string message

")



(provide :niryo_robot_serial_number/GetSerial "09803e1f4a40b6f2352e453a75b02d0b")


