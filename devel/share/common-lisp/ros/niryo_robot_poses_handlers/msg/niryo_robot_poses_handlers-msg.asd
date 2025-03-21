
(cl:in-package :asdf)

(defsystem "niryo_robot_poses_handlers-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :niryo_robot_msgs-msg
)
  :components ((:file "_package")
    (:file "NiryoPose" :depends-on ("_package_NiryoPose"))
    (:file "_package_NiryoPose" :depends-on ("_package"))
    (:file "Trajectory" :depends-on ("_package_Trajectory"))
    (:file "_package_Trajectory" :depends-on ("_package"))
    (:file "Workspace" :depends-on ("_package_Workspace"))
    (:file "_package_Workspace" :depends-on ("_package"))
  ))