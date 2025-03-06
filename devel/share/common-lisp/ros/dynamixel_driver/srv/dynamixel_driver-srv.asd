
(cl:in-package :asdf)

(defsystem "dynamixel_driver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SendCustomDxlValue" :depends-on ("_package_SendCustomDxlValue"))
    (:file "_package_SendCustomDxlValue" :depends-on ("_package"))
  ))