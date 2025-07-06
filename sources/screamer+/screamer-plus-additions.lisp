;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ADDITIONS TO SCREAMER PLUS
(in-package :cl-user)

;;; push-end — append ITEM to the end of the list in PLACE,
;;;            always producing a new list (even if PLACE is nil).
;;; Signature: (push-end item place) ⇒ new-place-value
(defmacro push-end (item place)
  "Append ITEM to the end of the proper list in PLACE.
PLACE is set to a fresh copy of its old value with ITEM appended.
Returns the new list."
  `(setf ,place
         (append (copy-list ,place)
                 (list ,item))))

;;; push-end-new — append ITEM to PLACE only if it is not already present.
;;;                 Supports the same keyword args as PUSHNEW:
;;;                 :key, :test, :test-not.
;;; Signature: (push-end-new item place &key key test test-not)
;;;            ⇒ new-place-value
(defmacro push-end-new (item place &key key test test-not)
  "Append ITEM to the end of the proper list in PLACE if ITEM
is not already a member according to KEY, TEST, or TEST-NOT.
If ITEM is found, PLACE is left unchanged.
Returns the new or existing list."
  (let ((item-var  (gensym "ITEM"))
        (place-var (gensym "PLACE"))
        (member-opts ()))
    ;; build MEMBER keyword arguments
    (when key      (push :key      member-opts) (push key      member-opts))
    (when test     (push :test     member-opts) (push test     member-opts))
    (when test-not (push :test-not member-opts) (push test-not member-opts))
    `(let ((,item-var  ,item)
           (,place-var ,place))
       (if (member ,item-var ,place-var ,@(nreverse member-opts))
           ;; already present: return the old list
           ,place-var
           ;; not present: set PLACE to a new list with ITEM at the end
           (setf ,place
                 (append (copy-list ,place-var)
                         (list ,item-var)))))))

