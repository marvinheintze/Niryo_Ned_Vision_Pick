;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_driver::SendCustomDxlValue)
  (if (not (find-package "DYNAMIXEL_DRIVER"))
    (make-package "DYNAMIXEL_DRIVER"))
  (shadow 'SendCustomDxlValue (find-package "DYNAMIXEL_DRIVER")))
(unless (find-package "DYNAMIXEL_DRIVER::SENDCUSTOMDXLVALUE")
  (make-package "DYNAMIXEL_DRIVER::SENDCUSTOMDXLVALUE"))
(unless (find-package "DYNAMIXEL_DRIVER::SENDCUSTOMDXLVALUEREQUEST")
  (make-package "DYNAMIXEL_DRIVER::SENDCUSTOMDXLVALUEREQUEST"))
(unless (find-package "DYNAMIXEL_DRIVER::SENDCUSTOMDXLVALUERESPONSE")
  (make-package "DYNAMIXEL_DRIVER::SENDCUSTOMDXLVALUERESPONSE"))

(in-package "ROS")





(defclass dynamixel_driver::SendCustomDxlValueRequest
  :super ros::object
  :slots (_motor_type _id _value _reg_address _byte_number ))

(defmethod dynamixel_driver::SendCustomDxlValueRequest
  (:init
   (&key
    ((:motor_type __motor_type) 0)
    ((:id __id) 0)
    ((:value __value) 0)
    ((:reg_address __reg_address) 0)
    ((:byte_number __byte_number) 0)
    )
   (send-super :init)
   (setq _motor_type (round __motor_type))
   (setq _id (round __id))
   (setq _value (round __value))
   (setq _reg_address (round __reg_address))
   (setq _byte_number (round __byte_number))
   self)
  (:motor_type
   (&optional __motor_type)
   (if __motor_type (setq _motor_type __motor_type)) _motor_type)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:reg_address
   (&optional __reg_address)
   (if __reg_address (setq _reg_address __reg_address)) _reg_address)
  (:byte_number
   (&optional __byte_number)
   (if __byte_number (setq _byte_number __byte_number)) _byte_number)
  (:serialization-length
   ()
   (+
    ;; int8 _motor_type
    1
    ;; uint8 _id
    1
    ;; int32 _value
    4
    ;; int32 _reg_address
    4
    ;; int32 _byte_number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _motor_type
       (write-byte _motor_type s)
     ;; uint8 _id
       (write-byte _id s)
     ;; int32 _value
       (write-long _value s)
     ;; int32 _reg_address
       (write-long _reg_address s)
     ;; int32 _byte_number
       (write-long _byte_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _motor_type
     (setq _motor_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _motor_type 127) (setq _motor_type (- _motor_type 256)))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_address
     (setq _reg_address (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _byte_number
     (setq _byte_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dynamixel_driver::SendCustomDxlValueResponse
  :super ros::object
  :slots (_status _message ))

(defmethod dynamixel_driver::SendCustomDxlValueResponse
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

(defclass dynamixel_driver::SendCustomDxlValue
  :super ros::object
  :slots ())

(setf (get dynamixel_driver::SendCustomDxlValue :md5sum-) "a6060cddb14becf7546eae23209ccf2a")
(setf (get dynamixel_driver::SendCustomDxlValue :datatype-) "dynamixel_driver/SendCustomDxlValue")
(setf (get dynamixel_driver::SendCustomDxlValue :request) dynamixel_driver::SendCustomDxlValueRequest)
(setf (get dynamixel_driver::SendCustomDxlValue :response) dynamixel_driver::SendCustomDxlValueResponse)

(defmethod dynamixel_driver::SendCustomDxlValueRequest
  (:response () (instance dynamixel_driver::SendCustomDxlValueResponse :init)))

(setf (get dynamixel_driver::SendCustomDxlValueRequest :md5sum-) "a6060cddb14becf7546eae23209ccf2a")
(setf (get dynamixel_driver::SendCustomDxlValueRequest :datatype-) "dynamixel_driver/SendCustomDxlValueRequest")
(setf (get dynamixel_driver::SendCustomDxlValueRequest :definition-)
      "# Check XL-320 and XL-430 reference doc for
# the complete register table

int8 motor_type # 3 (XL-320) or 2 (XL-430)
uint8 id
int32 value
int32 reg_address
int32 byte_number
---
int32 status
string message

")

(setf (get dynamixel_driver::SendCustomDxlValueResponse :md5sum-) "a6060cddb14becf7546eae23209ccf2a")
(setf (get dynamixel_driver::SendCustomDxlValueResponse :datatype-) "dynamixel_driver/SendCustomDxlValueResponse")
(setf (get dynamixel_driver::SendCustomDxlValueResponse :definition-)
      "# Check XL-320 and XL-430 reference doc for
# the complete register table

int8 motor_type # 3 (XL-320) or 2 (XL-430)
uint8 id
int32 value
int32 reg_address
int32 byte_number
---
int32 status
string message

")



(provide :dynamixel_driver/SendCustomDxlValue "a6060cddb14becf7546eae23209ccf2a")


