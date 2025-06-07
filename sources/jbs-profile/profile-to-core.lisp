(defpackage jbs-profile
  (:use :common-lisp :pw :iterate :sb-ext)) ; 

(in-package :jbs-profile)

(defun Profile-up/down? (up/down?)  (if (eq up/down? :up) 1 2)) ;valori del menu

(defun Profile-int-note? (mode?)  (if (eq mode? :inter) 1 2)) ;valori del menu

(defun Profile-inclu? (inclu?)  (if (eq inclu? :yes) 1 2)) ;valori del menu

(defun Profile-orig-first? (start?)  (if (eq start? :first) 1 2)) ;valori del menu

(defun Profile-baric-first? (start?)  (if (eq start? :first) 1 2)) ;valori del menu

(defun Profile-stop-circ-scal? (mode?)  (cond ((eq mode? :stop) 1)
                                           ((eq mode? :circ) 2)
                                           ((eq mode? :scal) 3))) ;valori del menu

(defun Profile-lecture? (lecture?)  (if (eq lecture? :stop) 1 2)) ;valori del menu

(defun Four-forms-menu? (four-forms?)  (cond ((eq four-forms? :original) 1)
                                             ((eq four-forms? :reverse) 2)
                                             ((eq four-forms? :inversion) 3)
                                             ((eq four-forms? :rever-inver) 4)));valori del menu



; (load "/Users/julienvincenot/Max-PW-Bach-User/pure-lisp-libs/adaptations-pure-lisp/morphologie.lisp")
; (load "/Users/julienvincenot/Max-PW-Bach-User/pure-lisp-libs/adaptations-pure-lisp/jbs-profile/profile_all.lisp")
; (load "/Users/julienvincenot/Max-PW-Bach-User/pure-lisp-libs/adaptations-pure-lisp/jbs-profile/profile-generic-functions.lisp")

; (save-lisp-and-die "/Users/julienvincenot/Max-PW-Bach-User/sbcl-cores/pw+fun+iter+pmc+profile.core")