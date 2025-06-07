;;; code for Self-Organizing maps

(in-package :neuromuse)

;(format t "som.lisp ...~%")

(defclass som (ANN)
  ((radius
    :initform 1 :initarg :radius :accessor radius :type number)
   (neighbourhood
    :initform #'voisins :initarg :neighbourhood :accessor neighbourhood)
   (winner
    :initform 0 :initarg :winner :accessor winner :type integer)
   (distance ;; distance input > memoire, pour ne pas etre recalculee
    :initform 'euclidian :initarg :distance :accessor distance :type symbol)
   (topology ;; '(espace nombredimension autresdescripteurs)
    :initform '(euclidian 2) :initarg :topology :accessor topology :type list)
   (temp
    :initform 0.0 :initarg :temp :accessor temp :type number))
  (:documentation "som"))

(defmethod initialize-instance :after ((self som) &key name)
  (let ((name-of-som (if name 
                          (make-new-symbol name)
                          (make-new-symbol 'som))))
     (setf (slot-value self 'name) name-of-som
	   (symbol-value name-of-som) self)))

(defmethod print-object ((self som) stream)
  (format stream "<SOM ~S>" (name self) ))

(defmethod init ((self som) &key (size 16) (input 8))
  (setf (net self)
	(loop for k from 0 to (1- size)
	      collect
	      (make-instance 'neuron
			     :id (list k 0)
			     :age 0
			     :nn (name self))))
  (setf (epoch self) 0)
  (dotimes (i size)
    (let ((nr (eval (nth i (net self)))))
      (dotimes (j input (setf (net nr) (nreverse (net nr)))) 
	(push (list (list j i)
		    (- .5 (random 1.0)) 0)
	      (net nr)))))
  (setf (winner self) (nth (random size) (net self))
	(input self) (coerce (make-list input :initial-element 0) 'vector)
	(output self) (make-list input :initial-element 0))
  (values self))

(defgeneric activation (self &key n)
  (:documentation "Calcul l'activation de 'self'."))

(defmethod activation ((ann som) &key (n nil))
  (let ((input (input ann))  ;; descendre la variable au niveau neuron
	(temp (temp ann))
	(net (net ann)))
    (when (not temp) (setf temp .0))
    (if n
	(progn
	  (setf (output (nth n net))
		(let ((nnt (nth n net)))
		  (loop for k from 0 to (1- (length input))
			collect
			(+ (* (elt input k) (cadr (nth k (net nnt))))
			   (- (/ temp 2)
			      (if (zerop temp) 0 (random temp))))))
		(distance (nth n net))
		(euclidian input (output (nth n net))))
	  (values (output (nth n net))))
	(progn
	  (loop for n from 0 to (1- (length net))
		do
		(activation ann :n n))
	  (values)))))

(defmethod find-winner ((ann som) &key (inf #'< ) (equality #'= ))
  (when (not inf) (setf inf #'<))
  (when (not equality) (setf equality #'=))
  (activation ann)
  (let ((win (list)))
    (dotimes (k (length (net ann)))
      (let ((dist (distance (nth k (net ann)))))
	(when (not win)
	  (push (list k dist) win))
	(if (member t (mapcar (lambda (x) (funcall equality dist (cadr x))) win))
	    (push (list k dist) win)
	    (when (member t (mapcar (lambda (x) (funcall inf dist (cadr x))) win))
	      (setf win (list (list k dist)))))))
    (print win)
    (values (print
     (if (> (length win) 1)
	 (let ((w (nth (random (length win)) win)))
	   (setf (output ann) (output (nth (car w) (net ann))))
	   (list (nth (car w) (net ann)) (cadr w)))
	 (progn
	   (setf (output ann) (output (nth (caar win) (net ann))))
	   (list (nth (caar win) (net ann)) (cadar win))))))) )

;;*******************************************
;;********* apprentissage *******************
;;*******************************************

(defmethod learn ((ann som))
  (if (zerop (learn-fact ann))
      (progn
	(setf (winner ann) (find-winner ann))
	(output ann))
      (let ((input (input ann))
	    (n (length (net ann)))
	    (winner (find-winner ann))
	    (radius (1- (radius ann)))
	    (learn (learn-fact ann))
	    (topos (topology ann))
	    coord-w
	    voisins
	    f g h)
    ;correction du gagnant
	(setf (winner ann) winner
	      f #'2d ;(read-from-string (format nil "~Sd" (cadr topos)))
	      h #'d2 ;(read-from-string (format nil "d~S" (cadr topos)))
	      coord-w (funcall f (car (id winner)) n)
	      voisins (remove-duplicates
		       (funcall (neighbourhood ann) coord-w radius (floor (expt n (/ 1 (cadr topos)))))
		       :test #'equalp)
	      g (car topos))
	(when (verbose ann)
	  (format t "~%win : ~S ~S" winner coord-w))
					;    (print voisins)
	(loop for voisin in (remove coord-w voisins :test #'equalp) ;; winner inclu
	      do
		 (let* ((k (funcall h (car voisin) (cadr voisin) n))
			(vn (nth k (net ann)))
			(err (distance vn))
					;(err (funcall (distance ann) input (activation ann :n k)))
			correction)
		   (when (not (zerop err))
		     (setf correction (mexican-hat learn err (funcall (distance ann) voisin coord-w))))
	    ;(print (list voisin coord-w err correction))
 ;chapeau mexicain
		   (dotimes (i (length input))
		     (let ((synapse (nth i (net vn))))
		       (setf (cadr (nth i (net vn)))
			     (+ (cadr synapse)
				(* correction (- (elt input i) (cadr synapse)))))))))
	(values))))

#|
(defmethod nnsave ((self som) &optional (path "saved-som.lisp"))
  (let ((slots (structure-slot-names (type-of self))))
    (with-open-file (stream path
			    :direction :output
			    :if-exists :append
			    :if-does-not-exist :create)
      (format t "~&(make-instance 'som")
      (loop for s in slots
	    do
	    (let ((val (funcall s self)))
	    (case val
	      (functionp 
	    (format t "~%:~S '~S"
		    s
		    (funcall s self)
		    ))
      (format t ")~%")
      t))))))
|#

;;; exemple
;(defvar SOM)
;(setf SOM (make-instance 'som :name 'tata :input 45 :topology (list 100 2)))
;(init SOM :size 100 :input 45)
;(setf (topology SOM) (list 100 2))
; (inspect SOM)
; (setf (input SOM) (coerce (loop for i from 0 to 44 collect (random 1.0)) 'simple-vector))
; (activation SOM :n (car (id (car (find-winner SOM)))))
; (2d (car (id (car (find-winner SOM)))) (length (net SOM)))
;
;(setf (learn-fact SOM) .6)
;(setf (temp SOM) .0)
;(learn SOM)




