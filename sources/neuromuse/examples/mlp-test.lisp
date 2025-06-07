;;; MLP backpropagation to learn XOR test

;; input values
(defvar *xor-in*
  '((0 0)
    (1 0)
    (0 1)
    (1 1)))

;; output values for XOR problem 
(defvar *xor-goal*
  '((0)
    (1)
    (1)
    (0)))

;; create a multi-layer perceptron
;; with 2 neurons for input, 1 neuron for output and 2 neurons for a hidden layer
(make-mlp xor 2 1 2)

;; setting the mlp's learn factor, verbosity, latency, temperature atd error threshold, etc 
(let ((mlp xor))
  (setf
   (learn-fact mlp) .1  ; .6
   (temp mlp) .05  ; .3
   (verbose mlp) t
   (threshold mlp) .1
   (verbose mlp) 'T
   (input mlp) (car *xor-in*)
   (goal mlp) (car *xor-goal*)
   ))

(defvar *stop* NIL)
; (setf *stop* t)

(describe xor)

;; LEARNING loop
(let ((mlp xor)
      (in *xor-in*)
      (goal *xor-goal*)
      (e 999999)
      (n 0)
      (output)
      ) ; number of epochs

  (loop until (or *stop* (< 10000 n) (< e (threshold mlp)))
    ; while 
    ;     (progn (setf output (mapcar #'(lambda (x) (progn (setf (input xor) x) 
    ;                                                           (run-mlp xor)
    ;                                                           (mapcar #'round (output xor))
    ;                                                             )) *xor-in* ))
    ;             (equalp *xor-goal* output))
    
     do (incf n)
     do 
       (loop for i from 0 to (- (length in) 1)
	  do
	    (setf (input mlp) (nth i in)
		  (goal mlp) (nth i goal)
		  e (backpropagate mlp))
	    (push e (history-error mlp))
	    (setf (epoch mlp) (incf (epoch mlp) 1))
	    (when (verbose mlp)
	      (format t "~&epoc\: ~S, e = ~S" (epoch mlp) e)
	      (format t "~&~S \: ~S <<< ~S" (input mlp) (goal mlp) (output mlp)))
	    (when (latence mlp)
	      (sleep (latence mlp))))))

; (setf *stop* 't)

;; error history 
(history-error xor)

;; run test after learning
(dolist (input *xor-in*)
  (setf (input xor) input)
  (run-mlp xor)
  (format t "~S : ~S~&" input (apply #'round (output xor))))


