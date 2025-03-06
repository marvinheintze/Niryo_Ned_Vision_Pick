
(cl:in-package :asdf)

(defsystem "dynamixel_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :niryo_robot_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DxlArrayMotorHardwareStatus" :depends-on ("_package_DxlArrayMotorHardwareStatus"))
    (:file "_package_DxlArrayMotorHardwareStatus" :depends-on ("_package"))
    (:file "DxlMotorCommand" :depends-on ("_package_DxlMotorCommand"))
    (:file "_package_DxlMotorCommand" :depends-on ("_package"))
    (:file "DxlMotorHardwareStatus" :depends-on ("_package_DxlMotorHardwareStatus"))
    (:file "_package_DxlMotorHardwareStatus" :depends-on ("_package"))
  ))