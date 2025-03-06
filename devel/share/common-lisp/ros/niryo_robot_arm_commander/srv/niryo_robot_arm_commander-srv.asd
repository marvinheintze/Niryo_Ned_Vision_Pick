
(cl:in-package :asdf)

(defsystem "niryo_robot_arm_commander-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :niryo_robot_msgs-msg
)
  :components ((:file "_package")
    (:file "GetFK" :depends-on ("_package_GetFK"))
    (:file "_package_GetFK" :depends-on ("_package"))
    (:file "GetIK" :depends-on ("_package_GetIK"))
    (:file "_package_GetIK" :depends-on ("_package"))
    (:file "JogShift" :depends-on ("_package_JogShift"))
    (:file "_package_JogShift" :depends-on ("_package"))
  ))