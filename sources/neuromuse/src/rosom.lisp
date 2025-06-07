;; rosom.lisp for rosom

(in-package :neuromuse)

;(format t "rosom.lisp ...~%")

(defclass rosom (SOM)
  ((input-context :initform nil :initarg :input-context :accessor input-context :type list)
   (content :initform nil :initarg :content :accessor content :type list)
   (context :initform nil :initarg :context :accessor context :type list))
   (:documentation "rosom: recurrent oscillatory self-organising map")
   )

(defmethod initialize-instance :after ((self rosom) &key name)
  (let ((name-of-rosom (if name 
                          (make-new-symbol name)
                          (make-new-symbol 'rosom))))
     (setf (slot-value self 'name) name-of-rosom
	      (symbol-value name-of-rosom) self)
	name-of-rosom))

(defmethod print-object ((self rosom) stream)
  (format stream "<ROSOM ~S>" (name self) ))

(defmethod init ((self rosom) &key (input 8) (size 16))
   (if input (setf (car (topology self)) input)
     (setf input (car (topology self))))
   (if size (setf (cadr (topology self)) size)
     (setf size (cadr (topology self))))
   (setf (net self) (list 'nil 'nil))
   (dotimes (k size (setf (car (net self)) (nreverse (car (net self))))) ;; neurones som
     (push (make-instance 'neuron
			  :id (list k 0)
			  :age 0
			  :nn (name self))
	   (car (net self))))
   (dotimes (i size)
     (let ((nr (eval (nth i (car (net self))))))
       (dotimes (j input (setf (net nr) (nreverse (net nr)))) 
	 (push (list (list j i) (- .1 (random .2)) 0)
	       (net nr)))))
   (dotimes (k size (setf (cadr (net self)) (nreverse (cadr (net self))))) ;; neurones contexte
     (push (make-instance 'neuron
			  :id (list k 0)
			  :age 0
			  :nn (name self))
	   (cadr (net self))))
   (dotimes (i size)
     (let ((nr (eval (nth i (cadr (net self))))))
       (dotimes (j size (setf (net nr) (nreverse (net nr))))
	 (push (list (list j i) (- .1 (random .2)) 0)
	       (net nr)))))
   (setf (winner self) (random size)
	 (input self) (coerce (make-list input :initial-element 0) 'vector)
	 (output self) (make-list input :initial-element 0)
	 (input-context self) (loop for i from 0 to (1- size) collect (list 1 1 1))
	 (epoch self) 0)
  (values self))

(defun conteur (winner rosom)
  (let ((size (length (car (net rosom)))))
    (setf (input-context rosom)
	  (loop for i from 0 to (1- size)
		collect
		(let ((n (nth i (input-context rosom))))
		  (if (= winner i)
		      (list 1 (cadr n) (/ 1 (car n)))
		    (list (1+ (car n)) (cadr n)
			  (funcall #'min 1 (/ (1+ (car n)) (cadr n))))))))) )  ;;; A, Z, A / Z

; (setq titi (make-instance 'rosom :name 'titi :topology (list 5 36)))
; (init titi)
; (net titi)
; (mapcar #'length (net titi))
; (input-context titi)
; (conteur 13 titi)

(defmethod activation ((self rosom) &key (n nil))
  (let ((input (input self))  ;; descendre la variable au niveau neuron
	(temp (temp self))
	(net (car (net self))))  ;; attention on prend seulement som du rosom
    (if n
	(let ((neuron (nth n net)))
	  (loop for k from 0 to (1- (car (topology self)))
		collect
		(+ (* (elt input k) (cadr (nth k (net neuron))))
		   (- (/ temp 2)
		      (if (zerop temp) 0 (random temp))))))
	(loop for o from 0 to (1- (length net))
	      collect
	      (activation self :n o)))))

;(cadr (nth 0 (net (nth 0 (car (net titi))))))
;(elt (input titi) 0)
;(temp titi)
; (setf (input titi) #(.1 .7 .2 .6 .5))
; (activation titi :n 8)
; (activation titi)


(defmethod find-winner ((self rosom) &key (equality #'=) (inf #'<))
  (let ((win '((-1 696969))) (som (car (net self))) (vector (input self)))
    (loop for k from 0 to (1- (car (topology self)))
          do
          (let ((dist (euclidian vector (activation self :n k))))
            (if (funcall inf dist (cadar win))
              (setf win (list (list k dist)))
              (when (or (funcall equality dist (cadar win))
                    (funcall inf dist (cadar win)))
                (setf win (append win (list (list k dist)) ))
                ))))
    (if (> (length win) 1)
      (nth (random (length win)) win)
      (car win))))

; (find-winner titi)

(defun contentn (net n)
  ;; on peut mettre une temperature la...
  (coerce (mapcar #'cadr (net (nth n net)))
	  'vector))

; (mapcar #'cadr (net (nth 0 (car (net titi)))))

(defun rosom-learn (input rosom radius learn entrainement-rate temp-som temp-rosom &key (content-on 1) (context-on 1) (verbose t))
  (let ((netrosom (net rosom))
	(n (cadr (topology rosom))) ;(n (array-dimension (car netrosom) 0))
	distances
	w-som  ;; W
	context  ;; S
	w-rosom ;; V
	(winner '(-1 0))
	content-response
	context-response
	response
					;(winner ;(winner input netrosom))
					;(coord-w (2d (car winner) n))
	voisins
	)
    (setf w-som (car netrosom)
	  w-rosom (cadr netrosom)
	  context (coerce
		   (loop for c in (input-context rosom) collect (third c))
		   'vector))
    (loop for n from 0 to (1- n)
          do
          (setf  
           content-response (- 1 (+ (euclidian (contentn w-som n) input )
                                          (- (/ temp-som 2) (rand temp-som))))
           context-response (- 1 (+ (euclidian (contentn w-rosom n) context )
                                          (- (/ temp-rosom 2) (rand temp-rosom))))
           response (* (expt content-response content-on)
		       (expt context-response context-on)
		       (- 1 (/ 1 (car (elt (input-context rosom) n))))))
                  (when (> response (cadr winner))
                      (setf winner (list n response))))
       (when (minusp (car winner)) (setf winner (list (rand n) (cadr winner))))
       (conteur (car winner) rosom)  ;;<---
       ;;; voila, on a fixe ici les frequences et phases du rosom
       (setf voisins (voisins (2d (car winner) n) radius n))
       (when verbose (format t "~%win : ~S voisins : ~S" winner voisins))
       ;;correction du gagnant du SOM
       (when (not (zerop learn))
	 (loop for i from 0 to (1- (length input))
	       do
	       (setf (aref w-som (car winner) i) ;;xx
		     (+ (aref w-som (car winner) i)
			(* learn (- (elt input i) (aref w-som (car winner) i))))))
	 ;;correction des neurones voisins du SOM
	 (loop for neuron in voisins for p from 0 to (1- (length voisins))
	       do
	       (setf distances (append distances
				       (list (euclidian (2d (car winner) n)
								 (2d neuron n)))))
	       (let* ((correction
		       (* learn
			  (exp (/ (- (expt (nth p distances) 2))
				  (expt (* 2 radius) 2))))))  ;;;  changer ici eventuellement dynamiquement en fonction de l erreur
		 (loop for i from 0 to (1- (length input))
		       do
		       (setf (aref w-som neuron i)
			     (+ (aref w-som neuron i)
				(* correction (- (elt input i) (aref w-som neuron i))))))))
	 ;;correction du gagnant du ROSOM 
	 (loop for i from 0 to (1- n)
	       do
	       (setf (aref w-rosom (car winner) i)
		     (+ (aref w-rosom (car winner) i)
			(* learn (- (elt context i) (aref w-rosom (car winner) i))))))
	 ;;correction des neurones voisins du ROSOM
	 (loop for neuron in voisins for p from 0 to (1- (length voisins))
	       do
	       (let* ((correction
		       (* learn
			  (exp (/ (- (expt (nth p distances) 2))
				  (expt (* 2 radius) 2))))))  ;;;  changer ici eventuellement dynamiquement en fonction de l erreur
		 (loop for i from 0 to (1- n)
		       do
		       (setf (aref w-rosom neuron i)
			     (+ (aref w-rosom neuron i)
				(* correction (- (elt context i) (aref w-rosom neuron i)))))))))
         ;; jamais deux sans trois : maintenant, on tend a synchroniser les gagnants...
         ;;SYNCHRO du ROSOM
       (when (not (zerop entrainement-rate))
	 (loop for i from 0 to (1- n)
	       do
	       (setf (cadr (nth i (input-context rosom)))
		     (+ (cadr (nth i (input-context rosom)))
			entrainement-rate)))
	 ;;SYNCHRO des neurones voisins du ROSOM
	 (loop for neuron in voisins for p from 0 to (1- (length voisins))
	       do
	       (let ((correction
		      (* entrainement-rate
			 (exp (/ (- (expt (nth p distances) 2))
				 (expt (* 2 radius) 2))))))  ;;;  changer ici eventuellement dynamiquement en fonction de l erreur
		 (setf (cadr (nth neuron (input-context rosom)))
		       (+ (cadr (nth neuron (input-context rosom)))
			  (* correction (- (cadr (nth (car winner) (input-context rosom))) (cadr (nth neuron (input-context rosom))))))))))
       ;; voila
       (setf (epoch rosom) (1+ (epoch rosom)))
       (when verbose (format t "~%epoch : ~S~%"  (epoch rosom)))
       (let* ((winner-rep  (loop for i from 0 to (1- (length input))
				 collect
				 (aref w-som (car winner) i)))
	      (max (apply #'max winner-rep)))
	 (format t "~2D : ~S~%"
		 (car winner)
		 (mapcar #'(lambda (x) (if (< x max) 0 1)) winner-rep)))
       ))
