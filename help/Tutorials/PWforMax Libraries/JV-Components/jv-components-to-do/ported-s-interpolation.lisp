(defun leven_trace (a b)
"Calcule la matrice de l'algorithme de distance de Levenstein, et explicite le trajet d'une liste de symboles à une autre. 
Le résultat du trajet peut-être aléatoire, pour un nombre identique de séquences intermédiaires. 
Fonction traduite en LISP à partir du code Javascript de Jean-Paul Davalan. http://jeux-et-mathematiques.davalan.org/ "  


  (defvar result_trace '())
  (defvar ch '())
  (defvar chm '())
  (defvar cari '())
  (defvar x '())
  (defvar y '())  

  (let* ((n (length a))
         (m (length b))
         (matrice '())
         (modif '())
         (mcols '()))
    
    (setf matrice (make-array (list (+ 1 n) (+ 1 m)))) 
    (setf modif (make-array (list (+ 1 n) (+ 1 m))))   
    (setf mcols (make-array (list (+ 1 n) (+ 1 m))))
    
    (loop for i from 0 to n by 1
      do   (setf (aref matrice i 0)  '())
      (setf (aref modif i 0)    '())
      (setf (aref mcols i 0)    '())
      (setf (aref matrice i 0)  i)
      (setf (aref modif i 0)  'h)  
      (setf (aref mcols i 0)   0))
    
    (loop for j from 0 to m by 1
      do
      (setf (aref matrice 0 j)   j)
      (setf (aref modif 0 j)   'g)   
      (setf (aref mcols 0 j)     0))
    
    (defvar mode '())
    
    (loop for i from 1 to n by 1
      do 
      (loop for j from 1 to m by 1 
        do
        
        (setf (aref mcols i j) 0)
        
        (let* ((cout (if (equalp (nth (- i 1) a) (nth (- j 1) b)) 
                       0 
                       1))
               (u (+ 1 (aref matrice i (- j 1))))  
               (v (+ 1 (aref matrice (- i 1) j)))
               (w (+ cout (aref matrice (- i 1) (- j 1))))   )
          
          (setf (aref matrice i j) 
                (if (< u v)
                  (if (< u w) u w)
                  (if (< v w) v w)))
          
          
          
          (cond ((and (< w u) (< w v)) (setf mode "w"))
                ((and (= w u) (< w v)) (setf mode (if (< (random 1.0) 0.5) 
                                                    "w" "u")))
                ((and (= w v) (< w u)) (setf mode (if (< (random 1.0) 0.5) 
                                                    "w" "v")))
                ((and (= u v) (< u w)) (setf mode (if (< (random 1.0) 0.5) 
                                                    "u" "v")))
                ((and (= u v) (= v w)) 
                 (let ((mr (random 1.0)))
                   (setf mode (if (< mr 1/3) "u"
                                (if (< mr 2/3) "v"
                                  "w")))))
                (T (setf mode (if (< u v)
                                (if (< u w) "u" "w")
                                (if (< v w) "v" "w")))))
          
          (setf (aref modif i j) (if (equalp mode "u") 'g
                                   (if (equalp mode "v") 'h
                                     (if (= cout 0) '0 '1))))
          )))
    
    (setf ch '())
    (setf chm '())
    
    (setf x n)
    (setf y m)
    
    
    (loop while (or (> x 0) (> y 0))
      do
      
      (setf (aref mcols x y) 1)
      
      (let* ((md (aref modif x y))
             (mm (aref matrice x y)))
        (push md ch)
        (push mm chm)
        
        (cond ((equalp md 'g) (decf y)) 
              ((equalp md 'h) (decf x))
              (T (progn (decf x) (decf y))))
        
        (if (and (>= x 0) (>= y 0))
          (setf (aref mcols x y) 1)))
      )
    
    
    (decf x)
    (decf y)
    
    
    (loop while (>= x 0)
      do (setf (aref mcols x y) 1)
      (decf x))
    
    (loop while (>= y 0)
      do (setf (aref mcols x y) 1)
      (decf y))
    
    
    
    (setf x 0)
    (setf y 0)
    
    
    (setq result_trace '())
    
    (let* ((mo 0)
           (z '())
           (ccur a)
           (tabmots '()))
      (push a tabmots)
      
      (loop for i from 0 to (- (length ch) 1) by 1
        do 
        (setq cari (nth i ch))
        
        
        (cond ((equalp 0 cari) (progn 
                                (incf x) 
                                (incf y) 
                                (incf mo) )) 
              ((equalp 1 cari) (progn (setq z (pw::x-append (pw::list! (subseq ccur 0 mo))     
                                                          (pw::list! (nth y b))
                                                          (pw::list! (subseq ccur (+ 1 mo)))))
                                (setq ccur z)
                                (push ccur tabmots)
                                (incf x)
                                (incf y)
                                (incf mo)
                                ))
              ((equalp 'g cari) (progn (setq z (pw::x-append (pw::list! (subseq ccur 0 mo)) 
                                                           (pw::list! (nth y b))
                                                           (pw::list! (subseq ccur mo))))
                                 
                                 (incf y)
                                 (incf mo)
                                 (setq ccur z)
                                 (push ccur tabmots)
                                 ))
              ((equalp 'h cari) (progn (setq z (pw::x-append (pw::list! (subseq ccur 0 mo))  
                                                           (pw::list! (subseq ccur (+ mo 1)))))
                                 (setq ccur z)
                                 (push ccur tabmots)
                                 (incf x)))
              (T 'error))
        
        (setf result_trace (reverse tabmots))
        )))  
  
  result_trace)


(defun s-interpolation (a b) 
  (leven_trace a b))


(defun s-interpolation (a b)
  (let* ((both_a_b (pw::x-append a b))
         (all_order (mapcar #'(lambda (x) (- x 1)) (jbs-cmi::identity-index both_a_b)))
         (all_assoced (remove-duplicates (loop for i from 0 to (1- (length both_a_b))
                                           collect (list (nth i all_order) (nth i both_a_b)))
                                         :test #'(lambda (a b) (equalp (car a) (car b)))
                                         :from-end t))

         (a_order (jbs-cmi::first-n all_order (length a)))
         (b_order (jbs-cmi::last-n all_order (length b)))
         
         (result (leven_trace a_order b_order))
         (res_assoced (loop for i in result
                        collect 
                        (loop for j in i
                          collect (second (assoc j all_assoced)))))
         )
    res_assoced
))


