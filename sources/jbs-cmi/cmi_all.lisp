(in-package :cl-user)

(defpackage :jbs-cmi
  (:documentation "This is the jbs-cmi package.")
  (:use :cl :pw :iterate :sb-ext)
  (:export
   
   ))


; (load "~/Documents/Max 8/Packages/MOZLib/_dev_only/pure-lisp-sources/adaptations-pure-lisp/jbs-cmi/box-classes.lisp")
; (load "~/Documents/Max 8/Packages/MOZLib/_dev_only/pure-lisp-sources/adaptations-pure-lisp/jbs-cmi/generic-functions.lisp")
; (load "~/Documents/Max 8/Packages/MOZLib/_dev_only/pure-lisp-sources/adaptations-pure-lisp/jbs-cmi/matrix-boxes.lisp")
; (load "~/Documents/Max 8/Packages/MOZLib/_dev_only/pure-lisp-sources/adaptations-pure-lisp/jbs-cmi/pitch-boxes.lisp")
; (load "~/Documents/Max 8/Packages/MOZLib/_dev_only/pure-lisp-sources/adaptations-pure-lisp/jbs-cmi/segmentations.lisp")
; (load "~/Documents/Max 8/Packages/MOZLib/_dev_only/pure-lisp-sources/adaptations-pure-lisp/jbs-cmi/special-combinations-boxes.lisp")
; (load "~/Documents/Max 8/Packages/MOZLib/_dev_only/pure-lisp-sources/adaptations-pure-lisp/jbs-cmi/useful-devices.lisp")

; (save-lisp-and-die "/Users/julienvincenot/Max-PW-Bach-User/sbcl-cores/pw+fun+iter+pmc+profile+cmi.core")


;;;       JBS-CMI for PWGL

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
