;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; Coding:utf-8 -*-

(defsystem :pmc
  :name "pmc"
  :description "A version of PWConstraints CSP solver"
  :author "Kilian Sprotte <kilian.sprotte@gmail.com>"
  :version #.(with-open-file
                 (vers (merge-pathnames "version.lisp-expr" *load-truename*))
                 (read vers))
  :serial t
  :components ((:static-file "version" :pathname #p"version.lisp-expr")
               (:file "package")
               (:file "01-added-utils")
               (:file "02-constraint-utilities")
               (:file "03-constraint-diagnostics")
               (:file "04-search-variable")
               (:file "05-search-engine")
               (:file "06-PM-compiler")
               (:file "07-forward-checking")
               (:file "08-OMCs-utilities-split1"))
  :depends-on ()
  :in-order-to ((test-op (test-op :pmc-test))))