;; export the symbols into CL-USER
(export '(push-end push-end-new) :cl-user)

(in-package :screamer+)

; EXPERIMENTS:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;==> BASED ON MEMBERS-OFV

;;; MIDICENTS

(defun equal-mc-pc (n1 n2)
(equal (/ (mod n1 1200) 100) n2))

(defun ascending-setv (x)
 (funcallv #'sort x #'<v))

(defun list-of-mcs-to-pcsv (x)
 (mapcarv #'(lambda (z) (/v (funcallv #'mod z 1200) 100)) x))

(defun make-mcsetv (x)
  (let (
        (z (make-variable))
       )
     (?::attach-noticer!
       #'(lambda()
           (when (and (bound? x) (every #'bound? (value-of x)))
              (do* (
                    (dec (?::apply-substitution x) (cdr dec))
                    (curr (car dec) (car dec))
                    (vals nil)
                    )
                  ((endp dec) 
                   (assert! (equalv z vals))
                   )
		  ;(declare (type list dec vals))
		  ;(declare (type fixnum curr))
                 (cl-user::push-end-new (value-of curr) vals :test #'equal-mc-pc :key #'(lambda (n) (/ (mod n 1200) 100)))
                 )
              )
           )
       x)
 (ascending-setv (list-of-mcs-to-pcsv z)))
)

;;; MIDI

(defun equal-m-pc (n1 n2)
(equal (mod n1 12) n2))

(defun list-of-m-to-pcv (x)
 (mapcarv #'(lambda (z) (funcallv #'mod z 12)) x))

(defun make-midisetv (x)
  (let (
        (z (make-variable))
       )
     (?::attach-noticer!
       #'(lambda()
           (when (and (bound? x) (every #'bound? (value-of x)))
              (do* (
                    (dec (?::apply-substitution x) (cdr dec))
                    (curr (car dec) (car dec))
                    (vals nil)
                    )
                  ((endp dec)
                   (assert! (equalv z vals))
                   )
		   ;(declare (type list dec vals))
		   ;(declare (type fixnum curr))
                 (cl-user::push-end-new (value-of curr) vals :test #'equal-m-pc :key #'(lambda (n) (mod n 12)))
                 )
              )
           )
       x)
 (ascending-setv (list-of-m-to-pcv z)))
)

(defun make-setv (x)
  (let (
        (z (make-variable))
       )
     (?::attach-noticer!
       #'(lambda()
           (when (and (bound? x) (every #'bound? (value-of x)))
              (do* (
                    (dec (?::apply-substitution x) (cdr dec))
                    (curr (car dec) (car dec))
                    (vals nil)
                    )
                  ((endp dec)
                   (assert! (equalv z vals))
                   )
                 ;(declare (type list dec vals))				   
		         ;(declare (type fixnum curr))
                 (pushnew (value-of curr) vals :test #'equal)
                 )
              )
           )
       x)
  (funcallv #'sort z #'<v)
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;===> BASED ON NOT-EQUALV FUNCTION

(defun interval-memberv (x y sequence)
  (if (and (bound? x) (bound? y))
      (member (- (value-of x) (value-of y)) sequence)

    (let (
	  (z (a-booleanv))
	  (i (a-numberv))
	  )
	  (assert! (=v i (-v x y)))
	  (assert! (eqv z (memberv i sequence)))

      (attach-noticer!
       #'(lambda()
	   (when (and (bound? y) (bound? x) (not (bound? i)))
	     (assert!-equalv z (memberv i sequence))
	     (when (and (known?-true z) (enumerated-domain-p i))
	       (assert!-memberv-internal
			   i
		(remove-if-not #'(lambda(e) (member e sequence))
			   (variable-enumerated-domain i))
		)
	       )
	     )
	   )
       i)

      z)
    )
  )

(defun interval-notv-memberv (x y sequence)
  (if (and (bound? x) (bound? y))
      (not (member (- (value-of x) (value-of y)) sequence))

    (let (
	  (z (a-booleanv))
  	  (i (a-numberv))
  	  )
  	  (assert! (=v i (-v x y)))
  	  (assert! (eqv z (notv (memberv i sequence))))

        (attach-noticer!
         #'(lambda()
  	   (when (and (bound? y) (bound? x) (not (bound? i)))
  	     (assert!-equalv z (notv (memberv i sequence)))
  	     (when (and (known?-true z) (enumerated-domain-p i))
  	       (assert!-memberv-internal
  			   i
  		(remove-if-not #'(lambda(e) (not (member e sequence)))
  			   (variable-enumerated-domain i))
  		)
  	       )
  	     )
  	   )
         i)

        z)
      )
    )

(defun abs-v (n)
 (maxv n (*v n -1)))

(defun abs-interval-memberv (x y sequence)
(if (and (bound? x) (bound? y))
    (member (abs (- (value-of x) (value-of y))) sequence)

  (let (
  (z (a-booleanv))
  (i (a-numberv))
  )
  (assert! (=v i (abs-v (-v x y))))
  (assert! (eqv z (memberv i sequence)))

    (attach-noticer!
     #'(lambda()
   (when (and (bound? y) (bound? x) (not (bound? i)))
     (assert!-equalv z (memberv i sequence))
     (when (and (known?-true z) (enumerated-domain-p i))
       (assert!-memberv-internal
		   i
	(remove-if-not #'(lambda(e) (member e sequence))
		   (variable-enumerated-domain i))
	)
       )
     )
   )
     i)

    z)
  )
)

(defun abs-interval-notv-memberv (x y sequence)
(if (and (bound? x) (bound? y))
    (not (member (abs (- (value-of x) (value-of y))) sequence))

  (let (
  (z (a-booleanv))
  (i (a-numberv))
  )
  (assert! (=v i (abs-v (-v x y))))
  (assert! (eqv z (notv (memberv i sequence))))

    (attach-noticer!
     #'(lambda()
   (when (and (bound? y) (bound? x) (not (bound? i)))
     (assert!-equalv z (notv (memberv i sequence)))
     (when (and (known?-true z) (enumerated-domain-p i))
       (assert!-memberv-internal
		   i
	(remove-if-not #'(lambda(e) (not (member e sequence)))
		   (variable-enumerated-domain i))
	)
       )
     )
   )
     i)

    z)
  )
)

(defun hard-memberv (x sequence)
  (if (bound? x)
      (member (value-of x) sequence)

    (let (
	  (z (a-booleanv))
	  (i (a-numberv))
	  )
	  (assert! (=v i (value-of x)))
	  (assert! (eqv z (memberv i sequence)))

      (attach-noticer!
       #'(lambda()
	   (when (and (bound? x) (not (bound? i)))
	     (assert!-equalv z (memberv i sequence))
	     (when (and (known?-true z) (enumerated-domain-p i))
	       (assert!-memberv-internal
			   i
		(remove-if-not #'(lambda(e) (member e sequence))
			   (variable-enumerated-domain i))
		)
	       )
	     )
	   )
       i)

      z)
    )
  )

  (defun mod-interval-memberv (x y sequence)
  (if (and (bound? x) (bound? y))
      (member (mod (- (value-of x) (value-of y)) 12) sequence)

    (let (
    (z (a-booleanv))
    (i (a-numberv))
    )
    (assert! (=v i (funcallv #'mod (-v x y) 12)))
    (assert! (eqv z (memberv i sequence)))

      (attach-noticer!
       #'(lambda()
     (when (and (bound? y) (bound? x) (not (bound? i)))
       (assert!-equalv z (memberv i sequence))
       (when (and (known?-true z) (enumerated-domain-p i))
         (assert!-memberv-internal
  		   i
  	(remove-if-not #'(lambda(e) (member e sequence))
  		   (variable-enumerated-domain i))
  	)
         )
       )
     )
       i)

      z)
    )
  )

  (defun mod-interval-notv-memberv (x y sequence)
  (if (and (bound? x) (bound? y))
      (not (member (mod (- (value-of x) (value-of y)) 12) sequence))

    (let (
    (z (a-booleanv))
    (i (a-numberv))
    )
    (assert! (=v i (funcallv #'mod (-v x y) 12)))
    (assert! (eqv z (notv (memberv i sequence))))

      (attach-noticer!
       #'(lambda()
     (when (and (bound? y) (bound? x) (not (bound? i)))
       (assert!-equalv z (notv (memberv i sequence)))
       (when (and (known?-true z) (enumerated-domain-p i))
         (assert!-memberv-internal
  		   i
  	(remove-if-not #'(lambda(e) (not (member e sequence)))
  		   (variable-enumerated-domain i))
  	)
         )
       )
     )
       i)

      z)
    )
  )

