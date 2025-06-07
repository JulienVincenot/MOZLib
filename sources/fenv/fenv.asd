;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

; (in-package :asdf-user)

(asdf:defsystem fenv
  :description "This system defines ways to use numerical functions as envelopes. It provides a rich set of functions to generate, combine and transform these envelopes." 
  :author "Torsten Anders <torsten.anders@beds.ac.uk>"
  :licence "GNU General Public License, Version 3"
  :version "0.3"
  :serial t ;; the dependencies are linear.
  :components ((:file "sources/make-package")
	       (:file "sources/macros")
	       (:file "sources/fenv")
	       ;; (:file "sources/random-distribution")
	       ;; (:file "sources/plot")  ;; not needed for Opusmodus anymore
	       ;; (:file "sources/in-cm")
	       (:file "sources/export") 
	       ;; (:file "sources/menus") ;; only needed when used within PWGL
	       )
  :depends-on (; "gnuplot"  ;; not needed for Opusmodus anymore
	       "ta-utilities"
	       ))

