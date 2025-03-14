;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::GetDigitalIO)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'GetDigitalIO (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::GETDIGITALIO")
  (make-package "NIRYO_ROBOT_RPI::GETDIGITALIO"))
(unless (find-package "NIRYO_ROBOT_RPI::GETDIGITALIOREQUEST")
  (make-package "NIRYO_ROBOT_RPI::GETDIGITALIOREQUEST"))
(unless (find-package "NIRYO_ROBOT_RPI::GETDIGITALIORESPONSE")
  (make-package "NIRYO_ROBOT_RPI::GETDIGITALIORESPONSE"))

(in-package "ROS")





(defclass niryo_robot_rpi::GetDigitalIORequest
  :super ros::object
  :slots (_pin ))

(defmethod niryo_robot_rpi::GetDigitalIORequest
  (:init
   (&key
    ((:pin __pin) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:serialization-length
   ()
   (+
    ;; int32 _pin
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pin
       (write-long _pin s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pin
     (setq _pin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_robot_rpi::GetDigitalIOResponse
  :super ros::object
  :slots (_status _message _pin _name _mode _state ))

(defmethod niryo_robot_rpi::GetDigitalIOResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:pin __pin) 0)
    ((:name __name) "")
    ((:mode __mode) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _pin (round __pin))
   (setq _name (string __name))
   (setq _mode (round __mode))
   (setq _state (round __state))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; int32 _pin
    4
    ;; string _name
    4 (length _name)
    ;; int32 _mode
    4
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; int32 _pin
       (write-long _pin s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _mode
       (write-long _mode s)
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _pin
     (setq _pin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_robot_rpi::GetDigitalIO
  :super ros::object
  :slots ())

(setf (get niryo_robot_rpi::GetDigitalIO :md5sum-) "ff1bbbbc7b46fe53917ece543d724356")
(setf (get niryo_robot_rpi::GetDigitalIO :datatype-) "niryo_robot_rpi/GetDigitalIO")
(setf (get niryo_robot_rpi::GetDigitalIO :request) niryo_robot_rpi::GetDigitalIORequest)
(setf (get niryo_robot_rpi::GetDigitalIO :response) niryo_robot_rpi::GetDigitalIOResponse)

(defmethod niryo_robot_rpi::GetDigitalIORequest
  (:response () (instance niryo_robot_rpi::GetDigitalIOResponse :init)))

(setf (get niryo_robot_rpi::GetDigitalIORequest :md5sum-) "ff1bbbbc7b46fe53917ece543d724356")
(setf (get niryo_robot_rpi::GetDigitalIORequest :datatype-) "niryo_robot_rpi/GetDigitalIORequest")
(setf (get niryo_robot_rpi::GetDigitalIORequest :definition-)
      "int32 pin
---
int32 status
string message

int32 pin
string name
int32 mode
int32 state

")

(setf (get niryo_robot_rpi::GetDigitalIOResponse :md5sum-) "ff1bbbbc7b46fe53917ece543d724356")
(setf (get niryo_robot_rpi::GetDigitalIOResponse :datatype-) "niryo_robot_rpi/GetDigitalIOResponse")
(setf (get niryo_robot_rpi::GetDigitalIOResponse :definition-)
      "int32 pin
---
int32 status
string message

int32 pin
string name
int32 mode
int32 state

")



(provide :niryo_robot_rpi/GetDigitalIO "ff1bbbbc7b46fe53917ece543d724356")


