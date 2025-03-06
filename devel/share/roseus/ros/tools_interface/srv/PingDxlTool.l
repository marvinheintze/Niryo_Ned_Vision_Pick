;; Auto-generated. Do not edit!


(when (boundp 'tools_interface::PingDxlTool)
  (if (not (find-package "TOOLS_INTERFACE"))
    (make-package "TOOLS_INTERFACE"))
  (shadow 'PingDxlTool (find-package "TOOLS_INTERFACE")))
(unless (find-package "TOOLS_INTERFACE::PINGDXLTOOL")
  (make-package "TOOLS_INTERFACE::PINGDXLTOOL"))
(unless (find-package "TOOLS_INTERFACE::PINGDXLTOOLREQUEST")
  (make-package "TOOLS_INTERFACE::PINGDXLTOOLREQUEST"))
(unless (find-package "TOOLS_INTERFACE::PINGDXLTOOLRESPONSE")
  (make-package "TOOLS_INTERFACE::PINGDXLTOOLRESPONSE"))

(in-package "ROS")





(defclass tools_interface::PingDxlToolRequest
  :super ros::object
  :slots ())

(defmethod tools_interface::PingDxlToolRequest
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

(defclass tools_interface::PingDxlToolResponse
  :super ros::object
  :slots (_state _id ))

(defmethod tools_interface::PingDxlToolResponse
  (:init
   (&key
    ((:state __state) 0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _id (round __id))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass tools_interface::PingDxlTool
  :super ros::object
  :slots ())

(setf (get tools_interface::PingDxlTool :md5sum-) "8744796096faed60cc6cc1a7e157e137")
(setf (get tools_interface::PingDxlTool :datatype-) "tools_interface/PingDxlTool")
(setf (get tools_interface::PingDxlTool :request) tools_interface::PingDxlToolRequest)
(setf (get tools_interface::PingDxlTool :response) tools_interface::PingDxlToolResponse)

(defmethod tools_interface::PingDxlToolRequest
  (:response () (instance tools_interface::PingDxlToolResponse :init)))

(setf (get tools_interface::PingDxlToolRequest :md5sum-) "8744796096faed60cc6cc1a7e157e137")
(setf (get tools_interface::PingDxlToolRequest :datatype-) "tools_interface/PingDxlToolRequest")
(setf (get tools_interface::PingDxlToolRequest :definition-)
      "---
int32 state
uint8 id

")

(setf (get tools_interface::PingDxlToolResponse :md5sum-) "8744796096faed60cc6cc1a7e157e137")
(setf (get tools_interface::PingDxlToolResponse :datatype-) "tools_interface/PingDxlToolResponse")
(setf (get tools_interface::PingDxlToolResponse :definition-)
      "---
int32 state
uint8 id

")



(provide :tools_interface/PingDxlTool "8744796096faed60cc6cc1a7e157e137")


