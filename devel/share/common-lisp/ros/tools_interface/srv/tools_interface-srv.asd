
(cl:in-package :asdf)

(defsystem "tools_interface-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CloseGripper" :depends-on ("_package_CloseGripper"))
    (:file "_package_CloseGripper" :depends-on ("_package"))
    (:file "OpenGripper" :depends-on ("_package_OpenGripper"))
    (:file "_package_OpenGripper" :depends-on ("_package"))
    (:file "PingDxlTool" :depends-on ("_package_PingDxlTool"))
    (:file "_package_PingDxlTool" :depends-on ("_package"))
    (:file "PullAirVacuumPump" :depends-on ("_package_PullAirVacuumPump"))
    (:file "_package_PullAirVacuumPump" :depends-on ("_package"))
    (:file "PushAirVacuumPump" :depends-on ("_package_PushAirVacuumPump"))
    (:file "_package_PushAirVacuumPump" :depends-on ("_package"))
  ))