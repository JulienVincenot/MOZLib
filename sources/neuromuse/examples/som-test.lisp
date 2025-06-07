;;Fred Voisin, 2021
;(format t "Demo of a SOM server~%")
;(format t "cf. neuromuse-puredata/test-som.lisp & som-activation.pd"

(in-package :neuromuse)

(defvar som (make-instance 'som
			   :name 'som
			   :topology '(100 2)  ;'(euclidian 2)
			   :radius 2
			   :neighbourhood 'voisins))

(init som :size 100 :input 8)

(inspect som)

(setf (attention som) .05
      (learn-fact som) .1
      (radius som) 2
      (temp som) .01
      (latence som) .1
      (input som) #(0 0 0 0 0 0 0 0)
      (output som) '(0 0 0 0 0 0 0 0))

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
       (let* ((cmd-val (st2list buf))
	      (cmd (car cmd-val))
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

(setf (udplist som) '(12001 12002 12003 12004)
      (iplist som) '("127.0.0.1"))

     ;(iplist som) '("192.168.0.11" "192.168.0.66" "66.249.93.99" "66.249.93.99" "66.249.93.99" "66.249.93.99" "66.249.93.99")

(setf (superdaemon som) t)

(setf (daemons som) nil)

(setf (daemons som)
      (list (sb-thread:make-thread (lambda () (udp-input-server som (first (udplist som)) 128))
				      :name "input")
	    (sb-thread:make-thread (lambda () (udp-control-server som (second (udplist som)) 64))
				   :name "control")
	    (sb-thread:make-thread (lambda () (send-udp-output som))
				   :name "output")
	    (sb-thread:make-thread (lambda () (send-udp-error som))
				   :name "error")))

(format t "~S is listening !" (name som))


(setf (latence som) 0.)
(setf (radius som) 3)
(setf (learn-fact som) 0.3)
(setf (temp som) 0.05)

(setf (learn-fact som) 0.0)
(setf (temp som) 0.0)

(setf (superdaemon som) nil)
(mapcar #'sb-thread:terminate-thread (daemons som))

(inspect som)

(id
(winner som)
)

(mapcar #'id (net som))


(output som)



(inspect (nth (winner som) (net som)))

;oef
