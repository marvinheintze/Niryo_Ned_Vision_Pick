
(cl:in-package :asdf)

(defsystem "niryo_robot_rpi-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ChangeMotorConfig" :depends-on ("_package_ChangeMotorConfig"))
    (:file "_package_ChangeMotorConfig" :depends-on ("_package"))
    (:file "GetDigitalIO" :depends-on ("_package_GetDigitalIO"))
    (:file "_package_GetDigitalIO" :depends-on ("_package"))
    (:file "LedBlinker" :depends-on ("_package_LedBlinker"))
    (:file "_package_LedBlinker" :depends-on ("_package"))
    (:file "SetDigitalIO" :depends-on ("_package_SetDigitalIO"))
    (:file "_package_SetDigitalIO" :depends-on ("_package"))
  ))