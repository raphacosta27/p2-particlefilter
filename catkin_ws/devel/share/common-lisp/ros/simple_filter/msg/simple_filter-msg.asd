
(cl:in-package :asdf)

(defsystem "simple_filter-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LaserSimple" :depends-on ("_package_LaserSimple"))
    (:file "_package_LaserSimple" :depends-on ("_package"))
    (:file "OdometrySimple" :depends-on ("_package_OdometrySimple"))
    (:file "_package_OdometrySimple" :depends-on ("_package"))
    (:file "VelocitySimple" :depends-on ("_package_VelocitySimple"))
    (:file "_package_VelocitySimple" :depends-on ("_package"))
  ))