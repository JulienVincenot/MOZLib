;; MLP et recurrent MLP

(in-package :neuromuse)

;(format t "mlp.Lisp ...~%")

;; Multi Layered Perceptron

(defclass MLP (ann)
  ((name :initform 'mlp
	 :initarg :name
	 :reader name
	 :accessor name
	 :type symbol)
   (in-size :initform 2
	    :initarg :in-size
	    :reader in-size
	    :accessor in-size
	    :type integer)
   (out-size :initform 1
	     :initarg :out-size
	     :reader out-size
	     :accessor out-size
	     :type integer)
   (hidden-size :initform '(2)
		:initarg :hidden-size
		:reader hidden-size
		:accessor hidden-size
		:type list)
   (previous :initform '()
	     :initarg :previous
	     :reader previous
	     :accessor previous
	     :type list)
   (goal :initform '()
	     :initarg :goal
	     :reader goal
	     :accessor goal
	     :type list)
   (slope :initform 1.0
	  :initarg :solpe
	  :reader slope
	  :accessor slope
	  :type float)
   (hidden-fun :initform #'logistic
	  :initarg :hidden-fun
	  :reader hidden-fun
	  :accessor hidden-fun
	  :type function)
   (out-fun :initform #'logistic
	  :initarg :out-fun
	  :reader out-fun
	  :accessor out-fun
	  :type function)
   (threshold :initform .001
	  :initarg :threshold
	  :reader threshold
	  :accessor threshold
	  :type float)
   (stop :initform 1000
	  :initarg :stop
	  :reader stop
	  :accessor stop
	  :type integer))
  (:documentation "MLP"))

(defmethod print-object ((object MLP) stream)
  (format stream
          "<mlp ~S: ~D input~:P, ~D hidden layer~:P, ~D output~:P>"
          (string (name object))
	  (in-size object)
          (length (hidden-size object))
          (out-size object) )
  (values))

;; defini la structure du net = hierarchie ascendante:
; (liste Hidden-j -> Input-i), ..., (list Out-k -> Hidden-j)
(defun init-mlp-net (in-size out-size &rest hidden-sizes)
  "initialisation random du reseau d'un MLP."
  (let ((hidden (list)))
    (dotimes (h (1+ (length hidden-sizes)))
      (setf hidden
	    (append hidden
		    (list (cond ((zerop h)
				 (make-listarray (car hidden-sizes) in-size))
				((= h (length hidden-sizes))
				 (make-listarray out-size (car (last hidden-sizes))))
				(t
				 (make-listarray (nth h hidden-sizes) (nth (1- h)  hidden-sizes)))))) ))
    (dolist (h hidden)
      (dotimes (i (length h))
	(dotimes (j (length (car h)))
	  (setf (nth j (nth i h)) (- (random 1.0) .5)))))
    (values hidden)))

