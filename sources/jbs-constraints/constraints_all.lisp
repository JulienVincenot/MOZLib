(in-package :omcs)

(eval-when (:compile-toplevel :load-toplevel :execute)
  ;; here we should have all the symbols from below
  ;; but as strings (uppercase, please...)
  (dolist (name '("M" "?IF" "?1" "?2" "?3" "?4" "?5" "?6" "?7"
		  "?8" "?9" "?10" "?11" "?12" "?13" "?14" "?15" "?16" "?17" "?18" "?19" "?20" "?21" "?22" "?23" "?24" "?25" "?26" "?27" "?28" "?29" "?30" "?31" "?32" "?33" "?34" "?35" "?36" "?37" "?38" "?39" "?40" "?41" "?42" "?43" "?44" "?45" "?46" "?47" "?48" "?49" "?50" "?51" "?52" "?53" "?54" "?55" "?56" "?57" "?58" "?59" "?60" "?61" "?62" "?63" "?64" "?65" "?66" "?67" "?68" "?69" "?70" "?71" "?72" "?73" "?74" "?75" "?76" "?77" "?78" "?79" "?80" "?81" "?82" "?83" "?84" "?85" "?86" "?87" "?88" "?89" "?90" "?91" "?92" "?93" "?94" "?95" "?96" "?97" "?98" "?99" "?100" "E" "RL" "L"))
    (intern name (find-package :omcs))))
#|
(defpackage :jbs-constraints
  (:documentation "This is the jbs-constraints package.")
  (:use :cl :pw :iterate :omcs :sb-ext)
  (:import-from :omcs omcs::m omcs::?if omcs::?1 omcs::?2 omcs::?3 omcs::?4 omcs::?5 omcs::?6 omcs::?7 omcs::?8 omcs::?9 omcs::?10 omcs::?11 omcs::?12 omcs::?13 omcs::?14 omcs::?15 omcs::?16 omcs::?17 omcs::?18 omcs::?19 omcs::?20 omcs::?21 omcs::?22 omcs::?23 omcs::?24 omcs::?25 omcs::?26 omcs::?27 omcs::?28 omcs::?29 omcs::?30 omcs::?31 omcs::?32 omcs::?33 omcs::?34 omcs::?35 omcs::?36 omcs::?37 omcs::?38 omcs::?39 omcs::?40 omcs::?41 omcs::?42 omcs::?43 omcs::?44 omcs::?45 omcs::?46 omcs::?47 omcs::?48 omcs::?49 omcs::?50 omcs::?51 omcs::?52 omcs::?53 omcs::?54 omcs::?55 omcs::?56 omcs::?57 omcs::?58 omcs::?59 omcs::?60 omcs::?61 omcs::?62 omcs::?63 omcs::?64 omcs::?65 omcs::?66 omcs::?67 omcs::?68 omcs::?69 omcs::?70 omcs::?71 omcs::?72 omcs::?73 omcs::?74 omcs::?75 omcs::?76 omcs::?77 omcs::?78 omcs::?79 omcs::?80 omcs::?81 omcs::?82 omcs::?83 omcs::?84 omcs::?85 omcs::?86 omcs::?87 omcs::?88 omcs::?89 omcs::?90 omcs::?91 omcs::?92 omcs::?93 omcs::?94 omcs::?95 omcs::?96 omcs::?97 omcs::?98 omcs::?99 omcs::?100 omcs::e omcs::rl omcs::l)
  (:export
   ))
|#

(defpackage :jbs-constraints
  (:use :common-lisp :pw :iterate :morphologie :jbs-cmi :jbs-profile :omcs :sb-ext)
  )


; (load "~/Documents/Max 8/Packages/MOZLib/_dev_only/pure-lisp-sources/adaptations-pure-lisp/jbs-constraints/jbs-generic-functions.lisp")
; (load "~/Documents/Max 8/Packages/MOZLib/_dev_only/pure-lisp-sources/adaptations-pure-lisp/jbs-constraints/pmc-boxes.lisp")
; (load "~/Documents/Max 8/Packages/MOZLib/_dev_only/pure-lisp-sources/adaptations-pure-lisp/jbs-constraints/utils.lisp")


;;;       JBS-CONSTRAINTS for PWGL

;;; Copyright (c) 2009, Jacopo Baboni Schilingi.  All rights reserved.
;;; Copyright (c) 2007, Kilian Sprotte.  All rights reserved.

;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions
;;; are met:

;;;   * Redistributions of source code must retain the above copyright
;;;     notice, this list of conditions and the following disclaimer.

;;;   * Redistributions in binary form must reproduce the above
;;;     copyright notice, this list of conditions and the following
;;;     disclaimer in the documentation and/or other materials
;;;     provided with the distribution.

;;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR 'AS IS' AND ANY EXPRESSED
;;; OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
;;; WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
;;; DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
;;; GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
;;; WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.