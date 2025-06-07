(in-package cluster-engine)

; for-wind is an additional function for Iterate, written by Kilian Sprotte

(defmacro-clause (FOR-WIND vars IN list &optional BY incr)
  "Moving a window along a list."
  ;; TODO it could be nice to be able to say: force-last t,
  ;; like in the Oz version. But this would prob only make
  ;; sense, if the whole window is bound to only one var.
  (let ((tails (iter
     (for v in vars)
     (collect (gensym (concatenate 'string (symbol-name v) "-TAIL"))))))
    (unless incr
      (setq incr 1))
    (check-type incr (integer 1))
    `(progn
       ;; setup tails
       (with ,(first tails) = ,list)
       ,@(iter
    (for tail in tails)
    (for ptail previous tail)
    (when ptail
      (collect `(with ,tail = (cdr ,ptail)))))
       ;; stop condition
       (until (null ,(car (last tails))))
       ;; assign vars
       ,@(iter
    (for var in vars)
    (for tail in tails)
    (collect `(for ,var = (car ,tail))))
       ;; update tails
       (after-each
  (setq
   ,@(iter
      (for tail in tails)
      (for ptail previous tail
     initially (let ((offset (- incr (length vars))))
           (if (zerop offset)
         (car (last tails))
         `(nthcdr ,offset ,(car (last tails))))))
      (for tail-tail on tails)
      (collect tail)
      (for source = (nth incr tail-tail))
      (collect (if source source `(cdr ,ptail)))))))))
