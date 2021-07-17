
(cl:in-package :asdf)

(defsystem "learning_communication-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Addnums" :depends-on ("_package_Addnums"))
    (:file "_package_Addnums" :depends-on ("_package"))
  ))