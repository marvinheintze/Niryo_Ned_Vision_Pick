
(cl:in-package :asdf)

(defsystem "niryo_robot_serial_number-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetSerial" :depends-on ("_package_GetSerial"))
    (:file "_package_GetSerial" :depends-on ("_package"))
  ))