;;;;; MATHS & UTILITIES

(in-package :neuromuse)

;(format t "math&misc.lisp...~%")

(defun rand (x)
  (if (zerop x) 0 (random x)))

;;; Fonctions de transfert

(defgeneric binary (x &key thresh temp learn slope)
  (:documentation "valeur binaire de x"))

(defmethod binary ((x number) &key (thresh 0) (temp nil) (learn nil) (slope nil))
  (declare (ignore learn temp slope))
  (if (<= x thresh)
    0 1))

(defmethod binary ((x list) &key (thresh 0) (temp nil) (learn nil) (slope nil))
  (declare (ignore learn temp slope))
  (mapcar #'(lambda (a) (binary a :thresh thresh)) x))

(defmethod binary ((x vector) &key (thresh 0) (temp nil) (learn nil) (slope nil))
  (declare (ignore learn temp slope))
  (dotimes (i (length x) x)
    (setf (aref x i) (binary (aref x i) :thresh thresh))))

(defgeneric sign (x &key thresh temp learn slope)
  (:documentation "signe de x"))

(defmethod sign ((x number) &key (thresh 0) (temp nil) (learn nil) (slope nil))
  (declare (ignore learn temp slope))
  (if (<= x thresh)
    -1 1))

(defmethod sign ((x list) &key (thresh 0) (temp nil) (learn nil) (slope nil))
  (declare (ignore learn temp slope))
  (mapcar #'(lambda (a) (sign a :thresh thresh)) x))

(defmethod sign ((x vector) &key (thresh 0) (temp nil) (learn nil) (slope nil))
  (declare (ignore learn temp slope))
  (dotimes (i (length x) x)
    (setf (aref x i) (sign (aref x i) :thresh thresh))))

(defun temp-value (temp)
  (if temp (if (< (random 1.0) temp) t nil) nil))

(defgeneric logistic (x &key thresh temp learn slope)
  (:documentation "Fonction 'logisitic' de x, ie. sigmoide a probabilite gaussienne."))

(defmethod logistic ((x number) &key (thresh 0) (temp nil) (learn nil) (slope 1))
  (declare (ignore learn))
  (if temp
    (let ((temp-v (temp-value temp)))
      (if temp-v
        (random 1.0)
        (/ 1 (+ 1 (exp (- (/ (- x thresh) slope)))))))
    (/ 1 (+ 1 (exp (- (/ (- x thresh) slope)))))))

(defmethod logistic ((x list) &key (thresh 0) (temp 0) (learn nil) (slope 1))
  (mapcar #'(lambda (a) (logistic a :slope slope :thresh thresh :temp temp :learn learn)) x))

(defmethod logistic ((x vector) &key (thresh 0) (temp 0) (learn nil) (slope 1))
  (dotimes (i (length x) x)
    (setf (aref x i) (logistic (aref x i) :slope slope :thresh thresh :temp temp :learn learn))))

(defgeneric sigmoide (x &key thresh temp learn slope)
  (:documentation "Fonction sigmoide de x"))

(defmethod sigmoide ((x number) &key (thresh 0) (temp nil) (learn nil) (slope 1))
  (declare (ignore learn))
  (if (temp-value temp)
      (random 1.0)
      (/ (exp (/ (- x thresh) slope))
	 (+ (exp (/ (- x thresh) slope)) (exp (- (/ (- x thresh) slope)))))))

(defmethod sigmoide ((x list) &key (thresh 0) (temp nil) (learn nil) (slope 1))
  (mapcar #'(lambda (a) (sigmoide a :slope slope :thresh thresh :temp temp :learn learn)) x))

(defmethod sigmoide ((x vector) &key (thresh 0) (temp nil) (learn nil) (slope 1))
  (dotimes (i (length x) x)
    (setf (aref x i) (sigmoide (aref x i) :slope slope :thresh thresh :temp temp :learn learn))))

(defgeneric linear (x &key thresh temp learn slope)
  (:documentation "Valeur lineaire de x = slope . x - thresh."))

(defmethod linear ((x number) &key (thresh 0) (temp nil) (learn nil) (slope 1))
  (declare (ignore learn))
  (if (temp-value temp)
      (random 1.0)
      (- (* slope x) thresh)))

(defmethod linear ((x list) &key (thresh 0) (temp nil) (learn nil) (slope 1))
  (mapcar #'(lambda (a) (linear a :thresh thresh :slope slope :temp temp :learn learn)) x))

(defmethod linear ((x vector) &key (thresh 0) (temp nil) (learn nil) (slope 1))
  (declare (ignore learn))
  (dotimes (i (length x) x)
    (setf (aref x i) (linear (aref x i) :thresh thresh :slope slope))))

(defun boltzmann-distr (x temp &optional (thresh 0))
  (when (= 0 temp) (setf temp 1E-32))
  (/ 1 (+ 1 (exp (/ (- (- x thresh)) temp)))))

(defgeneric boltzmann (x &key thresh temp learn slope)
  (:documentation "Distribution de Boltzmann de probabilite de x."))

(defmethod boltzmann ((x number) &key (thresh 0) (temp 1.0) (learn nil) (slope 1))
  (declare (ignore learn slope))
  (let ((rho-jt (random 1.0))
        (proba-j (boltzmann-distr (- x thresh) temp)))
    (if (<= proba-j rho-jt)
      0 1)))

(defmethod boltzmann ((x vector) &key (thresh 0) (temp 1.0) (learn nil) (slope 1))
  (dotimes (i (length x) x)
    (setf (aref x i) (boltzmann (aref x i) :temp temp :thresh thresh :learn learn :slope slope))))

(defmethod boltzmann ((x list) &key (thresh 0) (temp 1.0) (learn nil) (slope 1))
  (mapcar #'(lambda (a) (boltzmann a :temp temp :thresh thresh :learn learn :slope slope)) x))

;;; apprentissage : Widrow-Hoff rule = delta rule
(defun widrow-hoff (wij tj oj xi l)
  (+ wij (* l (- tj oj) xi)))

;obsolete
(defun cell-output-boltz (cell-activity temperature)
  (let ((rho-jt (random 1.0))
        (proba-j (boltzmann-distr
                  cell-activity
                  temperature)))
    (if (<= proba-j rho-jt)
      0 1)))

(defgeneric check-error (v1 v2 error)
  (:documentation "fonction bizarre et surement utile. en relation avec MLP"))

(defmethod check-error ((v1 vector) (v2 vector) (error number))
  (let ((diff '()))
    (dotimes (n (length v1))
      (let ((e (abs (- (aref v1 n) (aref v2 n)))))
	(if (< e error)
	    (push 0 diff)
	    (push e diff))))
    (values (apply #'+ diff))))

(defmethod check-error ((v1 list) (v2 list) (error number))
  (let ((diff '()))
    (dotimes (n (length v1))
      (let ((e (abs (- (nth n v1) (nth n v2)))))
	(if (< e error)
	    (push 0 diff)
	    (push e diff))))
    (values (apply #'+ diff))))

;(check-error #(0 .3 9 4) #(.1 .3 8.8 4) 0.2)

(defgeneric declip (x &optional thresh)
  (:documentation "Randomises x lorsqu'il depasse le seuil 'thresh'."))

(defmethod declip ((x number) &optional thresh)
  (when (not thresh) (setf thresh 100))
  (if (> (abs x) thresh)
    (setf x (- (random 2.0) 1))
    x))

(defmethod declip ((x vector) &optional thresh)
  (coerce (mapcar #'(lambda (x) (declip x thresh)) (coerce x 'list)) 'vector))

(defmethod declip ((x list) &optional thresh)
  (mapcar #'(lambda (x) (declip x thresh))  x))

(defgeneric clip (value &key min max)
  (:documentation
   "Clips values between bounds :min and :max (default 0 1)."))

(defmethod clip ((value number) &key (min 0) (max 1))
  (if (< value min)
    min (if (> value max) max value)))

(defmethod clip ((value list) &key (min 0) (max 1))
  (mapcar #'(lambda (x) (clip x :min min :max max)) value))

(defmethod clip ((value vector) &key (min 0) (max 1))
  (coerce (clip (coerce value 'list) :min min :max max) 'vector))

(defmethod clip ((value array) &key (min 0) (max 1))
  (let ((clipped-matrix (make-array (list (array-dimension value 0)
                                          (array-dimension value 1)))))
    (dotimes (i (array-dimension value 0) clipped-matrix)
      (dotimes (j (array-dimension value 1))
        (setf (aref clipped-matrix i j) (clip (aref value i j) :min min :max max))))))

(defgeneric noise (data p)
  (:documentation
   "Noise : random variation into a range from plus to minus p for each value of data;
    p must be included between 0 and 1. When data is of type ann, returns a noise variation
    of the network values of the ann (i.e. : (noise (net ann) p))."))

(defmethod noise ((data t) (p null))
  (values data))

(defmethod noise ((data number) (p float))
  (if (zerop p)
      data
      (let ((sig (* p (- (random 2.0) 1))))
	(+ data sig))))

(defmethod noise ((data list) (p float))
  (if (zerop p) data (mapcar #'(lambda (x) (noise x p)) data)))

(defmethod noise ((data vector) (p float))
  (if (zerop p) data (coerce (noise (coerce data 'list) p) 'vector)))

(defmethod noise ((data neuron) (p float))
  (if (zerop p) (net data) (noise (net data) p)))

(defmethod noise ((data ann) (p number))
  (if (zerop p) (net data) (noise (net data) p)))

(defgeneric inhibit-synaps (matrix from &optional to &key factor)
  (:documentation "mettre a jour pour som'."))

(defmethod inhibit-synaps ((matrix array) (from null) &optional (to nil) &key (factor 0))
  (declare (ignore from to factor))
  matrix)

(defmethod inhibit-synaps ((matrix array) (from integer) &optional (to nil) &key (factor 0))
  (when (numberp to) (setf to (list to)))
  (let ((inhibited (make-array (list (array-dimension matrix 0)
                                     (array-dimension matrix 1)))))
    (dotimes (i (array-dimension matrix 1) inhibited)
      (dotimes (j (array-dimension matrix 0))
        (if (and (= i from) (or (when to (member j to)) (not to)))
          (setf (aref inhibited j i) (* factor (aref matrix j i)))
          (setf (aref inhibited j i) (aref matrix j i)))))))

(defmethod inhibit-synaps ((matrix array) (from list) &optional (to nil) &key (factor 0))
  (let ((inhibited (make-array (list (array-dimension matrix 0)
                                     (array-dimension matrix 1)))))
    (cond ((not to)
           (dotimes (i (array-dimension matrix 1) inhibited)
             (dotimes (j (array-dimension matrix 0))
               (if (member i from)
                 (setf (aref inhibited j i) (* factor (aref matrix j i)))
                 (setf (aref inhibited j i) (aref matrix j i))))))
          ((integerp to)
           (dotimes (i (array-dimension matrix 1) inhibited)
             (dotimes (j (array-dimension matrix 0))
               (if (and (member i from) (= j to))
                 (setf (aref inhibited j i) (* factor (aref matrix j i)))
                 (setf (aref inhibited j i) (aref matrix j i))))))
          (t (let ((map (mapcar #'(lambda (x y) (list x y)) from to)))
               (dotimes (i (array-dimension matrix 1) inhibited)
                 (dotimes (j (array-dimension matrix 0))
                   (if (find (list i j) map :test #'equal)
		       (setf (aref inhibited j i) (* factor (aref matrix j i)))
		       (setf (aref inhibited j i) (aref matrix j i))))))))))

(defmethod inhibit-synaps ((matrix array) (from null) &optional (to nil) &key (factor 0))
  (let ((inhibited (make-array (list (array-dimension matrix 0)
                                     (array-dimension matrix 1)))))
    (cond ((not to)
           matrix)
          ((integerp to)
           (dotimes (i (array-dimension matrix 1) inhibited)
             (dotimes (j (array-dimension matrix 0))
               (if (= j to)
                 (setf (aref inhibited j i) (* factor (aref matrix j i)))
                 (setf (aref inhibited j i) (aref matrix j i))))))
          (t (dotimes (i (array-dimension matrix 1) inhibited)
               (dotimes (j (array-dimension matrix 0))
                 (if (member j to)
		     (setf (aref inhibited j i) (* factor (aref matrix j i)))
		     (setf (aref inhibited j i) (aref matrix j i)))))))))

(defun match-i (w list)
  "prend dans les synapses inhibees de net qui match avec le rang de la couche w, 
et formate pour <inhibit-synaps>."
  (let ((temp (mapcar #'(lambda (x) (list (cadar x) (cadadr x)))
                      (remove-if-not #'(lambda (a) (= a w)) list :key #'caar))))
    (list (mapcar #'car temp) (mapcar #'cadr temp))))

(defgeneric sort* (x predicat &key key)
  (:documentation "Randomises x lorsqu'il depasse le seuil 'thresh'."))

(defmethod sort* ((synapses list) (predicate symbol) &key key)
  (let ((pos '()))
    (dotimes (n (length synapses))
      (push (list (elt synapses n) n) pos))
    (if key
      (sort pos predicate :key #'(lambda (x) (funcall key (car x))))
      (sort pos predicate :key #'car))))

(defmethod sort* ((synapses vector) (predicate symbol) &key key)
  (let ((pos '()))
    (dotimes (n (length synapses))
      (push (list (elt synapses n) n) pos))
    (if key
      (sort pos predicate :key #'(lambda (x) (funcall key (car x))))
      (sort pos predicate :key #'car))))

(defmethod sort* ((synapses array) (predicate symbol) &key key)
  (let ((pos '()))
    (dotimes (i (array-dimension synapses 1))
      (dotimes (n (array-dimension synapses 0))
        (push (list (aref synapses n i) i n) pos)))
    (if key
      (sort pos predicate :key #'(lambda (x) (funcall key (car x))))
      (sort pos predicate :key #'car))))

;(defmethod sort* ((synapses mlp) (predicate symbol) &key key)
;  (let ((pos '()))
;    (setf synapses (net synapses))
;    (dotimes (w (length synapses))
;      (dotimes (i (array-dimension (nth w synapses) 1))
;        (dotimes (n (array-dimension (nth w synapses) 0))
;          (push (list (aref (nth w synapses) n i) (list w i) (list (1+ w) n)) pos))))
;    (if key
;      (sort pos predicate :key #'(lambda (x) (funcall key (car x))))
;      (sort pos predicate :key #'car))))

;;; MATRICES

(defmethod compare-vectors ((v1 vector) (v2 vector) &optional (error 0))
  (let ((r '()))
    (dotimes (n (length v1) (nreverse r))
      (if (<= (abs (- (aref v1 n) (aref v2 n))) error)
        (push 0 r) (push 1 r)))))

(defmethod compare-vectors ((v1 list) (v2 list) &optional (error 0))
  (let ((r '()))
    (dotimes (n (length v1) (nreverse r))
      (if (<= (abs (- (elt v1 n) (elt v2 n))) error)
        (push 0 r) (push 1 r)))))

;(defmethod compare-vectors ((v1 symbol) (v2 t) &optional (error 0))
;  ;(setf v1 (eval `(,v1)))
;  (let ((r '()))
;    (dotimes (n (length v1) (nreverse r))
;      (if (<= (abs (- (aref v1 n) (aref v2 n))) error)
;        (push 0 r) (push 1 r)))))

;(defmethod compare-vectors ((v1 t) (v2 symbol) &optional (error 0))
  ;(setf v2 (eval `(,v2)))
 ; (let ((r '()))
 ;   (dotimes (n (length v1) (nreverse r))
 ;     (if (<= (abs (- (aref v1 n) (aref v2 n))) error)
 ;       (push 0 r) (push 1 r)))))

;(defmethod compare-vectors ((v1 symbol) (v2 symbol) &optional (error 0))
 ; (setf v1 (eval `(,v1))
 ;       v2 (eval `(,v2)))
 ; (let ((r '()))
 ;   (dotimes (n (length v1) (nreverse r))
 ;     (if (<= (abs (- (aref v1 n) (aref v2 n))) error)
 ;       (push 0 r) (push 1 r)))))

(defmethod multiply-2-vectors ((v1 list) (v2 list))
  (mapcar #'* v1 v2))

(defmethod multiply-2-vectors ((v1 vector) (v2 vector))
  (let ((result '()))
    (dotimes (n (length v1) (apply #'vector (nreverse result)))
      (push (* (aref v1 n) (aref v2 n)) result))))

(defmethod vector-sum ((vector list))
  (apply #'+ vector))

(defmethod vector-sum ((vector t))
  (let ((result '()))
    (dotimes (n (length vector) (apply #'+ result))
      (push (aref vector n) result))))

(defun multiply-two-matrices (a-matrix b-matrix
			      &key (result
				    (make-array
				     (list (nth 0 (array-dimensions a-matrix))
					   (nth 1 (array-dimensions b-matrix))))))
  "given
   [1] a-matrix (required)
       ==> a 2d matrix
   [2] b-matrix (required)
       ==> another 2d matrix, with dimensions such that
           the product of a-matrix and b-matrix is defined
   [3] result (keyword; new 2d array of appropriate size)
       <== a 2d matrix to contain product of two matrices
returns
   [1] product of two matrices (placed in result)"
  (let ((m (nth 0 (array-dimensions a-matrix)))
        (n (nth 1 (array-dimensions b-matrix)))
        (common (nth 0 (array-dimensions b-matrix))))
    (dotimes (i m result)
      (dotimes (j n)
        (setf (aref result i j) 0.0)
        (dotimes (k common)
          (incf (aref result i j)
                (* (aref a-matrix i k) (aref b-matrix k j))))))))

;(multiply-two-matrices #2a((0 0 1) (0 1 0) (1 0 0)) #2a((10 9) (8 7) (6 5)))
;==> #2a((6.0 5.0) (8.0 7.0) (10.0 9.0))

(defun multiply-matrix-and-vector (a-matrix b-vector
				   &key (result (make-list (length a-matrix))))
  "version list : given
   [1] a-matrix (required)
       ==> a 2d matrix
   [2] b-vector (required)
       ==> a list, with dimensions such that
           the product of a-matrix and b-vector is defined
   [3] result (keyword; new vector of appropriate size)
       <== a list to contain product of a-matrix and b-vector
returns
   [1] product of a-matrix and b-vector (placed in result)"
  (let ((m (length a-matrix))
        (n (length b-vector)))
    (dotimes (i m result)
      (setf (elt result i) 0.0)
      (dotimes (j n)
        (setf (elt result i)
              (+ (elt result i)
		 (* (nth j (elt a-matrix i)) (elt b-vector j))))))))

(defun add-2-matrices (a-matrix b-matrix
		       &key (result (make-listarray (length a-matrix)
						    (length (car a-matrix)))))
  (let ((m (length a-matrix))
        (n (length (car a-matrix)))
	)
    (dotimes (i m result)
      (dotimes (j n)
        (setf (nth j (nth i result))
              (+ (nth j (nth i a-matrix)) (nth j (nth i b-matrix)))) ))))

(defun subtract-two-matrices
       (a-matrix
        b-matrix
        &key
        (result
         (make-array (array-dimensions a-matrix))))
  "given
   [1] a-matrix (required)
       ==> a 2d matrix
   [2] b-matrix (required)
       ==> a 2d matrix, with dimensions the same
           as a-matrix
   [3] result (keyword; new vector of appropriate size)
       <== a matrix to contain result of subtracting
           b-matrix from a-matrix
returns
   [1] a-matrix minus b-matrix (placed in result)"
  (let ((m (nth 0 (array-dimensions a-matrix)))
        (n (nth 1 (array-dimensions a-matrix))))
    (dotimes (i m result)
      (dotimes (j n)
        (setf (aref result i j)
              (- (aref a-matrix i j) (aref b-matrix i j)))))))

(defun const*matrix (const matrix)
  (let ((m (nth 0 (array-dimensions matrix)))
        (n (nth 1 (array-dimensions matrix)))
        result)
    (setq result (make-array (list m n)))
    (dotimes (o m result)
      (dotimes (p n)
        (setf (aref result o p) (* const (aref matrix o p)))))))

(defun transpose
       (a-matrix
        &key
        (result
         (make-array
          (reverse (array-dimensions a-matrix)))))
  "given
   [1] A (required)
       ==> a 2d matrix
   [2] result (keyword; new 2d array of appropriate size)
       <== a 2d matrix to contain transpose of a-matrix
returns
   [1] transpose of a-matrix (placed in result)"
  (let ((list-of-two-integers (array-dimensions a-matrix)))
    (dotimes (i (nth 0 list-of-two-integers) result)
      (dotimes (j (nth 1 list-of-two-integers))
        (setf (aref result j i)
              (aref a-matrix i j))))))

(defun hadamar-product (a-matrix b-matrix) ; version list
  "hadamar-product of two matrix of same size."
  (let* ((m (length a-matrix))
	 (n (length (car a-matrix)))
         (result (make-listarray m n #'(lambda () 0))) )
    (dotimes (i m result)
      (dotimes (j n)
        (setf (nth j (nth i result))
              (* (nth j (nth i a-matrix)) (nth j (nth i b-matrix))))))))

;(hadamar-product '((1 2 3) (4 5 6)) '((-1 -2 -3) (-4 -5 -6)))

(defun kronecker-product
       (a-matrix
        b-matrix)
  "kronecker-product of two matrices."
  (let* ((i (nth 0 (array-dimensions a-matrix)))
         (j (nth 1 (array-dimensions a-matrix)))
         (k (nth 0 (array-dimensions b-matrix)))
         (l (nth 1 (array-dimensions b-matrix)))
         (result (make-array (list (* k i) (* j l)))))
    (dotimes (a i)
      (let ((o 0)
            (p 0))
        (dotimes (b k)
          (setf (aref result o p)
                (* (aref a-matrix a o) (aref b-matrix i j))))))))

(defmethod substract-2-vectors ((v1 array) (v2 array))
  (let ((e '()))
    (dotimes (i (length v1) (apply #'vector (reverse e)))
      (push (- (aref v1 i)
               (aref v2 i))
            e))))

(defmethod substract-2-vectors ((v1 list) (v2 list))
  (let ((e '()))
    (dotimes (i (length v1) (reverse e))
      (push (- (elt v1 i)
               (elt v2 i))
            e))))

(defun add-two-vectors (v1 v2)
  (let ((e '()))
    (dotimes (i (length v1) (apply #'vector (reverse e)))
      (push (+ (aref v1 i)
               (aref v2 i))
            e))))

(defun multiply-vector (f v)
  (let ((e '()))
    (dotimes (i (length v) (apply #'vector (reverse e)))
      (push (* f
               (aref v i))
            e))))

(defun ldl->lvectors (ldl)
  (mapcar #'(lambda (x) (apply #'vector x)) ldl))

(defun vector->list (vector)
  (coerce vector 'list))

(defun lvectors->ldl (lvectors)
  (mapcar #'(lambda (x) (vector->list x)) lvectors))

;;; SCALING and data SAMPLING

(defun scale-input (input output)
  (let ((max (apply #'max output)))
    (mapcar #'(lambda (x)
                (float (/ x max)))
            input)))

(defun echant (list n)
  "Does a resampling of list by n samples."
  (let ((l (length list))
        (r '()))
    (if (>= n l) 
      (dotimes (i n (reverse r))
        (push (nth (floor (* i (/ l n))) list) r))
      (let ((newn (- n 2)))
        (dotimes (i newn (append (list (car list)) (reverse r) (last list)))
          (push (nth (round (* (1+ i) (/ (- l 2) (if (evenp newn)
                                                   (1+ newn)
                                                   (if (= 1 newn)
                                                     2 newn))))) list) r))))))

(defun counter (n &key (start 0) (step 1))
  (let ((r (list start)))
    (dotimes (i n (reverse r))
      (push (+ (car r) step) r))))

(defgeneric number->bin (x form)
  (:documentation
   "Converti x (numbre ou liste) en representation ''binaire'' a base 'form'"))

(defmethod number->bin ((x number) (form number))
  (let ((r '())
        (value (format nil
                       (concatenate 'string "~" (format nil "~DB" form))
                       x)))
    (dotimes (n (length value) (reverse r))
      (push (read-from-string (string (if (eq #\Space (elt value n)) #\0 (elt value n)))) r))))

(defmethod number->bin ((x list) (form number))
  (mapcar #'(lambda (x) (number->bin x form)) x))

(defgeneric scale (x minin maxin minout maxout)
  (:documentation "Effectue une mise a l'echelle de x borne entre minin et maxin."))

(defmethod scale ((x number) minin maxin minout maxout)
  (let ((ratio (/ (- maxout minout) (- maxin minin))))
    (float (+ minout (* ratio (- x minin))))))

(defmethod scale ((x list) minin maxin minout maxout)
  (mapcar #'(lambda (a) (scale a minin maxin minout maxout)) x))

(defmethod scale ((x vector) minin maxin minout maxout)
  (coerce (scale (coerce x 'list) minin maxin minout maxout) 'vector))

(defgeneric normalize (x )
  (:documentation "normalise les donnees x entre 0 et 1"))

(defmethod normalize ((x list))
  (let ((min (apply #'min x))
        (max (apply #'max x)))
    (mapcar #'(lambda (a) (scale a min max 0.0 1.0)) x)))

(defmethod normalize ((x vector))
  (coerce (normalize (coerce x 'list)) 'vector))

(defgeneric filtre-median (values window)
  (:documentation "Filtre median d'une liste ou d'un vecteur"))

(defmethod filtre-median ((values number) (window integer))
  (assert (oddp window))
  values)

(defmethod filtre-median ((values list) (window integer))
  (assert (oddp window))
  (let ((r '()))
    (dotimes (i (length values) r)
      (let* ((lastp (+ i window))
             (win (subseq values i (if (>= lastp (length values))
                                     (length values) lastp)))
             (p (floor (/ (length win) 2))))
        (setf r (append r (list (elt (sort win '<) p))))))))

(defmethod filtre-median ((values vector) (window integer))
  (assert (oddp window))
  (let ((r '()))
    (dotimes (i (length values) (coerce r 'vector))
      (let* ((lastp (+ i window))
             (win (subseq values i (if (>= lastp (length values))
				       (length values) lastp)))
             (p (floor (/ (length win) 2))))
        (setf r (append r (list (elt (sort win '<) p))))))))

(defun codin (n &rest data)
  (let* ((length (apply #'+ (mapcar #'car data)))
         (ratio (floor (/ n length)))
         (rest (- n (* length ratio)))
         (subrest (floor (/ rest (length data))))
         (result (list)))
    (dolist (d data (setf result (reverse result)))
      (dotimes (n (floor (+ (* (car d) ratio) subrest)))
        (push (float (- (cadr d) (* n (/ (cadr d) (floor (+ (* (car d) ratio) subrest))))))
              result)))
    
    (if (= n (length result))
      result
      (append result (make-list (- n (length result))
                                :initial-element (car (last result)))))))

;(length (codin 64 '(1 1) '(4 0) '(.4 .7) '(.4 .7)))

;;********************************************************************************
;;                              Lisp Misc                                        *
;;********************************************************************************

(defun make-listarray (dim0 dim1 &optional initial-element)
  (let (array)
    (dotimes (i dim0 array)
      (push
       (loop for j from 0 to (1- dim1)
	  collect (if initial-element (funcall initial-element) nil))
       array))))

;(make-listarray 2 3)
;(make-listarray 2 4 #'(lambda () (random 1.0)))3

(defun ldlp (l)
  "Test if every element of l is a list of lists."
  (not (member nil (mapcar #'listp l))))

(defun ldvp (l)
  "Test if every element of l is a list of vectors"
  (not (member nil (mapcar #'vectorp l))))

(defun get-time ()
  (multiple-value-bind (second minute hour date month year
                               day-of-week daylight-saving-time-p time-zone)
                       (get-decoded-time)
    (declare (ignore day-of-week daylight-saving-time-p))
    (list year month date hour minute second time-zone)))

(defgeneric round1 (value &optional dec)
  (:documentation
   "Arrondi 'value' (nombre, liste ou vecteur, au nombre de decimales 'dec'."))

(defmethod round1 ((value number) &optional (dec 0))
  (let* ((int (floor (* value (expt 10 dec))))
         (f (- (* value (expt 10 dec)) int)))
    (float (/ (+ int (round f)) (expt 10 dec)))))

(defmethod round1 ((value list) &optional (dec 0))
  (mapcar #'(lambda (x) (round1 x dec)) value))

(defmethod round1 ((value vector) &optional (dec 0))
  (dotimes (n (length value) value)
    (setf (elt value n) (round1 (elt value n) dec))))

(defun test-t (list test)
  (if (member test list :test #'equalp)
    list nil))

(defun make-new-symbol (name &optional content)
  (let ((sym (intern (string (if (boundp (read-from-string (string name)))
                               (gensym (format nil "~S-" name))
                               name)))))
    (setf (symbol-value sym) content)
    sym ))

(defun scale-th-error (x)
  (if (<= x 0) 0
      (round (* 15 (+ 5 (log (* 1000 x) 5))))))

(defgeneric euclidian (x y)
  (:documentation "Distance euclidienne (raccourcie) entre x et y."))

(defmethod euclidian ((a list) (b list))
  (sqrt (apply #'+ (mapcar #'(lambda (x y) (expt (- x y) 2)) a b))))

(defmethod euclidian ((a vector) (b vector))
  (sqrt (apply #'+ (loop for k from 0 to (1- (length a))
			 collect (expt (- (elt a k) (elt b k)) 2)))))

(defmethod euclidian ((a vector) (b list))
  (sqrt (apply #'+ (loop for k from 0 to (1- (length a))
			 collect (expt (- (elt a k) (elt b k)) 2)))))
  
(defmethod euclidian-fast ((a list) (b list))
  (apply #'+ (mapcar #'(lambda (x y) (expt (- x y) 2)) a b)))

(defmethod euclidian-fast ((a vector) (b vector))
  (apply #'+ (loop for k from 0 to (1- (length a))
		   collect (expt (- (elt a k) (elt b k)) 2))))

(defmethod euclidian-fast ((a vector) (b list))
  (apply #'+ (loop for k from 0 to (1- (length a))
		   collect (expt (- (elt a k) (elt b k)) 2))))


;;*************      TOPOLOGIE     **********************************

(defun 2d (x n)
  (let ((k (sqrt n)))
    (list (floor (mod x k)) (floor (/ x k)))))

(if (equalp "ppc" (machine-type))
   (defun d2 (x y n) ;; version ppc
	 (+ x (* y (sqrt n) )))
   (defun d2 (x y n) ;; version x86
     (floor (+ x (* y (sqrt n) )))))

;(2d 4 25)
;(d2 4 0 25)

(defun 3d (x n)
  (let ((k (expt n 1/3)))
    (list (mod x k)
	  (mod (floor (/ x k)) k)
	  (mod (floor (/ x (* k k))) k))))

(defun d3 (x y z n)
  (let ((k (expt n 1/3)))
    (+ x (* y k) (* z k k))))

;;************         VOISINAGE      ********************************

;; todo: developper, generaliser, reduire

(defun voisins (pos radius n &optional r )
  ;pos = '(x y z ...) et n = 1- sqrt n
  (if (not pos)
      (remove-duplicates r)
      (let ((x (pop pos))
	    (o (1- n))
	    tmp)
	(if (not r)
	    (progn
	      (push (list x) r)
	      (loop for i from 1 to radius
		    do
		    (push (list (min (+ x i) o)) r)
		    (push (list (max (- x i) 0)) r))	      
	      (voisins pos radius n r))
	    (progn
	      (loop for a in r
		    do
		    (push (append a (list x)) tmp)
		    (loop for i from 1 to radius
			  do
			  (push (append a (list (min (+ x i) o))) tmp)
			  (push (append a (list (max (- x i) 0))) tmp)))
	      (voisins pos radius n tmp))))))

(defun mexican-hat (learn error distance)
  (* learn (exp (/ (* distance distance) (* -2  error error)))))

;le chapeau divergerait, selon Uwe Lammel und Jurgen Cleve Kunstliche Intelligenz, 2001.
;(* learn (exp (/ (- (expt error 2)) (expt (* 2 radius) 2))))

(defun gaussian-hat (learn error distance)
  (* learn (exp (/ (- (expt distance 2)) (expt (* 2 error) 2)))))

;  (if (zerop distance)
;      learn
;      (* learn (exp (/ (- (expt error 2)) (expt (* 2 distance) 2))))))

;; formatage

(defun st2v (string)
  (coerce (mapcar #'read-from-string (split string)) 'vector))

(defun st2list (string)
  (mapcar #'read-from-string (split string)))

(defun vector2string (vector)
  (apply #'concatenatef
	 (loop for i from 0 to (1- (length vector))
	       collect (format nil "~S" (aref vector i)))))

(defun buf2string (buf)
  (setf buf (subseq buf 0 (- (position 0 buf) 2)))
  (let ((st (make-string (length buf))))
    (dotimes (n (length buf))
      (setf (elt st n) (code-char (elt buf n))))
    st))

(defun list2string (list)
  (apply #'concatenatef
	  (loop for i from 0 to (1- (length list))
	       collect (format nil "~S" (nth i list)))))

(defun v2st (vector) (vector2string vector))

(defun concatenatef (&rest args)
  (let ((st ""))
    (loop for arg in args
	  do
	  (setf st (concatenate 'string st " " arg)))
    (subseq st 1)))

;;; This courtesy of Pierre Mai in comp.lang.lisp 08 Jan 1999 00:51:44 +0100
;;; Message-ID: <87lnjebq0f.fsf@orion.dent.isdn.cs.tu-berlin.de>

(defun split (string &optional max (ws '(#\Space #\Tab)))
  "Split `string' along whitespace as defined by the sequence `ws'.
The whitespace is elided from the result.  The whole string will be
split, unless `max' is a non-negative integer, in which case the
string will be split into `max' tokens at most, the last one
containing the whole rest of the given `string', if any."
  (flet ((is-ws (char) (find char ws)))
    (loop for start = (position-if-not #'is-ws string)
          then (position-if-not #'is-ws string :start index)
          for index = (and start
                           (if (and max (= (1+ word-count) max))
                               nil
                             (position-if #'is-ws string :start start)))
          while start
          collect (subseq string start index)
          count 1 into word-count
          while index)))

; eof
