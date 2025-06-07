;;; perceptron, unfinished ?, see mlp

(defclass perceptron (ANN)
  ((name
    :initform 'perceptron
    :initarg :name
    :reader name
    :accessor name
    :type symbol)
   (in-size
    :initform 2
    :initarg :in-size
    :reader in-size
    :accessor in-size
    :type integer)
   (out-size
    :initform 1
    :initarg :out-size
    :reader out-size
    :accessor out-size
    :type integer)
   (previous
    :initform '()
    :initarg :previous
    :reader previous
    :accessor previous
    :type list)
   ))

(defmethod print-object ((self perceptron) stream)
  (format stream
          "<perceptron ~S ~D input~:P ~D output~:P>" 
          (string (name self))
          (length (net self))
          (length (car (net self))))
  (values))

(defmethod init-perceptron-net ((in-size integer) (out-size integer) &key (range .4))
  "initialisation random du reseau du perceptron."
  (let (net)
    (dotimes (i in-size net)
      (let (to-out)
	(dotimes (j out-size (push to-out net))
	  (push (- (/ range 2) (random range)) to-out))))))

(defmethod init-perceptron-net ((in-size null) (out-size null) &key (range .4))
  "initialisation random d'un net."
  (setf in-size 2 out-size 1)
  (init-perceptron-net in-size out-size :range range))

(defmacro make-perceptron (name in out &key (range .4))
  (cond ((not (boundp name))
         (let ((net
                (make-instance 'perceptron
                  :name name
                  :in-size in
                  :out-size out 
                  :net (init-perceptron-net in out :range .4)
                  :creation-date (get-universal-time))))
           `(defvar ,name ,net)
           ))
        ((ann-p (symbol-value name))
         (warning-msg (format nil
			  "~S already exists !~S"
                          name
                          (type-of (symbol-value name))
                          name)))
        (t
         (let ((net
                (make-instance 'perceptron
                  :name name
                  :in-size in
                  :out-size out 
                  :net (init-perceptron-net in out :range range)
                  :creation-date (get-universal-time))))
           `(setf ,name ,net)))))

;; terminer perceptron
