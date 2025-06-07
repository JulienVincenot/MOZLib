;;; Multi-Layer Perceptron, exemple 2
;; To learn and detect a beat played in the air with the right hand holding some accelerometer.
;; Fred Voisin, LEAD - CNRS - Université de Bourgoggne, 2017.
;;
;; This exemple show how to train a mall Multi-Layer Perceptron to detect a beat in a stream of data from an accelerometer and, then, to play with as a UDP server into some intranet to trig sound or control tempo of some sequence with some digital audio workstation as a UDP client, such as Puredata ((see http://www.puredata.info). To run this example, one can use Emacs, Slime and SBCL Lisp environment
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

;; setting input values
(defvar *in* (mapcar #'(lambda (x) (subseq x 0 6)) *accel*))

;; setting target values to learn 
(defvar *goal* (mapcar #'(lambda (x) (list (nth 6 x))) *accel*))

;; Create a multi-layer perceptron, named accel641 :
;; 6 neurons at input layer, 1 neuron for output and 4 neurons in a hidden layer
;; should work to detect a simple gesture such as a stroke in the air
(make-mlp accel641 6 1 4)

;; setting the mlp's learning factor, verbosity, latency, temperature atd error threshold, etc 
(let ((mlp accel641))
  (setf
   (learn-fact mlp) .4
   (temp mlp) .1
   (verbose mlp) t
   (threshold mlp) .1
   (verbose mlp) 'T
   (input mlp) (car *in*)
   (goal mlp) (car *goal*)
   (latence mlp) .01
   ))

;; overview of the mlp
(describe accel641)

;; this value to be changed to stop the learning loop
(setq *stop* NIL)
; (setf *stop* t)

;; LEARNING loop 1, playing the samples from the beginning to the end
(let ((mlp accel641)
      (e 999999)
      (l (length *in*))
      (i 0))
  (loop until (or *stop*
		  (and (= 1 (car (goal mlp)))
		       (< e (threshold mlp))))
     do
       (setf i (random l) 
	     (input mlp) (nth i *in*)
	     (goal mlp) (nth i *goal*)
	     e (backpropagate mlp))
       (push e (history-error mlp))
       (setf (epoch mlp) (incf (epoch mlp) 1))
       (when (verbose mlp)
	 (format t "~&epoc\: ~S, e = ~S" (epoch mlp) e)
	 (format t "~&~S \: ~S <<< ~S" (input mlp) (goal mlp) (output mlp)))
       (when (latence mlp)
	 (sleep (latence mlp)))))

;; LEARNING loop 2, playing the samples randomly,
;; probably be more accurate since release periods are longer than trigger periods
;; (since time dimension is not learned).
(let ((mlp accel641)
      (e 999999))
  (loop until (or *stop* (< e (threshold mlp)))
     do
       (loop for i from 0 to (- (length *in*) 2)
	  do
	    (setf (input mlp) (nth i *in*)
		  (goal mlp) (nth i *goal*)
		  e (backpropagate mlp))
	    (push e (history-error mlp))
	    (setf (epoch mlp) (incf (epoch mlp) 1))
	    (when (verbose mlp)
	      (format t "~&epoc\: ~S, e = ~S" (epoch mlp) e)
	      (format t "~&~S \: ~S <<< ~S" (input mlp) (goal mlp) (output mlp)))
	    (when (latence mlp)
	      (sleep (latence mlp))))))

;; (setf *stop* 't)
(epoch accel641)

;; error history
(history-error accel641)

;; This loop to test after learning process.
;; Check if output is close to target
;; This should e OK after 6500 loops, i.e. 2 times only the number of samples !
(loop for i from 0 to (length *in*)
     do
     (setf (input accel641) (nth i *in*))
     (run-mlp accel641)
     (format t "in: ~S target: ~S out: ~S~&"
	     (input accel641)
	     (nth i *goal*)
	     (output accel641)))

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; The following block to  study outputs out of Lisp
(save *in* "accel641-in.lisp")
(save *goal* "accel641-goal.lisp")
;; save history error (first value is last one!)
(save (reverse (history-error accel641)) "accel641-error.lisp")
;; save output 
(let ((output (list)))
  (dolist (in *in*)
    (setf (input accel641) in)
    (push (activation accel641) output))
  (save (nreverse output) "accel641-output.lisp"))


;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2. Play with the MLP as a server on an intranet thru UDP
;; Now, let connect this small MLP to the real world to detect the triggering gestures with some accelerometer and thru Puredata.
;; Don't forget to make the MLP learn your own accelerometer values !)

;; Set the temperature to 0 for better detection !
(setf (temp accel641) 0)

;; The following part of the code would be formalized latter to be more user friendly
;; (agent architecture developped).
;; At first, set IP and port to communicate with Puredata thru UDP protocol
(setf (udplist accel641) 12345
      (iplist accel641) "127.0.0.1"
      (latence accel641) 0
      (superdaemon accel641) T)

;; then, create threads to listen data comming from Puredata and to send it back the MLP output
(setf (daemons accel641)
      (list (sb-thread:make-thread (lambda () (input-server accel641 11001 128))
				   :name "listen")
	    (sb-thread:make-thread (lambda () (output-server accel641 "127.0.0.1" 10001))
				   :name "answer")))

;; see if the thread are running
(daemons accel641)

;; on the fly, we can create another thread to send the same output to another machine, in sync...
(push (sb-thread:make-thread (lambda () (output-server accel641 "192.168.0.2" 10002))
			     :name "answer2mac")
      (daemons accel641))


(push (sb-thread:make-thread (lambda () (input-server accel641 10004 128))
			     :name "listen2")
      (daemons accel641) )


;; and, to stop all the threads
(mapcar #'sb-thread:terminate-thread (daemons accel641))

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
(save accel641)

;; When a Linux box - Ubuntu 16.04, x86_64 Intel i7) is directly receiving the stream
;; from accelerometer at SR = 500 Hz thru its own Wifi hotspot,  and playing this example with Puredata,
;; the detection of the beat performed appears to be robust and presents no latency.
;; This demonstartes that Lisp is still well adapted to play music in real-time
;; while live coding music in the same time.
;; Furthermore, four or more different MLP servers may run using the same Lisp environment
;; to play with a quartet of accelerometers...

