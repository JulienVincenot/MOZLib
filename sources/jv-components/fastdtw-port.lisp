;;; based on library fastdtw by Kazuaki Tanida (MIT Licence)
;;; adapted for Common LISP from Python source code by Julien Vincenot
;;; https://pypi.org/project/fastdtw/

;;; Dynamic Time Warping (DTW) algorithm with an O(N) time and memory complexity.


(in-package :jv-components)


(defmacro dtw_while (test &body decls/tags/forms)
  `(do () ((not ,test) (values))
     ,@decls/tags/forms))


(defun __reduce_by_half (x)
  (let ((res (loop for i from 0 to (- (- (length x) (mod (length x) 2)) 1) by 2
               collect (float 
                        (/ (+ (aref x i) (aref x (+ i 1))) 2))))) 
    (make-array (length res) 
                :initial-contents 
                res)))

(defun __fastdtw (x y radius dist)

  (let (
        (min_time_size (+ radius 2))
        )
    
    (if (or (< (length x) min_time_size)
            (< (length y) min_time_size))
                
        (return-from __fastdtw (dtw x y dist)))

    (let (          
          (x_shrinked (__reduce_by_half x))
          (y_shrinked (__reduce_by_half y)) 
          )
      
      (multiple-value-bind 
          (distanco patho)
          (__fastdtw x_shrinked y_shrinked radius dist)
        (list (setf distance distanco) (setf path patho)))
         
      (setf window (__expand_window path (length x) (length y) radius))
      
      (__dtw x y window dist)
      )
    )
  )

(defun __expand_window (path len_x len_y radius)

  (let ((path_ path)
        (window_ ())
        (window ())
        (start_j 0)
        )
    
    (loop for (i j) in path  
     do (loop for a from (- radius) to (+ 0 radius)
            do (loop for b from (- radius) to (+ 0 radius)
                 do (push (list (+ a i) (+ b j)) 
                          path_))))
     
    (setf path_ (remove-duplicates 
                 (reverse path_) 
                 :test #'equalp :from-end t))

     (loop for (i j) in path_ ;;; PATH_ attention
       
       do (loop for a in (list (list (* i 2)(* j 2))  
                               (list (* i 2)(+ (* j 2) 1))
                               (list (+ (* i 2) 1) (* j 2))
                               (list (+ (* i 2) 1) (+ (* j 2) 1))
                               )
            
            do (push a window_))
       )

    (loop for i from 0 to (- len_x 1)
      do (let ((new_start_j nil))
           (loop named loop-1
             for j from start_j to (- len_y 1)
             do (if (member (list i j) 
                            window_ 
                            :test #'equalp)
                    (progn 
                      (push (list i j) window)
                      (if (null new_start_j)
                          (setf new_start_j j)))
                    (if (not (null new_start_j))
                        (return-from loop-1 ()))
                    )
             )
           (setf start_j new_start_j)
           )
      )
    )
  )

(defun dtw (x y &optional (dist nil))
  "Return the distance between 2 time series without approximation

   Parameters
   ----------
   x : array_like
       input array 1
   y : array_like
       input array 2
   dist : function or int
       The method for calculating the distance between x[i] and y[j]. If dist is 
       an int of value p > 0, then the p-norm will be used. If dist is a function 
       then dist(x[i], y[j]) will be used. If dist is None then abs(x[i] - y[j]) 
       will be used.

   Returns
   -------
   distance : float
       the approximate distance between the 2 time series
   path : list
       list of indexes for the inputs x and y

   Examples
   --------
   >>> import numpy as np
   >>> import fastdtw
   >>> x = np.array([1, 2, 3, 4, 5], dtype='float')
   >>> y = np.array([2, 3, 4], dtype='float')
   >>> fastdtw.dtw(x, y)
   (2.0, [(0, 0), (1, 0), (2, 1), (3, 2), (4, 2)])"
   
  (multiple-value-bind 
      (a b disto)
      (__prep_inputs x y dist) 
    (list (setf x a) (setf y b) (setf dist disto)))
  
    (__dtw x y nil dist)

)



(defun mydepth (tree)
           (if (atom tree) 1 
               (1+ (apply #'max (mapcar #'mydepth tree)))))

(defun __difference (a b)
    (abs (- a b)))

(defun norm-vector (vector ord)
  (expt 
   (loop for i across vector
     sum (abs (expt i ord)))
     (/ 1 ord))
   )

(defun __norm (p)
  #'(lambda (a b) (norm-vector (dtw_vector_g- a b) p)) 
)

(defun dtw_list! (x)
  (if (atom x)
      (list x)
      x))

(defun dtw_g- (x y)
  (mapcar #'- x y))

(defun dtw_vector_g- (vec1 vec2)
  (let ((res (loop for i across vec1
               for j across vec2
               collect (- i j))
             ))
    (make-array (length res) 
                    :initial-contents 
                    res)         
))


(defun __prep_inputs (x y dist)

  (if (not (arrayp x))
      (setf x (make-array (length x) 
                          :initial-contents 
                    x)))
  (if (not (arrayp y))
      (setf y (make-array (length y) 
                          :initial-contents 
                          y)))
  
  (if (and (and (= (mydepth x) (mydepth y))
                (> (mydepth x) 1))
           (not (equalp (second (array-dimensions x))
                        (second (array-dimensions y)))))
      (error "The 2nd dimension of x and y must be the same" x))
  
  (if (and (numberp dist) (<= dist 0))
      (error "dist cannot be a negative integer" x))

  (if (null dist)
      (if (= 1 (mydepth x))
          (setf dist #'__difference)
          (setf dist (__norm 1)))
      (if (numberp dist)
          (setf dist (__norm dist))
          ))
  (values x y dist))




(defun __dtw (x y window dist)

  (let ((len_x (length x))
        (len_y (length y)))
   
    (if (null window)
        (setf window
              (loop for i from 0 to (- len_x 1)
                append (loop for j from 0 to (- len_y 1)
                         collect (list i j))
                )
              )
        )

    (loop for i in window
          for j from 0 to (- (length window) 1)
      do 
      (setf (nth j window) (mapcar #'(lambda (x) (+ 1 x)) i))
      )
 
    ; INIT hash table (dict equivalent)
    (defparameter *D* (make-hash-table :test 'equalp))
    (setf (gethash '(0 0) *D*) '(0 0 0))

    (loop for (i j) in window    
      do (let ((dt (apply dist (list (aref x (- i 1)) (aref y (- j 1))))))

           (setf (gethash (list i j) *D*) 

                  (first (sort  ;;;;;;;;;;;;; SOLUTION TEMPORAIRE -> SLOOOOOOW
                          (list (list (+ (first (dtw_list! 
                                                 (if-nil-replace-if-not-pass 
                                                  (gethash (list (- i 1) j) *D*)))) dt)
                                      (- i 1) 
                                      j)
                                (list (+ (first (dtw_list! 
                                                 (if-nil-replace-if-not-pass 
                                                  (gethash (list i (- j 1)) *D*)))) dt)
                                      i
                                      (- j 1))
                                (list (+ (first (dtw_list!
                                                 (if-nil-replace-if-not-pass
                                                  (gethash (list (- i 1) (- j 1)) *D*)))) dt)
                                      (- i 1)
                                      (- j 1))
                                )
                          #'< :key #'first))
                  )
           )
      )
    
   
    (defparameter *path* nil)
    
    (let (
          (i (length x))
          (j (length y))
          (fixed ())
          )
      
      (dtw_while (not (= i j 0))
        
        (push (list (- i 1) (- j 1)) 
              *path*)
        
        (setf fixed (list (second (dtw_list! 
                                   (if-nil-replace-if-not-pass 
                                    (gethash (list i j) *D*))))
                          (third (dtw_list! 
                                  (if-nil-replace-if-not-pass 
                                   (gethash (list i j) *D*))))))
        (setf i (first fixed))
        (setf j (second fixed))
            
        )
      )
    
    (setf *path* (reverse *path*))
    
    (values (first (dtw_list! 
                    (if-nil-replace-if-not-pass 
                     (gethash (list (length x) (length y)) *D*))))
            (reverse *path*))
    )
  )


(defun if-nil-replace-if-not-pass (list)
  (if list
      list
      MOST-POSITIVE-FIXNUM))

(defun fastdtw (x y &optional (radius 1) (dist nil))

  "Return the approximate distance between 2 time series with O(N)
    time and memory complexity

   Parameters
   ----------
   x : array_like input array 1
   y : array_like input array 2
   radius : int
       size of neighborhood when expanding the path. A higher value will increase 
       the accuracy of the calculation but also increase time and memory consumption. 
       A radius equal to the size of x and y will yield an exact dynamic time warping 
       calculation.
   dist : function or int
       The method for calculating the distance between x[i] and y[j]. If dist is an 
       int of value p > 0, then the p-norm will be used. If dist is a function then 
       dist(x[i], y[j]) will be used. 
       If dist is None then abs(x[i] - y[j]) will be used.

   Returns
   -------
   distance : float
       the approximate distance between the 2 time series
   path : list
       list of indexes for the inputs x and y

   Examples
   --------
   >>> import numpy as np
   >>> import fastdtw
   >>> x = np.array([1, 2, 3, 4, 5], dtype='float')
   >>> y = np.array([2, 3, 4], dtype='float')
   >>> fastdtw.fastdtw(x, y)
   (2.0, [(0, 0), (1, 0), (2, 1), (3, 2), (4, 2)])

   >>> x = np.array([1, 2, 3, 4, 5, 4, 3, 2, 3, 4, 3, 2, 1], dtype='float')
   >>> y = np.array([2, 3, 4, 3, 2, 3, 4, 5], dtype='float')
   >>> fastdtw.fastdtw(x, y)
   (9.0, [(0, 0), (1, 0), (2, 1), (3, 2), (4, 2), (5, 2), (6, 3), 
    (7, 4), (8, 5), (9, 5), (10, 5), (11, 6), (12, 7)])


   "

  ; x, y, dist = __prep_inputs(x, y, dist)
  (multiple-value-bind 
      (a b disto)
      (__prep_inputs x y dist) 
    (list (setf x a) (setf y b) (setf dist disto)))
  
  ;  return __fastdtw(x, y, radius, dist)

  (__fastdtw x y radius dist)

  )


(defun assign-array-from-list (varname list)
  (setf (symbol-value (intern (string varname))) 
        (make-array (length list) 
                    :initial-contents 
                    list)
      ) 
  )

(assign-array-from-list 'x '(1 2 3 4 5 4 3 2 3 4 3 2 1))
(assign-array-from-list 'y '(2 3 4 3 2 3 4 5))

(fastdtw x y)

(assign-array-from-list 'x '(1 2 3 4 5))
(assign-array-from-list 'y '(2 3 4))

(fastdtw x y)
