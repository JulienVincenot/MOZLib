;; graphs to dot format for drawing (with neato)

;;; at first, to update morphologie 'draw-tree', which was representing undirected graphs from
;;; Thanks to neato program, the job is to convert list of (node-A node-B dist) into dot format

(in-package :fv-morphologie)

(defun make-name-from-path (path)
  (cond ((pathnamep path)
         (pathname-name path))
        ((stringp path)
         (car (last (split-string (car (split-string path ".")) "/"))))
        (t "span-graph")))

(defun 2dot (graph min dis shape1 shape2 out legend &key (name "span-graph"))
  (let ((date (date))
        (nid (remove-if #'(lambda (x) (zerop (third x))) graph))
        (ide (remove-if-not #'(lambda (x) (zerop (third x))) graph)))
    (format out "graph ~S {~&" (make-name-from-path name))
    (format out "/* generated with fv-morphologie:graph>dot the ~S ~D ~:R at ~Sh~S */~&"
            (first date) (nth (1- (cadr date)) *months*) (third date) (fourth date) (fifth date))
    (format out " node [shape=~(~S~), font=Helvetica, fontsize=12, color=black, fontcolor=black];~&"
	    (read-from-string shape1))
    (format out " edge [font=Helvetica,fontsize=10, color=black, labelfloat=true];~&")
    (dolist (n nid)
      (format out " \" ~S\" -- \" ~S\" [w=~S, len=~,6F, label=~S];~&"
              (car n) (cadr n) dis (format nil "~3F" (third n)) (if legend (third n) " ")))
    (when ide
      (format out " node [shape=~(~S~), font=Helvetica, fontsize=12, color=blue, fontcolor=blue];~&"
	      (read-from-string shape2))
      (format out " edge [font=Helvetica,fontsize=10, color=blue];~&")
      (dolist (n ide)
        (format out " \" ~S\" -- \" ~S\" [len=~,6F];~&" (car n) (cadr n) min)))
    (format out "}~&")))

#+sbcl
(defun graph2dot (graph dis mode shape out &optional (legend t))
  (let* ((k (if (numberp mode) mode (if mode 1 0.2)))
         (min (* (car (sort (remove-if #'zerop (mapcar #'third graph)) '<)) k))
         shape1 shape2)
    (when (not out) (setf out t))
    (if (not shape) (setf shape1 "ellipse" shape2 "ellipse")
      (if (stringp shape) (setf shape1 shape shape2 shape)
        (setf shape1 (car shape) shape2 (cadr shape))))
    (cond ((or (pathnamep out) (stringp out))
           (let ((file (pathname-name out))
                 (dir (pathname-directory out))
                 (type (pathname-type out)))
             (with-open-file (stream (make-pathname :directory dir
                                                    :name file
                                                    :type "dot")
                                     :direction :output
                                     :if-exists :supersede
                                     :if-does-not-exist :create)
               (2dot graph min dis shape1 shape2 stream legend :name out))
             (when (not (equalp type "dot"))
               

               ; (shell-command (format nil "neato -T~(~S~) > ~S"
               ;                        (if (or (equalp type "gif")
               ;                                (equalp type "png"))
               ;                            (read-from-string type)
               ;                          (read-from-string "gif"))
               ;                        (make-pathname :directory dir
               ;                                       :name file
               ;                                       :type (if (or (equalp type "gif")
               ;                                                     (equal type "png"))
               ;                                                 type "png")))
               ;                :input (make-pathname :directory dir
               ;                                      :name file
               ;                                      :type "dot")
               ;                :wait nil
               ;                :output :stream
               ;                :if-output-exists :supersede)

               (print "Generated .dot file, ready to retrieve coordinates from neato...!") 



               )))
          (t (2dot graph min dis shape1 shape2 out legend :name out))))
  (values))

#+Lispworks
(defun graph2dot (graph dis mode shape out &optional (legend t) (neato nil))
  (let* ((k (if (numberp mode) mode (if mode 1 0.2)))
         (min (* (car (sort (remove-if #'zerop (mapcar #'third graph)) '<)) k))
         shape1 shape2)
    (when (not neato)
      (setf neato "/usr/local/bin/neato")
      (format t "~& graph2dot: using /usr/local/bin/neato"))
    (when (not out) (setf out t))
    (if (not shape) (setf shape1 "ellipse" shape2 "ellipse")
      (if (stringp shape) (setf shape1 shape shape2 shape)
        (setf shape1 (car shape) shape2 (cadr shape))))
    (cond ((or (pathnamep out) (stringp out))
           (let* ((file (pathname-name out))
                  (dir (pathname-directory out))
                  (type (pathname-type out))
                  (dot (make-pathname :directory dir
                                      :name file
                                      :type "dot")))
             (with-open-file (stream dot
                                     :direction :output
                                     :if-exists :supersede
                                     :if-does-not-exist :create)
               (2dot graph min dis shape1 shape2 stream legend :name out))
             (when (not (equalp type "dot"))
               (system::run-shell-command
                (list neato (format nil "-T~(~S~)" (if type (read-from-string type) (read-from-string "gif"))))
                :input dot
                :output (namestring (make-pathname :directory dir
                                           :name file
                                           :type (if type type "gif")))
                :wait t 
                :if-input-does-not-exist :error
                :if-output-exists :supersede
                ))))
          (t (2dot graph min dis shape1 shape2 out legend :name name)))
    (values out)))

;(graph2dot '((a b 1) (a c 2) (a d 3) (b k 8) (b j 0)) 0 .1 nil t)
;(graph2dot '((8 10 0) (1 8 1.5) (7 9 0) (7 11 1) (1 4 0) (1 11 1) (2 11 2) (2 6 0) (2 5 0) (2 3 0) (0 2 1)) 0 1 nil t)
;(graph2dot '((8 10 0) (1 8 1.5) (7 9 0) (7 11 1) (1 4 0) (1 11 1) (2 11 2) (2 6 0) (2 5 0) (2 3 0) (0 2 1)) 0 nil nil t)
;(graph2dot '((8 10 0) (1 8 1.5) (7 9 0) (7 11 1) (1 4 0) (1 11 1) (2 11 2) (2 6 0) (2 5 0) (2 3 0) (0 2 1)) 0 nil "ellipse" t)
;(graph2dot '((8 10 0) (1 8 1.5) (7 9 0) (7 11 1) (1 4 0) (1 11 1) (2 11 2) (2 6 0) (2 5 0) (2 3 0) (0 2 1)) 0 .25 "plaintext" t)
;(graph2dot '((8 10 0) (1 8 1.5) (7 9 0) (7 11 1) (1 4 0) (1 11 1) (2 11 2) (2 6 0) (2 5 0) (2 3 0) (0 2 1)) 0 1 '("point" "plaintext") t)
;(graph2dot '((8 10 0) (1 8 1.5) (7 9 0) (7 11 1) (1 4 0) (1 11 1) (2 11 2) (2 6 0) (2 5 0) (2 3 0) (0 2 1)) 0 1 "plaintext" "/Users/fred/g.gif")

(defgeneric graph>dot (graph dis mode out &key shape legend neato)
  (:documentation "Converts a graph (list of edges) into an undirected graph into dot langage to be processed using neato program.
Arguments are:
graph : the graph
dis : amount of distortion allowed for distances fir drawing the graph (from 0.0 for minimum distorsion to 1.0 maximum distorsion)
mode : scaling factor for the mininum distance
shape : string or list of strings to define node's shape, using 'neato' definitions
out :
if NIL or T, print out in listener;
if a string, it defines the pathname of the output. Type of file define output.
"))

(defmethod graph>dot  ((graph list) (dis null) (min null) (out t) &key shape legend neato)
  (declare (ignore neato))
  (graph2dot graph 0 nil shape out legend))

(defmethod graph>dot  ((graph list) (dis number) (min symbol)  (out t) &key shape legend neato)
  (declare (ignore neato))
  (graph2dot graph dis T shape out legend))

(defmethod graph>dot  ((graph list) (dis number) (min number)  (out t) &key shape legend neato)
  (declare (ignore neato))
  (graph2dot graph dis min shape out legend))



