;;;;; BEFORE : RUN SBCL WITH THE CORE OF MOZ LIB

(defpackage cluster-engine
  #+SBCL
  (:use :common-lisp :sb-ext)
  #-SBCL
  (:use :common-lisp)
  (:nicknames :ce))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defparameter *current-directory* 
  (pathname-directory *load-truename*))

(defun load-local (lisp-file-name)
  "Loads a lisp file in the directory of this file."
  (load 
   (make-pathname :directory (append *current-directory* '("sources"))
                  :name lisp-file-name
                  :type "lisp")))

;;;  :pw  ;;;;;
(load-local "from-studio-flat")
(load-local "01.domain")
(load-local "02.engine")
(load-local "03.Fwd-rules")
(load-local "04.Backtrack-rules")
(load-local "05.rules-interface")
(load-local "05a.rules-interface-1engine")
(load-local "05b.rules-interface-2engines")
(load-local "05c.rules-interface-2engines")
(load-local "05d.rules-interface-2engines")
(load-local "05d-2.rules-interface-2engines")
(load-local "05e.rules-interface-2engines")
(load-local "05f.rules-interface-3engines")
(load-local "05g.rules-interface-any-n-engines")
(load-local "05h.rules-higher-level")
(load-local "05i.rules-stop-search")
(load-local "05n.rules-interface-nn-engines")
(load-local "05o.new-canon-rule")
(load-local "06.heuristic-rules-interface")
(load-local "06a.heuristic-rules-interface-1engine")
(load-local "06b.heuristic-rules-interface-2engines")
(load-local "06c.heuristic-rules-interface-2engines")
(load-local "06d.heuristic-rules-interface-2engines")
(load-local "06e.heuristic-rules-interface-2engines")
(load-local "06f.heuristic-rules-interface-3engines")
(load-local "06g.heuristic-rules-interface-any-n-engines")
(load-local "06h.heuristic-rules-interface-added2020")
(load-local "07.backjumping")
(load-local "08.decode")
(load-local "09.utilities")

;(load-local "09b.markov-tools")
;(load-local "09c.cluster-energy-profile")

(load-local "12.debug-tools")
(load-local "13.convert-pmc-rules")

(load-local "_000.main-interface")

#|
;;;;;; PW and Co.

;(load "~/Dropbox/cluster-to-Max-Orjan/other-libraries/iter.lisp")
;(load "~/Dropbox/cluster-to-Max-Orjan/other-libraries/pw-common-language.lisp")
;(load "~/Dropbox/cluster-to-Max-Orjan/other-libraries/pw_profile_functions.lisp")
=======
(load "~/Dropbox/cluster-to-Max-Orjan/other-libraries/iter.lisp")
(load "~/Dropbox/cluster-to-Max-Orjan/other-libraries/pw-common-language.lisp")
(load "~/Dropbox/cluster-to-Max-Orjan/other-libraries/pw_profile_functions.lisp")
|#

;;;;;; gen-domains
(load-local "_001.gen_domains")

(in-package pw)
(defun lst (&rest args) args)

;;;;;;;;;;; PLEASE un-comment the proper one and comment the other 
;;;;;;;;;;; (for some reason save-lisp-and-die doesn't understand the ~/ address...)
; 
;(save-lisp-and-die "/Users/orjansandred/Dropbox/cluster-to-Max-Orjan/cluster19.core")
;(save-lisp-and-die "/Users/julienvincenot/Dropbox/cluster-to-Max-Orjan/new-approach/cluster.core")
;(save-lisp-and-die "/Users/orjansandred/cluster-test.core")
(save-lisp-and-die "/Users/orjansandred/cluster-test.core")

;;;;;;;;;;;

; (print (ClusterEngine  10 t nil nil '((4 4)) '((1/4)(1/8)) '((50) (51)) '((1/4)(1/8)) '((50) (51))))