(defmacro make-MLP (name in out &rest hid)
  (cond ((not (boundp name))
         (let ((net
                (make-instance 'mlp
                  :name name
                  :in-size in
		  :hidden-size hid
                  :out-size out
                  :last-error 1000
                  :net (apply #'init-mlp-net (append (list in out) hid))
                  :creation-date (get-universal-time))))
           `(defvar ,name ,net) ))
        ((ann-p (symbol-value name))
         (warning-msg (format nil "~S already exists ! ~S"
                          name
                          (type-of (symbol-value name))
                          )))
        (t
	 (let ((net
		(make-instance 'mlp
			       :name name
			       :in-size in
			       :hidden-size hid
			       :out-size out
			       :last-error 1000
			       :net (apply #'init-mlp-net (append (list in out) hid))
			       :creation-date (get-universal-time))))
	   `(setf ,name ,net)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; backpropagation

(defun output-signal-error (theorical-output actual-output)
  (assert (= (length theorical-output) (length actual-output)))
  (multiply-2-vectors
   (substract-2-vectors
    (make-list (length actual-output) :initial-element 1.0)
    actual-output)
   (multiply-2-vectors
    (substract-2-vectors theorical-output actual-output)
    actual-output)))

(defun hidden-signal-error (hidden-activation hidden-error-estimation)
  (assert (= (length hidden-activation) (length hidden-error-estimation)))
  (multiply-2-vectors
   (substract-2-vectors
    (make-list (length hidden-activation) :initial-element 1)
    hidden-activation)
   (multiply-2-vectors
    hidden-error-estimation
    hidden-activation)))

(defun hidden-error-estimation (error-retropopagation)
  (let ((f '()))
    (dotimes (i (length (car error-retropopagation)) (reverse f))
      (let ((temp 0))
        (dotimes (j (length error-retropopagation) (push temp f))
          (setf temp (+ temp (nth i (nth j error-retropopagation)))))))))

(defun update-hidden-weights (hidden-layer input hidden-signal-error n)
  (let ((DW (make-listarray (length hidden-layer) (length (car hidden-layer)))))
    (dotimes (i (length hidden-signal-error))
      (dotimes (j (length input))
        (setf (nth j (nth i DW))
	      (* (elt hidden-signal-error i) (elt input j) n))))
    (add-2-matrices hidden-layer DW)))

(defun update-output-weights (output-layer hidden-answer output-signal-error n)
  (let ((DZ (make-listarray (length output-layer) (length (car output-layer)))))
    (dotimes (i (length output-signal-error))
      (dotimes (j (length hidden-answer))
        (setf (nth j (nth i DZ))
	      (* (elt output-signal-error i) (elt hidden-answer j) n))))
    (add-2-matrices output-layer DZ)))

(defun error-retropropagation (output-layer output-signal-error)
  (let ((dd (make-listarray (length output-layer) (length (car output-layer)))))
    (dotimes (i (length output-layer))
      (dotimes (j (length (car output-layer)))
        (setf (nth j (nth i dd)) (elt output-signal-error i))))
    (hadamar-product output-layer dd)))

(defmethod backpropagate ((mlp mlp) &optional in)
  (let ((goal (goal mlp))
	(net (noise mlp (* (learn-fact mlp) (net-temp mlp))))
	(input (if in in (input mlp)))
	(learn (learn-fact mlp))
	(hidden-func (hidden-fun mlp))
	(out-func (out-fun mlp))
	(thresh (threshold mlp))
	(hidden-answer-cell (list))
	(slope (slope mlp))
	output-answer-cell
	out-signal-error
	(hidden-signal-error (list))
	(e 10000))
    (dotimes (down (- (length (net mlp)) 1))  ;; 1- activation = top->down
      (if (zerop down)
	  (push (funcall hidden-func (multiply-matrix-and-vector (car net) input)
			 :thresh thresh
			 :slope slope)
		hidden-answer-cell)
	  (push (funcall hidden-func (multiply-matrix-and-vector (nth down net)
								 (nth (1- down) hidden-answer-cell))
			 :thresh thresh
			 :slope slope)
		hidden-answer-cell)))
    (setf output-answer-cell (funcall out-func (multiply-matrix-and-vector (car (last net))
									   (car hidden-answer-cell))
				      :slope slope
				      :thresh thresh)
	  out-signal-error (output-signal-error goal output-answer-cell))  ; output / goal
    (setf (output mlp) output-answer-cell)
    (dotimes (up (length hidden-answer-cell))  ;; 2- signal error = bottom->up
      (if (zerop up)
	  (push (hidden-signal-error (car hidden-answer-cell)
				     (hidden-error-estimation
				      (error-retropropagation (car (last net)) out-signal-error)))
		hidden-signal-error)
	  (push (hidden-signal-error (nth up hidden-answer-cell)
				     (hidden-error-estimation
				      (error-retropropagation (nth (- (length net) up 1) net)
							      (car hidden-signal-error)))) ;(nth (- up 1)
		hidden-signal-error)))
    (setf hidden-answer-cell (reverse hidden-answer-cell))
    (dotimes (down (length hidden-signal-error))  ;;3- update = top->down
      (if (zerop down)
	  (setf (car (net mlp)) (update-hidden-weights (car net) input
						       (car hidden-signal-error)
						       learn))
	  (setf (nth down (net mlp)) (update-hidden-weights (nth down net)
							    (nth (- down 1) hidden-answer-cell)
							    (nth down hidden-signal-error)
							    learn))))
    (setf (car (last (net mlp))) (update-output-weights (car (last net))
							(car (last hidden-answer-cell))
							out-signal-error
							learn)
	  e (check-error output-answer-cell goal thresh))
    (values e)))

(defmethod run-mlp ((mlp mlp) &key in)  ;in pour method rmlp...
    (let ((hidden-answer-cell (list))
	  (net (noise mlp (net-temp mlp))))
     (dotimes (w (- (length net) 1))
       (if (zerop w)
         (push (funcall (hidden-fun mlp) (multiply-matrix-and-vector (car net) (if in in (input mlp))))
	       hidden-answer-cell)
         (push (funcall (hidden-fun mlp) (multiply-matrix-and-vector (nth w net) (car hidden-answer-cell)))
               hidden-answer-cell)))
     (setf (output mlp)
	   (funcall (out-fun mlp)
		    (multiply-matrix-and-vector (car (last net)) (car hidden-answer-cell))
		    :slope (slope mlp)
		    :temp (temp mlp)
		    :thresh 0))
     (values (output mlp))))

(defmethod activation ((ann mlp) &key (neuron nil))
  (declare (ignore neuron))
  (run-mlp ann :in (input ann)))

(defmethod clear ((self mlp) )
   (setf (previous self) (net self)
         (net self) (apply #'init-mlp-net (append (list (in-size self)
							(out-size self))
						  (hidden-size self)))
         (epoch self) 0
         (last-stop self) '(0 nil)
         (current-error self) 1000
         (last-error self) 1000
         (history self) '()
         (creation-date self) (GET-UNIVERSAL-TIME)
         (modification-date self) '())
   (format t "~%MLP ~S cleared.~%" (name self))
   self)

(defmethod save ((self mlp) &optional path)
  (when (not path) (setf path (format nil "~S.lisp" (name self))))
  (let ((slots (structure-slot-names (type-of self))))
    (with-open-file (stream path
			    :direction :output
			    :if-exists :supersede
			    :if-does-not-exist :create)
      (format stream "(in-package :neuromuse)")
      (format stream "~&(make-instance 'mlp")
      (loop for s in slots
	 do
	   (let ((slot-value (funcall s self)))
	     (if (listp slot-value)
		 (format stream " :~S '~S~&" s slot-value)
		 (format stream " :~S ~S~&" s slot-value))))
      (format stream ")~%")))
  (format t "~& MLP ~S saved to file ~S !" (name self) path)
  (values))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Elman recurrent MLP

(defclass rMLP (mlp)
  ((recurrent-layer
    :initform 0 ; > todo ; liste
    :initarg :recurrent-layer
    :reader recurrent-layer
    :accessor recurrent-layer
    :type integer)
   (recurrent-layer-activation
    :initform nil
    :initarg :recurrent-layer-activation
    :reader recurrent-layer-activation
    :accessor recurrent-layer-activation
    :type list) )
  (:documentation "Elman Recurrent Multi-Layer Perceptron."))

(defmacro make-rMLP (name in out recurrent-layer &rest hid) ;; h0 =0
  (cond ((not (boundp name))
         (let ((net
                (make-instance 'rmlp
                  :name name
                  :in-size in
                  :hidden-size hid
                  :out-size out
		  :recurrent-layer recurrent-layer
		  :recurrent-layer-activation (make-list (nth recurrent-layer hid) :initial-element 0)
                  :net (apply #'init-mlp-net (append (list (+ in (nth recurrent-layer hid)) out) hid))
                  :creation-date (get-universal-time))))
           `(defvar ,name ,net) ))
        ((ann-p (symbol-value name))
         (warning-msg (format nil "~S already exists! ~S"
                          name
                          (type-of (symbol-value name))
                          name)))
        (t
         (let ((net
                (make-instance 'rmlp
                  :name name
                  :in-size in
                  :hidden-size hid
                  :out-size out
		  :recurrent-layer recurrent-layer
		  :recurrent-layer-activation (make-list (nth recurrent-layer hid) :initial-element 0)
                  :net (apply #'init-mlp-net (append (list (+ in (nth recurrent-layer hid)) out) hid))
                  :creation-date (get-universal-time))))
           `(setf ,name ,net)  )))
  (values (eval name)))

(defmethod backpropagate ((mlp rmlp) &optional in)
  (let ((goal (goal mlp))
	(input (if in in (append (input mlp) (recurrent-layer-activation mlp))))
	(net (noise mlp (* (learn-fact mlp) (net-temp mlp))))
	(learn (learn-fact mlp))
	(hidden-func (hidden-fun mlp))
	(out-func (out-fun mlp))
	(thresh (threshold mlp))
	(hidden-answer-cell (list))
	(slope (slope mlp))
	output-answer-cell
	out-signal-error
	(hidden-signal-error (list))
	(e 10000))
    (dotimes (down (- (length net) 1))  ;; 1- activation = top->down
      (if (zerop down)
	  (push (funcall hidden-func (multiply-matrix-and-vector (car net) input)
			 :thresh thresh
			 :slope slope)
		hidden-answer-cell)
	  (push (funcall hidden-func (multiply-matrix-and-vector (nth down net)
								 (car hidden-answer-cell))
			 :thresh thresh
			 :slope slope)
		hidden-answer-cell))
      (when  (= down (recurrent-layer mlp))
	(setf (recurrent-layer-activation mlp) (car hidden-answer-cell))))
    (setf output-answer-cell (funcall out-func (multiply-matrix-and-vector (car (last net))
									   (car hidden-answer-cell))
				      :slope slope
				      :thresh thresh)
	  out-signal-error (output-signal-error goal output-answer-cell))  ; output / goal
    (setf (output mlp) output-answer-cell)
    (dotimes (up (length hidden-answer-cell))  ;; 2- signal error = bottom->up
      (if (zerop up)
	  (push (hidden-signal-error (car hidden-answer-cell)
				     (hidden-error-estimation
				      (error-retropropagation (car (last net)) out-signal-error)))
		hidden-signal-error)
	  (push (hidden-signal-error (nth up hidden-answer-cell)
				     (hidden-error-estimation
				      (error-retropropagation (nth (- (length net) up 1) net)
							      (car hidden-signal-error)))) ;(nth (- up 1)
		hidden-signal-error)))
    (setf hidden-answer-cell (reverse hidden-answer-cell))
    (dotimes (down (length hidden-signal-error))  ;;3- update = top->down
      (if (zerop down)
	  (setf (car (net mlp)) (update-hidden-weights (car net) input
						       (car hidden-signal-error)
						       learn))
	  (setf (nth down (net mlp)) (update-hidden-weights (nth down net)
							    (nth (- down 1) hidden-answer-cell)
							    (nth down hidden-signal-error)
							    learn))))
    (setf (car (last (net mlp))) (update-output-weights (car (last net))
							(car (last hidden-answer-cell))
							out-signal-error
							learn)
	  e (check-error output-answer-cell goal thresh))
    (values e)))

(defmethod run-mlp ((mlp rmlp) &key in)  ;in pour method rmlp...
    (let ((hidden-answer-cell (list))
	  (net (noise mlp (net-temp mlp))))
     (dotimes (w (1- (length net)))
       (if (zerop w)
         (push (funcall (hidden-fun mlp) (multiply-matrix-and-vector (car net)
								     (if in in
									 (append (input mlp)
										 (recurrent-layer-activation mlp)))))
	       hidden-answer-cell)
         (push (funcall (hidden-fun mlp) (multiply-matrix-and-vector (nth w net)
								     (car hidden-answer-cell)))
		      hidden-answer-cell))
       (when (= w (recurrent-layer mlp))
	 (setf (recurrent-layer-activation mlp) (car hidden-answer-cell))))
     (setf (output mlp)
	   (funcall (out-fun mlp)
		    (multiply-matrix-and-vector (car (last net)) (car hidden-answer-cell))
		    :slope (slope mlp)
		    :temp (temp mlp)
		    :thresh 0)))
    (values (output mlp)))

(defmethod activation ((ann rmlp) &key (neuron nil))
  (declare (ignore neuron))
  (run-mlp ann :in (input ann)))

(defmethod clear ((self rmlp) )
   (setf (previous self) (net self)
         (net self) (apply #'init-mlp-net (append (list (+ (in-size self) (nth (recurrent-layer self)
									       (hidden-size self)))
							(out-size self))
                                              (hidden-size self)))
         (epoch self) 0
         (last-stop self) '(0 nil)
         (current-error self) 1000
         (last-error self) 1000
         (history self) '()
         (creation-date self) (GET-UNIVERSAL-TIME)
         (modification-date self) '())
   (format t "~%MLP ~S cleared.~%" (name self))
   (values self))

(defmacro create-name (symbol)
   `(defvar ,symbol nil))

(defmacro copy-MLP (old new)
   (setf old (symbol-value old))
   (cond ((not (boundp new))
          (let ((net
                 (make-instance 'mlp
                   :name new
                   :parent (name old)
                   :in-size (in-size old)
                   :hidden-size (hidden-size old)
                   :out-size (out-size old)
                   :net (make-instance (type-of (net old)) :net (copy-net (net old)))
                   :creation-date (get-universal-time))))
            `(defvar ,new ,net)
            ))
         ((ann-p (symbol-value new))
          (warning (format nil "~S already exists, is a ~S.~%Can't create MLP with name ~S."
                           new
                           (type-of (symbol-value new))
                           new)))
         (t
          (let ((net
                 (make-instance 'mlp
                   :name new
                   :parent (name old)
                   :in-size (in-size old)
                   :hidden-size (hidden-size old)
                   :out-size (out-size old)
                   :net (make-instance (type-of (net old)) :net (copy-net (net old)))
                   :creation-date (get-universal-time))))
            `(setf ,new ,net)
            ))))

(defmethod duplicate ((old mlp) &optional new)
   (cond ((not new)
          (setf new (read-from-string (symbol-name (gensym (format nil "~S-" (name old))))))
          (eval `(copy-mlp ,old ,new)))
         (t `(copy-mlp ,old ,new))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; oldies....

#|
;; run variante with inhibition
(defmethod run-mlp ((mlp mlp) (input vector) 
                        &key (hidden-func #'logistic) (out-func #'logistic) (temp 0) (thresh 0) (slope 1.0))
   (if (inhibit-run mlp)
     (let* ((hidden-answer-cell (list))
            (mlp-net (net (net mlp)))
            (inhib-out (match-i (1- (length mlp-net)) (inhibit mlp))))
       (dotimes (w (- (length mlp-net) 1))
         (let ((inhibited (match-i w (inhibit mlp))))
           (if (zerop w)
             (push (funcall hidden-func (multiply-matrix-and-vector 
                                         (inhibit-synaps (car mlp-net)
                                                         (car inhibited)
                                                         (cadr inhibited) :factor 1)
                                         input)) hidden-answer-cell)
             (push (funcall hidden-func (multiply-matrix-and-vector (inhibit-synaps (nth w mlp-net)
                                                                                    (car inhibited)
                                                                                    (cadr inhibited) :factor 1)
                                                                    (car hidden-answer-cell)))
                   hidden-answer-cell))))
       (funcall out-func (multiply-matrix-and-vector (inhibit-synaps (car (last mlp-net))
                                                                     (car inhib-out)
                                                                     (cadr inhib-out) :factor 1)
                                                     (car hidden-answer-cell))
                :slope slope
                :thresh thresh
                :temp temp))
     (run-mlp (net mlp) input :hidden-func hidden-func :out-func out-func :temp temp :thresh thresh)))


;; learn method have been deaxctivated since it exists numerous methods to train mlp, not only algorithms
;; ways to interact with, for instance it can be usefull to train while running (when agent archtecture).
(defmethod learn ((self mlp))
  (let ((input (input self))
	(goal (goal self)) 
	(temp (temp self))
	(learn (learn-fact self))
	(slope (slope self))
	(hidden-func (hidden-fun self))
	(out-func (hidden-fun self))
	(thresh (threshold self))
	(error (last-error self))
	(stop (stop self))
	(verbose (verbose self)))
   (setf (previous self) (copy-tree (net self))) ;-> backup of previous state
   (let ((e (backpropagate self input goal
			   :learn learn
			   :error error
			   :temp temp
			   :slope slope
			   :hidden-func hidden-func
			   :out-func out-func :thresh 0)))
     (push e (history-error self))
     (setf (current-error self) (car (history-error self))
	   (epoch self) (incf (epoch self)))
     (cond ((<= (current-error self) thresh)
            (format t "~%> Learning COMPLETED at epoch ~D with error = ~D."
		    (epoch self) (current-error self))
            (setf (last-stop self) (append (list (list (epoch self) 'completed)) (last-stop self)))
            (setf (last-error self) (current-error self)) )
           ((>= (epoch self) (+ (caar (last-stop self)) stop))
            (format t "~%> Learning INTERRUPTED at epoch ~D with error = ~D "
		    (epoch self) (current-error self))
	    (setf (last-stop self) (append (list (list (epoch self) 'interrupted)) (last-stop self)))
	    (setf (last-error self) (current-error self)))
	   (t 
            (when verbose (format t "~%> Learning at epoch ~D with error = ~D"
				  (epoch self) (car (history-error self))) )
            (learn self))))))
|#

;; EOF
