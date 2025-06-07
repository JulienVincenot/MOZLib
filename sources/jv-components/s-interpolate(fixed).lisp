;; s-interpolate.lisp
;; interpolate two lists as sequences of symbols using some levenshtein distance algorithm.
;; Fred Voisin, d'apres une suggestion de Julien Vincenot, 2013.
;; some debug on (sunny day)  may 18th at Ourcq :)

(defun s2l (string)
 (let ((r nil))
    (dotimes (n (length string) (nreverse r))
      (when (not (eql #\ (elt string n)))
	(push (read-from-string (string (elt string n))) r)))))

(defun m-levenshtein (s1 s2 &key (test #'eql))
 (let* ((width (1+ (length s1)))
	 (height (1+ (length s2)))
	 (d (make-array (list height width)
                       :element-type 'fixnum))
        (s1 (coerce s1 'vector))
        (s2 (coerce s2 'vector)))
   (dotimes (x width)
     (setf (aref d 0 x) x))
   (dotimes (y height)
     (setf (aref d y 0) y))
   (dotimes (x (length s1))
     (dotimes (y (length s2))
       (let ((cost (if (funcall test (aref s1 x) (aref s2 y)) 0 1)))
         (setf (aref d (1+ y) (1+ x))
               (min (1+ (aref d y (1+ x)))
                    (1+ (aref d (1+ y) x))
                    (+ (aref d y x)
                       cost))))))
   (values d))) 

;(m-levenshtein '(s i t e) '(s a t))
;(m-levenshtein '(r a t) '(a r t))
;(m-levenshtein '(i n t e r e s t) '(i n d u s t r y))

(defun d-levenshtein (s1 s2 &key (test #'eql))
  (aref (m-levenshtein s1 s2 :test test) (length s1) (length s2)))

;(d-levenshtein '(i n t e r e s t) '(i n d u s t r y))

(defun ins (a b x y)
  (let ((a1 (subseq a 0 (1+ x)))
        (a2 (subseq a (1+ x))))
    (append a1 (list (nth y b)) a2)))

(defun sup (a b x y)
  (declare (ignore b) (ignore y))
  (append (subseq a 0 x) (subseq a (1+ x))))

(defun sub (a b x y)
  (let ((a1 (subseq a 0 x))
        (a2 (subseq a (1+ x))))
    (append a1 (list (nth y b)) a2)))

(defun s-interpolate (a b &key (test 'eql))
  (let ((m (m-levenshtein b a :test test))  ; matrice
        (p (list (list (length b) (length a)))) ; positions
        (r (list b)) ; resultat
        (o nil)
        (sols nil)
        (np '(1000 1000))) ; operation
    (loop until  (and (zerop (car np)) (zerop (cadr np))); (eval `(and .,(mapcar #'zerop (car p))))
          do
          (let* ((x (caar p))
                 (y (cadar p))
              ;   (np nil)
                 (coutsvoisins (if (zerop x)
                                   (if (zerop y)
                                       (abort)
                                     (list (list 0 (1- y) (aref m (- y 1) 0))))
                                 (if (zerop y)
                                     (list (list (1- x) 0 (aref m 0 (- x 1))))
                                   (list (list (1- x) (1- y) (aref m (- y 1) (- x 1)))
                                         (list (1- x) y (aref m y (- x 1)))
                                         (list x (1- y) (aref m (- y 1) x)))))) 
                 (min (apply #'min (mapcar #'third coutsvoisins))))
            ;(print (list (nth x a) (nth y b)))
            ;(print (list (nth (1- x) a) (nth (1- y) b) coutsvoisins))
            (if (funcall test (nth (1- x) a) (nth (1- y) b))
              (setf coutsvoisins (list (list (1- x) (1- y) (aref m (- y 1) (- x 1)))))
              (setf coutsvoisins (remove-if #'(lambda (var) (> (caddr var) min)) coutsvoisins)))
            
            ;(print coutsvoisins)

            (if (= 1 (length coutsvoisins))
                (setf np (car coutsvoisins))
              (setf np (nth (random (length coutsvoisins)) coutsvoisins)))
            ;(print np)
            (setf o (if (= x (car np))
			(if (= y (cadr np))
                            (abort)
			    #'ins)
			(if (= y (cadr np))
			    #'sup
			    #'sub)
			))
            (push o sols)
	    (push (funcall o (car r) a (1- x) (1- y)) r)
            (push (butlast np) p)))
    (values (remove-duplicates r :test #'equalp)
            (reverse (mapcar #'function-name sols)))))

#|
(s-interpolate '(a m p h o r a) '(a m o r p h a))

(time (remove-duplicates (loop for a from 0 to 10000 collect (s-interpolate '(a m p h o r a) '(a m o r p h a)))
                    :test #'equalp))
|#

;(time (remove-duplicates (loop for a from 0 to 10000 collect (s-interpolate '(a m p h o r a) '(a m o r p h a)))
;                    :test #'equalp))





(defun array-to-list (array)
  (let* ((dimensions (array-dimensions array))
         (depth      (1- (length dimensions)))
         (indices    (make-list (1+ depth) :initial-element 0)))
    (labels ((recurse (n)
               (loop for j below (nth n dimensions)
                 do (setf (nth n indices) j)
                 collect (if (= n depth)
                           (apply #'aref array indices)
                           (recurse (1+ n))))))
      (recurse 0))))

(defun print-array (array)
  (format t "~%")
  (let ((list (array-to-list array)))
    (dotimes (x (length list))
      (format t "~a" '--->)
      (dolist (elt (nth x list))
        (format t " ~a" elt))
      (format t "~%")
      )))



;(print-array 

;)

#|
(s-interpolate '(a m p h o r a) '(p o u l e t))
(s-interpolate '(a m p h o r a) '(a m o r p h a))
(m-levenshtein '(a m p h o r a) '(a m o r p h a))
(print-matrix (s-interpolate  '(a n t i c o n s t i t u t i o n n e l l e m e n t) 
		'(c o n t r a v e n t i o n n a l i s a t i o n)))

(length (s-interpolate  '(a n t i c o n s t i t u t i o n n e l l e m e n t) 
		'(c o n t r a v e n t i o n n a l i s a t i o n)))
|#
