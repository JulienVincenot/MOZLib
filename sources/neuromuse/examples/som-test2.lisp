;;Fred Voisin, 2021
;(format t "Demo of a SOM server~%")
;(format t "Cf. neuromuse-puredata/test-som2.pd & som-activation.pd")

(in-package :neuromuse)

(defvar sombig (make-instance 'som
			   :name 'som
			   :topology '(400 2)  ;'(euclidian 2)
			   :radius 2
			   :neighbourhood 'voisins))

(init sombig :size 400 :input 100)

;(inspect sombig)

(setf (attention sombig) .05
      (learn-fact sombig) .1
      (radius sombig) 2
      (temp sombig) .01
      (latence sombig) .1
      (input sombig) (make-list 100 :initial-element 0)
      (output sombig) (make-list 100 :initial-element 0))

(defun udp-input-server (som port lenght)
  (let ((s (make-instance 'sb-bsd-sockets:inet-socket :type :datagram :protocol :udp)))
    (sb-bsd-sockets:socket-bind s #(0 0 0 0) port)
    (loop while (superdaemon som) do
     (multiple-value-bind (buf len address port) (sb-bsd-sockets:socket-receive s nil lenght)
       (when (verbose som)
	 (format t "Received ~A bytes from ~A:~A - ~A ~%"
		 len address port (subseq buf 0 (min 10 len))))
       (setf (input som) (st2v buf))
       (update-activation som)
       (setf (winner som) (find-winner som)
	     (output som) (activation som :n (car (id (winner som)))))
       (learn som)
       (sleep (attention som))))
    (sb-bsd-sockets:socket-close s)))

(defun udp-control-server (som port lenght)
  (let ((s (make-instance 'sb-bsd-sockets:inet-socket :type :datagram :protocol :udp)))
    (sb-bsd-sockets:socket-bind s #(0 0 0 0) port)
    (loop while (superdaemon som) do
     (multiple-value-bind (buf len address port) (sb-bsd-sockets:socket-receive s nil lenght)
       (when (verbose som)
	 (format t "Received ~A bytes from ~A:~A - ~A ~%"
		 len address port (subseq buf 0 (min 10 len))))
       (print buf)
       (let* ((cmd-val (st2list buf))
	      (cmd (read-from-string (format nil "neuromuse::~S" (car cmd-val))))
	      (val (cadr cmd-val)))
	(eval `(setf (,cmd som) ,val)))))
    (sb-bsd-sockets:socket-close s)))

(defun send-udp-output (som)
  (loop while (superdaemon som) do
       (let ((out (list2string (append (list (car (id (winner som))))
				       (output som)))))
	 (send-udp out (first (iplist som)) (third (udplist som)))
	 (sleep (latence som)))))

(defun send-udp-error (som)
  (loop while (superdaemon som) do
       (let ((errors (list2string (mapcar #'distance (net som)))))
	 (send-udp errors (first (iplist som)) (fourth (udplist som)))
	  (sleep (latence som)))))

(setf (udplist sombig) '(12001 12002 12003 12004)
      (iplist sombig) '("127.0.0.1"))

     ;(iplist som) '("192.168.0.11" "192.168.0.66" "66.249.93.99" "66.249.93.99" "66.249.93.99" "66.249.93.99" "66.249.93.99")

(setf (superdaemon sombig) t)

;(setf (daemons sombig) nil)
(setf (daemons sombig)
      (list (sb-thread:make-thread (lambda () (udp-input-server sombig (first (udplist sombig)) 1024))
				      :name "input")
	    (sb-thread:make-thread (lambda () (udp-control-server sombig (second (udplist sombig)) 64))
				   :name "control")
	    (sb-thread:make-thread (lambda () (send-udp-output sombig))
				   :name "output")
	    (sb-thread:make-thread (lambda () (send-udp-error sombig))
				   :name "error")))

(format t "~S is listening !" (name sombig))

(setf (latence sombig) 0.05)
(setf (radius sombig) 4)
(setf (learn-fact sombig) 0.2)
(setf (temp sombig) 0.01)

(setf (learn-fact sombig) 0.0)
(setf (temp sombig) 0.0)

(setf (superdaemon sombig) nil)
(mapcar #'sb-thread:terminate-thread (daemons sombig))

(inspect sombig)

(find-winner sombig)


(id
(winner sombig)
)

(length (input sombig))
(length (output som))




;oef
