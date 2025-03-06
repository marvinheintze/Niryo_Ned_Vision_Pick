
(cl:in-package :asdf)

(defsystem "niryo_robot_poses_handlers-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :niryo_robot_msgs-msg
               :niryo_robot_poses_handlers-msg
)
  :components ((:file "_package")
    (:file "GetPose" :depends-on ("_package_GetPose"))
    (:file "_package_GetPose" :depends-on ("_package"))
    (:file "GetTargetPose" :depends-on ("_package_GetTargetPose"))
    (:file "_package_GetTargetPose" :depends-on ("_package"))
    (:file "GetTrajectory" :depends-on ("_package_GetTrajectory"))
    (:file "_package_GetTrajectory" :depends-on ("_package"))
    (:file "GetWorkspaceRatio" :depends-on ("_package_GetWorkspaceRatio"))
    (:file "_package_GetWorkspaceRatio" :depends-on ("_package"))
    (:file "GetWorkspaceRobotPoses" :depends-on ("_package_GetWorkspaceRobotPoses"))
    (:file "_package_GetWorkspaceRobotPoses" :depends-on ("_package"))
    (:file "ManagePose" :depends-on ("_package_ManagePose"))
    (:file "_package_ManagePose" :depends-on ("_package"))
    (:file "ManageTrajectory" :depends-on ("_package_ManageTrajectory"))
    (:file "_package_ManageTrajectory" :depends-on ("_package"))
    (:file "ManageWorkspace" :depends-on ("_package_ManageWorkspace"))
    (:file "_package_ManageWorkspace" :depends-on ("_package"))
  ))