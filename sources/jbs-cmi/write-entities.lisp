;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;==============================================================================================
;;;                                JBS - CMI    2009    
;;;==============================================================================================
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
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
;

;
;===================================     Package    =============================================
;
(in-package :jbs-cmi)
;==========================  MENU   ===============
;

(define-box write-music-entity ((rhythm (1 1 1 1)) (pitches (60 62 64 65)) 
                                (note-expressions (":accent")))
  ""
  :non-generic t
  :class cmi-box
  )


(define-menu jbs-cmi :print-name "JBS-Cmi")
(in-menu jbs-cmi)
;
;

(define-menu write-music-entities :in jbs-cmi)
(in-menu write-music-entities)

;
;;;==============================================================================================
;                                    
;;;==============================================================================================
;
#|


(define-box write-music-entity ((rhythm (1 1 1 1)) (pitches (60 62 64 65)) 
                                (note-expressions (":accent")))
  ""
  :non-generic t
  :class cmi-box
  (let* ((rhythm (if (< (length rhythm) (length pitches)) 
                     (complete-list rhythm (length pitches))
                   rhythm))
         (pitches (complete-list pitches (length rhythm)))
         (note-expressions (if (< (length note-expressions) (length rhythm))
                               (complete-list note-expressions (length rhythm))
                             note-expressions)))

    (if (some #'listp rhythm)
       ; (let ((ris nil))
          ;(dotimes (x (length note-expressions) (nreverse ris))
           ; (push (ccl::insert-expression
               ;   (ccl::subseq (nth x
        (let* ((measure (ccl::make-measure rhythm))
               (chords (ccl::collect-enp-objects measure :chord :no-rest-p t)))
          (loop for pitch in pitches
                for chord in chords
                do
                (ccl::setpitches chord (pw::list! pitch)))
          
          (ccl::collect-score-info measure :score-notation)) ;) 0)
                  ; (nth x (pw::list! note-expressions))) ris)))

      (loop for rtm in rhythm  ;jbs method approuved by Kuuskankare
            for pitch in pitches
            for n-express in note-expressions
            collect 
            (list (abs rtm) (list (list (signum rtm) :notes (pw::list! pitch) :expressions (pw::list! n-express))))))))
                 
                 

        
 |# 
;
;;;==============================================================================================
;                                       add-expressions
;;;==============================================================================================
;
#|


(define-box add-expressions ((score ()) 
                             (expressions ":accent"))
  ""
  (let* ((ris nil)
         (length-chords (length (ccl::collect-enp-objects score :chord)))
         (expressions (if (< (length (pw::list! expressions)) length-chords)
                          (jbs-cmi::complete-list (pw::list! expressions) length-chords)
                        expressions)))
    (dotimes (x length-chords (nreverse ris))
      (push (ccl::insert-expression (nth x (ccl::collect-enp-objects score :chord))
                                    (nth x expressions)) ris))))
         

|#

;
;;;==============================================================================================
;                                       WRITE GRACE NOTE MUSIC ENTITY
;;;==============================================================================================
;
(defmacro pop-or-last (place)
  `(prog1
       (car ,place)
     (when (cdr ,place)
       (setf ,place (cdr ,place)))))

(define-box write-grace-note-music-entity ((rhythm (1 1 1 1)) (pitches (60 62 64 65))
					   (expressions (":accent"))
					   (grace-notes (61 63 61 63 61))
					   (where? 1)
					   (grace-expressions (":slur1")))
  "THANKS TO KILIAN SPROTTE!!!"
  :non-generic t
  :class cmi-box
  (labels ((stuck-on-last (list)
	     (null (cdr list)))
	   (make-event (restp dur notes expressions)
	     `(,(abs dur) ((,(if restp -1 1)
			     :notes ,(if restp '(60) notes)
			     :expressions ,expressions))))
	   (make-grace-group (notes)
	     `(1
	       (,@(iter
		   (for note in notes)
		   (collect `(1 :notes ,(ensure-list note) :expressions
				,(ensure-list (pop-or-last grace-expressions))))))
	       :class :grace-beat))
	   (ensure-list (obj)
	     (if (listp obj) obj (list obj))))
    (let ((where? (ensure-list where?)))
      (iter
	(for i upfrom 0)
	(for at-end = (and (stuck-on-last rhythm)
			   (stuck-on-last pitches)))
	(for at-end2 previous at-end)
	(until at-end2)	
	(for dur = (pop-or-last rhythm))
	(for restp = (minusp dur))
	(when (and (first-time-p)
		   (member 0 where?))
	  (collect (make-grace-group (pop-or-last grace-notes))))
	(collect (make-event
		  restp
		  dur
		  (unless restp (ensure-list (pop-or-last pitches)))
		  (unless restp (ensure-list (pop-or-last expressions)))))
	(when (member (1+ i) where?)
	  (collect (make-grace-group (pop-or-last grace-notes))))))))