;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; Coding:utf-8 -*-

(defsystem :pmc-test
  :name "pmc-test"
  :description "Tests for pmc"
  :components
  ((:module "test"
            :components ((:file "package")
                         (:file "suite" :depends-on ("package"))
                         (:file "simple" :depends-on ("suite"))
                         (:file "former-bugs" :depends-on ("suite")))))
  :depends-on (:pmc :myam :iterate))

(defmethod perform ((op test-op)
                    (system (eql (find-system :pmc-test))))
  (funcall (intern "RUN!" "MYAM") :pmc-test))
