;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

(in-package :asdf-user)

(asdf:defsystem ta-utilities
  :description "A collection of auxilary definitions, useful for various projects." 
  :author "Torsten Anders <torstenanders@gmx.de>"
  :licence "GNU General Public License, Version 3"
  :version "0.2"
  :serial t ;; the dependencies are linear.
  :components ((:file "make-package")
	       (:file "my-utilities")
	       ;; (:file "graham-utils") ;; utilities by Paul Graham
	       (:file "export"))
  ;; :depends-on ("port")
  )



