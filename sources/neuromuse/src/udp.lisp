;; UDP in lisp

(in-package :neuromuse)

;(format t "Loading UDP...~%")

#+sbcl (require :sb-bsd-sockets)

;; au cas ou, peut permettre dans certains cas de ne pas quiter lisp
;; quand surcharge cause par udp
(defvar *udp* t)

(defun udp () (if *udp* (setf *udp* nil) (setf *udp* t) ))

#+sbcl (defun send-udp (string host port)
	 (let ((s (make-instance 'sb-bsd-sockets:inet-socket
				 :type :datagram :protocol :udp)))
	   (sb-bsd-sockets:socket-connect s (sb-bsd-sockets:make-inet-address host) port)
	   (sb-bsd-sockets:socket-send s (format nil "~a~c~c" string #\return #\linefeed) nil)
	   (sb-bsd-sockets:socket-close s)))

#+sbcl (defun receive-udp (port &optional (lenght 256))
	 (let ((s (make-instance 'sb-bsd-sockets:inet-socket :type :datagram :protocol :udp)))
	   (sb-bsd-sockets:socket-bind s #(0 0 0 0) port)
	   (loop while *udp* do
		(multiple-value-bind (buf len address port)
		    (sb-bsd-sockets:socket-receive s nil lenght)
		  (values buf)))
	   (sb-bsd-sockets:socket-close s)))

#+mcl (defun send-udp (string host port &key verbose)
	(let ((sock (make-socket :format :text :type :datagram)))
	  (send-to sock
		   (format nil "~a~c~c" string #\return #\linefeed)
		   (+ (length string) 2)
		   :remote-host host
		   :remote-port port)
	  (close sock))
	(when verbose (format t "~S ~S closed~%" host port)))

;(send-udp "test" "127.0.0.1" 8888)  ;)

#+mcl (defun listenudp (port size)
	#+mcl
	(let ((sock  (make-socket :format :text
				  :type :datagram
				  :local-port port))
	      (data nil))
	  (setf data (receive-from sock size :extract t))
	  (close sock)
	  (print data)
	  (values (subseq data 0 (- (length data) 2)))))

#+sbcl (defgeneric input-server (ann port lenght)
	 (:documentation "input server for neural nets"))

#+sbcl (defmethod input-server ((ann som) (port number) (lenght number))
	 (let ((s (make-instance 'sb-bsd-sockets:inet-socket :type :datagram :protocol :udp)))
	   (sb-bsd-sockets:socket-bind s #(0 0 0 0) port)
	   (loop while (superdaemon ann) do
		 (multiple-value-bind (buf len address port) (sb-bsd-sockets:socket-receive s nil lenght)
		   (when (verbose ann)
		     (format t "Received ~A bytes from ~A:~A - ~A ~%"
			     len address port (subseq buf 0 (min 10 len))))
		   (setf (input ann) (st2v buf)
			 (winner-neuron ann) (winner ann)
			 (output ann) (activation ann :n (car (id (winner-neuron ann)))))
		   (sleep (attention ann))))
	   (sb-bsd-sockets:socket-close s)))

#+sbcl (defmethod input-server ((ann mlp) (port number) (lenght number))
	 (let ((s (make-instance 'sb-bsd-sockets:inet-socket :type :datagram :protocol :udp)))
	   (sb-bsd-sockets:socket-bind s #(0 0 0 0) port)
	   (loop while (superdaemon ann) do
		 (multiple-value-bind (buf len address port) (sb-bsd-sockets:socket-receive s nil lenght)
		   (when (verbose ann)
		     (format t "Received ~A bytes from ~A:~A - ~A ~%"
			     len address port (subseq buf 0 (min 10 len))))
		   (setf (input ann) (st2list buf))
		   (run-mlp ann)
		   (sleep (latence ann))))
	   (sb-bsd-sockets:socket-close s)))

#+mcl (defun som-input-server (som port length)
	(let ((s (make-socket :format :text
			      :type :datagram
			      :local-port port)))
	  (loop while (superdaemon som) do
		(when (verbose som) (format t "Input server received data on port ~S~%" port))
		(setf (input som) (listenudp s length)
		      (winner som) (find-winner som)
		      (output som) (activation som :n (car (id (winner som)))))
		(sleep (attention som)))
	  (close s)))

#+sbcl (defgeneric control-server (ann port lenght)
	 (:documentation "control server for neural nets"))

#+sbcl (defmethod control-server ((ann som) (port number) (lenght number))
	 (let ((s (make-instance 'sb-bsd-sockets:inet-socket :type :datagram :protocol :udp)))
	   (sb-bsd-sockets:socket-bind s #(0 0 0 0) port)
	   (loop while (superdaemon ann) do
		 (multiple-value-bind (buf len address port) (sb-bsd-sockets:socket-receive s nil lenght)
		   (when (verbose ann)
		     (format t "Received ~A bytes from ~A:~A - ~A ~%"
			     len address port (subseq buf 0 (min 10 len))))
		   (let* ((cmd-val (st2list buf))
			  (cmd (car cmd-val))
			  (val (cadr cmd-val)))
		     (eval `(setf (,cmd ann) ,val)))))
	   (sb-bsd-sockets:socket-close s)))

#+sbcl (defmethod control-server ((ann mlp) (port number) (lenght number))
	 (let ((s (make-instance 'sb-bsd-sockets:inet-socket :type :datagram :protocol :udp)))
	   (sb-bsd-sockets:socket-bind s #(0 0 0 0) port)
	   (loop while (superdaemon ann) do
		 (multiple-value-bind (buf len address port) (sb-bsd-sockets:socket-receive s nil lenght)
		   (when (verbose ann)
		     (format t "Received ~A bytes from ~A:~A - ~A ~%"
			     len address port (subseq buf 0 (min 10 len))))
		   (let* ((cmd-val (st2list buf))
			  (cmd (car cmd-val))
			  (val (cadr cmd-val)))
		     (eval `(setf (,cmd ann) ,val)))))
	   (sb-bsd-sockets:socket-close s)))

#+mcl (defun som-control-server (som port length)
	(let ((s (make-socket :format :text
			      :type :datagram
			      :local-port port)))
	  (loop while (superdaemon som) do
		(when (verbose som) (format t "Input server received data on port ~S~%" port))
		(let* ((cmd-val (receive-from s length))
		       (cmd (car cmd-val))
		       (val (cadr cmd-val)))
		  (eval `(setf (,cmd som) ,val))))
	  (close s)))

#+sbcl (defgeneric output-server (ann ip port)
	 (:documentation "output server for neural nets : send activation to ip port"))

#+sbcl (defmethod output-server ((ann som) (ip string) (port number))
	 (loop while (superdaemon ann) do
	      (let ((out (list2string (output ann))))
		(send-udp out ip port)
		(sleep (latence ann)))))

#+sbcl (defmethod output-server ((ann mlp) (ip string) (port number))
  (loop while (superdaemon ann) do
	(let ((out (list2string (output ann))))
	  (send-udp out ip port)
	  (sleep (latence ann)))))

;eof
