(defpackage cluster-engine
  #+SBCL (:use :common-lisp :sb-ext)
  #+PWGL (:use :common-lisp :lw)
  #-(or SBCL PWGL) (:use :common-lisp) 
  (:nicknames :ce))

