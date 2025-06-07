;; Elman Recurrent Multi-Layer Perceptron, exemple 1
;; 
;; To learn and detect in Lisp a beat played in the air with the right hand holding some accelerometer.
;; by Fred Voisin, 2017.
;;
;; This exemple demonstrate how to train a small recurrent Elman Multi-Layer Perceptron to detect a beat in a stream of data from an accelerometer and then to play it as an UDP server into some intranet to trig sound or control tempo of some sequence with some digital audio workstation as a UDP client, such as Puredata ((see http://www.puredata.info). To run this example, one can use Emacs, Slime and (at minimum) SBCL Lisp environment.
;; requires sb-bs-sockets
;;
;; At first, we train the MLP to detect a beat from a short sequence of samples recorded from an accelerometer, using Puredata. The data are recorded in a text file where each line reprensent a frame of data. Since the learning process is supervised, we had added the expected output (target) for each line, with the value 0 when the beat is off or value 1 when the beat is on, with some attention to mark the beat on as soon as possible when a beat is beginning.

;; 1. Training
;; Load some accelerometer samples and their expected goals from example file 'accel_bang2learn.lisp'
;; by the means of the Lisp variable *accel*, from a sample file created with Puredata.
;; Values 1 to 3 for force values, scaled from -1 to 1 (fx fy fz)
;; values 4 to 6 for gyroscopic values (rx ry rz)
;; the last value is the target to learn, 1 for trigger, 0 for release,
;; is marked by hand by playing back the values at a slower speed.

(load "accel_bang2learn.lisp")

;; see the samples
(print *accel*)

;; setting input values, 6 first columns of the file
(defvar *in* (mapcar #'(lambda (x) (subseq x 0 6)) *accel*))

;; setting target values to learn, the 7th column
(defvar *goal* (mapcar #'(lambda (x) (list (nth 6 x))) *accel*))

;; Create a Elman Recurrent Multi-Layer Perceptron, named accel641-r :
;; 6 neurons at input layer, 1 neuron for output and 4 neurons in a single hidden layer
;; the first (and sole) hidden layer (number 0) is defined as the recurrent layer
;; This should work to detect a simple gesture such as a stroke in the air
;; probably better than a simple MLP
(make-rmlp accel641-R 6 1 0 4)
(make-rmlp accel641-R2 6 1 0 4)
(make-rmlp accel641-R3 6 1 0 4)
(make-rmlp accel641-R4 6 1 0 4)

(setf (net accel641-R2) (copy-tree (net accel641-R))
      (net accel641-R3) (copy-tree (net accel641-R))
      (net accel641-R4) (copy-tree (net accel641-R)))

; accel641-R

;; setting the mlp's learning factor, verbosity, latency, temperature atd error threshold, etc 
(let ((rmlp accel641-R))
  (setf
   (learn-fact rmlp) .3
   (temp rmlp) .1
   (net-temp rmlp) .05
   (verbose rmlp) t
   (threshold rmlp) .0
   (verbose rmlp) 'T
;   (input rmlp) (car *in*)
;   (goal rmlp) (car *goal*)
   (latence rmlp) .005))

;; overview of the mlp
(describe accel641-R)

;; this value to be changed to stop the learning loop
(setq *stop* NIL)
; (setf *stop* t)

(setf (input accel641-R) (car *in*)
      (goal accel641-R) (car *goal*))
(backpropagate accel641-R)

;; LEARNING loop 1 : playing a sequence of input values
(let* ((rmlp accel641-r)
       (e 999999)
       (l (length *in*))
       (i (* (epoch rmlp) l)))
  (loop until (or *stop*
		  (and (= 1 (car (goal rmlp)))
		       (<= e (threshold rmlp))))
     do
       (setf (input rmlp) (nth (mod i l) *in*)
	     (goal rmlp) (nth (mod i l) *goal*)
	     e (backpropagate rmlp))
       (push e (history-error rmlp))
       (setf (epoch rmlp) (floor (/ i l))
	     i (1+ i))
       (when (verbose rmlp)
	 (format t "~&epoc\: ~S, e = ~S \: ~S <<< ~S" (epoch rmlp) e (goal rmlp) (output rmlp)))
       (when (latence rmlp)
	 (sleep (latence rmlp)))))

(setf (net-temp accel641r) 0.01)

;(setf *stop* 't)
(epoch accel641-r)

;; error history
(history-error accel641-r)

;; This loop to test after learning process.
;; Check if output is close to target
;; This should e OK after 6500 loops, i.e. 2 times only the number of samples !

;; Set the temperature to 0 for better detection !
(setf (temp accel641-r) 0
      (net-temp accel641-r) 0
      (recurrent-layer-activation accel641-r) '(0 0 0 0))


;; check output and error accross the inputs
(loop for i from 0 to (length *in*)
     do
     (setf (input accel641-r) (nth i *in*))
     (run-mlp accel641-r)
     (format t "in: ~S target: ~S out: ~S~&"
	     (input accel641-r)
	     (nth i *goal*)
	     (output accel641-r)))


;; The following block to  study outputs out of Lisp000
(save *in* "accel641r-in.lisp")
(save *goal* "accel641r-goal.lisp")
;; save history error (first value is last one!)
(save (reverse (history-error accel641-r)) "accel641-r-error@15.lisp")
;; save output 
(setf (net-temp accel641-r) 0
      (temp accel641-r) 0)
(let ((output (list)))
  (setf (recurrent-layer-activation accel641-r) '(0 0 0 0))
  (dolist (in *in*)
    (setf (input accel641-r) in)
    (push (activation accel641-r) output))
  (save (nreverse output) "accel641-r-output@15.lisp"))


;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2. Play with the MLP as a server on an intranet thru UDP
;; Now, let connect this small MLP to the real world to detect the triggering gestures with some accelerometer and thru Puredata.
;; Don't forget to make the MLP learn your own accelerometer values !)

;; The following part of the code would be formalized latter to be more user friendly
;; (agent architecture developped).
;; At first, set IP and port to communicate with Puredata thru UDP protocol
(setf (udplist accel641-r) 12345
      (iplist accel641-r) "127.0.0.1"
      (latence accel641-r) 0
      (superdaemon accel641-r) T)

;; then, create threads to listen data comming from Puredata and to send it back the MLP output
(setf (daemons accel641-r)
      (list (sb-thread:make-thread (lambda () (input-server accel641-r 11001 128))
				   :name "listen")
	    (sb-thread:make-thread (lambda () (output-server accel641-r "127.0.0.1" 10001))
				   :name "answer")))

(setf (daemons accel641-r2)
      (list (sb-thread:make-thread (lambda () (input-server accel641-r2 11002 128))
				   :name "listen2")
	    (sb-thread:make-thread (lambda () (output-server accel641-r2 "127.0.0.1" 10002))
				   :name "answer2")))

(setf (daemons accel641-r3)
      (list (sb-thread:make-thread (lambda () (input-server accel641-r3 11003 128))
				   :name "listen")
	    (sb-thread:make-thread (lambda () (output-server accel641-r3 "127.0.0.1" 10003))
				   :name "answer")))

(setf (daemons accel641-r4)
      (list (sb-thread:make-thread (lambda () (input-server accel641-r4 11004 128))
				   :name "listen")
	    (sb-thread:make-thread (lambda () (output-server accel641-r4 "127.0.0.1" 10004))
				   :name "answer")))



;; see if the thread are running
(daemons accel641-r)

;; on the fly, we can create another thread to send the same output to another machine, in sync...
(push (sb-thread:make-thread (lambda () (output-server accel641-r "192.168.0.2" 10002))
			     :name "answer2mac")
      (daemons accel641-r))


(push (sb-thread:make-thread (lambda () (input-server accel641-r 10004 128))
			     :name "listen2")
      (daemons accel641-r) )


;; and, to stop all the threads
(mapcar #'sb-thread:terminate-thread (daemons accel641-r2))

;; or just one
(sb-thread:terminate-thread
 (nth 0
      (daemons accel641) ))

;; it's probably better to terminate a thread before removing it
(setf (daemons accel641) nil)

;; Finally save the MLP to play it again later
;; (bug : hidden and out functions may be recalled by hand !)
;; Record some comments about this MLP
(setf (properties accel641) "To detect a stroke in the air with an accelerometer ESP in the right hand. LEAD, May 2017")

;; then :
(save accel641r)

;; When a Linux box - Ubuntu 16.04, x86_64 Intel i7) may receive the stream
;; from accelerometer at SR = 500 Hz thru its own Wifi hotspot,  and playing this example with Puredata,
;; the detection of the beat performed appears to be robust and presents no latency.
;; This demonstartes that Lisp is still well adapted to play music in real-time
;; while live coding music in the same time.
;; Furthermore, four or more different MLP servers may run using the same Lisp environment
;; to play with a quartet of accelerometers...

