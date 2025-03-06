
(cl:in-package :asdf)

(defsystem "niryo_robot_rpi-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DigitalIOState" :depends-on ("_package_DigitalIOState"))
    (:file "_package_DigitalIOState" :depends-on ("_package"))
    (:file "LogStatus" :depends-on ("_package_LogStatus"))
    (:file "_package_LogStatus" :depends-on ("_package"))
  ))