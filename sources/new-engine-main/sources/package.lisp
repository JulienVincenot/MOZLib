(defpackage new-engine
  #+SBCL (:use :common-lisp :sb-ext :iterate)
  #+PWGL (:use :common-lisp :lw)
  #-(or SBCL PWGL) (:use :common-lisp) 
  (:nicknames :ne))

