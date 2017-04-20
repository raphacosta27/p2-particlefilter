
(cl:in-package :asdf)

(defsystem "neato_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Accel" :depends-on ("_package_Accel"))
    (:file "_package_Accel" :depends-on ("_package"))
    (:file "Bump" :depends-on ("_package_Bump"))
    (:file "_package_Bump" :depends-on ("_package"))
  ))