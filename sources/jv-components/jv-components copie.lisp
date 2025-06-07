(in-package :cl-user)

(defpackage :jv-components 
  (:use :cl :pw :iterate :omcs :morphologie :jbs-cmi :jbs-profile :jbs-constraints :sb-ext))

;(eval-when (:execute :compile-toplevel :load-toplevel)
;  (import '(ccl::PWGLdef) ::jv-components))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;               EXPLORATION             ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package :jv-components)

(defun test (a b)
       (list (+ a b) (* a b)))

;;;;;;;;;;;;;;; ATTENTION !!!!!!!!!!! ;;;;;;;;;;;;;

;;;;;;;;;;;;;;; TOUS LES USAGES DE PWGL-SAMPLE & mk2D-object
;;;;;;;;;;;;;;; DOIVENT ÊTRE MARQUÉS COMME CORRIGÉS !
;;;;;;;;;;;;;;; (PASSER VERS PW:: )      

;;;;;;;;;;; SYNTAXE 
;;;;;;;;;;; ou bien : (pw::pw-sample '((0 0)(0.5 1)(1 0.5)) 20)
;;                       > pw.sample: [ 0 0.105263 0.210526 0.315789 0.421053 0.526316 0.631579 0.736842 0.842105 0.947368 0.973684 0.921053 0.868421 0.815789 0.763158 0.710526 0.657895 0.605263 0.552632 0.5 ]
;;;;;;;;;;; ou bien : (pw::pw-sample-xy '((0 0)(0.5 1)(1 0.5)) 20)
;;                       > pw.sample: [ [ 0. 0 ] [ 0.052632 0.105263 ] [ 0.105263 0.210526 ] [ 0.157895 0.315789 ] [ 0.210526 0.421053 ] [ 0.263158 0.526316 ] [ 0.315789 0.631579 ] [ 0.368421 0.736842 ] [ 0.421053 0.842105 ] [ 0.473684 0.947368 ] [ 0.526316 0.973684 ] [ 0.578947 0.921053 ] [ 0.631579 0.868421 ] [ 0.684211 0.815789 ] [ 0.736842 0.763158 ] [ 0.789474 0.710526 ] [ 0.842105 0.657895 ] [ 0.894737 0.605263 ] [ 0.947368 0.552632 ] [ 1. 0.5 ] ]              


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;               DEVELOPMENT             ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;; NUMERICAL PROFILES INTERPOLATION ;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;; GROUPINGS & INDEXES ;;;;;;;;;;;;;;;


; (eval-when (:execute :compile-toplevel :load-toplevel)
;   (import '(ccl::PWGLdef ccl::patch-value ccl::PWGL-box ccl::nth-patch-value ccl::pwgl-outputs) :jv-components))
  
; (in-package :jv-components)

; (defclass my-groupings (PWGL-box) ())

; (defmethod patch-value ((self my-groupings) output)
;   (let ((pos (position output (pwgl-outputs self))))
;     (nth-output-patch-value self pos)))

; (defmethod nth-output-patch-value ((self my-groupings) (out (eql 0)))
;   (groupings-1 (nth-patch-value self 0) (nth-patch-value self 1)))
; ; groupings

; (defmethod nth-output-patch-value ((self my-groupings) (out (eql 1)))
;   (groupings-2 (nth-patch-value self 0) (nth-patch-value self 1))) 
; ; indexes

; (defun groupings-1 (x y)
;   (jbs-cmi::group-list (first y) (pw::x->dx (pw::g-round (pw::g-scaling/max (sort (second x) #'<) (length (first y))))) :stop))

; (defun groupings-2 (x y)
;   (mapcar #'list (pw::arithm-ser 0 1 (1- (length (pw::x->dx (pw::g-round (pw::g-scaling/max (sort (second x) #'<) (length (first y))))))))))


; (PWGLDef groupings ((x 'nil) (y 'nil))
;   "Cut a BPF into smaller BPFSs according to segmentation points (additionnal BPF) or markers on the second plan."
;   (:class 'my-groupings :outputs '("groupings" "indexes"))
;   ())


;(add-box-type :yes-maybe-mbox 
;  `(mk-menu-subview :menu-list ,(add-menu-list-keyword :yes-no-list '(":t" ":nil" ":maybe")) :value 1))

;(PWGLDef abc2 ((a 1) (b 2) (c () :yes-maybe-mbox))    ;; <name>  <args> 
;  "PWGLDef abc2"                                       ;; <documentation>
; ()                                                    ;; <keyword-args>
; (cond ((eq c :maybe) "maybe")                         ;; <body>
;       ((eq c :nil) ())
;       (t (+ a b))))



;;;;;;;; METAMORPHER - INT ;;;;;;;;;

(in-package :jv-components)

                   ; 'nil      'nil   '10    '1
(defun metamorpher (profile1 profile2 steps curve)
  "Metamorpher : Supervized Interpolation of Numerical Intensity Profiles."
()
  (let* ((prof1 (mapcar #'pw::flat profile1))
         (prof2 (mapcar #'pw::flat profile2)))
    (mapcar #'pw::flat 
            (pw::mat-trans 
             (iter (for x in prof1)
                   (for y in prof2)
                   
                   (let ((lenx (length x))
                         (leny (length y)))
                     
                     (collect 
                      (iter
                       (for a in (pw::flat (pw::g-round 
                                                (pw::interpolation lenx leny steps curve))))
                       
                       (for b in (pw::interpolation (if (= lenx leny)
                                                        x
                                                        (if (> lenx leny)
                                                            x                                ;;;;;;;;;;;;;;;;;; PWGL-SAMPLE ICI
                                                            (pw::flat (pw::pwgl-sample 
                                                                           (pw::mk2D-object :bpf (list (pw::arithm-ser 0 1 (- lenx 1)) x)) 
                                                                           leny))))
                                                    
                                                    (if (= lenx leny)
                                                        y
                                                        (if (> lenx leny)                   ;;;;;;;;;;;;;;;;;; PWGL-SAMPLE ICI
                                                            (pw::flat (pw::pwgl-sample 
                                                                           (pw::mk2D-object :bpf (list (pw::arithm-ser 0 1 (- leny 1)) y)) 
                                                                           lenx)) 
                                                            y))
                                                    steps
                                                    curve))
                       

                                              ;;;;;;;;;;;;;;;;;; PWGL-SAMPLE ICI
                       (collect (pw::pwgl-sample (pw::mk2D-object :bpf (list (pw::arithm-ser 0 1 (- (length b) 1)) b)) a)))) 
                     
                     )
                   
                   )))))




;;;;;;;; MORPHOGENETIC SCHEMES - INT ;;;;;;;;;

; (eval-when (:execute :compile-toplevel :load-toplevel)
;  (import '(ccl::PWGLdef ccl::patch-value ccl::PWGL-box ccl::nth-patch-value ccl::pwgl-outputs) :jv-components))
  
(in-package :jv-components)

(defclass my-morphogenetic-schemes (PWGL-box) ())

(defmethod patch-value ((self my-morphogenetic-schemes) output)
  (let ((pos (position output (pwgl-outputs self))))
    (nth-output-patch-value self pos)))

(defmethod nth-output-patch-value ((self my-morphogenetic-schemes) (out (eql 0)))
  (morphogenetic-scheme-1 (nth-patch-value self 0) (nth-patch-value self 1) (nth-patch-value self 2)(nth-patch-value self 3) (nth-patch-value self 4)))
; original

(defmethod nth-output-patch-value ((self my-morphogenetic-schemes) (out (eql 1)))
  (morphogenetic-scheme-2 (nth-patch-value self 0) (nth-patch-value self 1) (nth-patch-value self 2)(nth-patch-value self 3) (nth-patch-value self 4))) ; norma-sized


;                               'nil     'nil     10    1    1.2
(defun morphogenetic-schemes (profile1 profile2 steps curve shift)
  "Explicit visualization of metamorphosis process."
  (:class 'my-morphogenetic-schemes :outputs '("original" "norma-sized"))
  ())


(defun morphogenetic-scheme-1 (profile1 profile2 steps curve shift)
  (let* (
         (interp-finale (jv-components::metamorpher profile1 profile2 steps curve))

         (interp-before (iter 
                          (for x in (mapcar #'pw::flat profile1)) 
                          (for y in (mapcar #'pw::flat profile2))

                          (let ((lenx (length x))
                                (leny (length y)))

                            (collect (iter 
                                      (for a in (pw::flat (pw::g-round (pw::interpolation lenx leny steps curve))))
                                      (for b in (pw::interpolation (if (= lenx leny)
                                                                     x
                                                                     (if (> lenx leny)
                                                                       x                     
                                                                                         ;;;;;;;;;;;;;;;;;; PWGL-SAMPLE ICI
                                                                       (pw::flat (pw::pwgl-sample 
                                                                                      (pw::mk2D-object :bpf (list (pw::arithm-ser 0 1 (- lenx 1)) x)) 
                                                                                      leny))))
                                                                   (if (= lenx leny)
                                                                     y
                                                                     (if (> lenx leny)
                                                                                                 ;;;;;;;;;;;;;;;;;; PWGL-SAMPLE ICI
                                                                       (pw::flat (pw::pwgl-sample 
                                                                                      (pw::mk2D-object :bpf (list (pw::arithm-ser 0 1 (- leny 1)) y)) 
                                                                                      lenx)) 
                                                                       y)) steps curve))

                                                      ;;;;;;;;;;;;;;;;;; PWGL-SAMPLE ICI
                                      (collect (pw::pwgl-sample (pw::mk2D-object :bpf (list (pw::arithm-ser 0 1 (- (length b) 1)) b)) a))))
                            )
                          
                          
                          ))

         (interp-intervals (iter 
                             (for x in (mapcar #'pw::flat profile1))
                             (for y in (mapcar #'pw::flat profile2))
                             (collect (pw::flat (pw::g-round (pw::interpolation (length x) (length y) steps curve)))))))


    (append 
          (pw::flat (iterate
            (for bpf in (iterate 
                          (for a in (pw::g* (* -1 shift) (pw::arithm-ser 0 1 (1- (length interp-finale)))))
                          (for b in interp-finale)
                          (collect (pw::g+ a b))))
            (collect (pw::mk2D-object :bpf 
                                 (list (pw::arithm-ser 0 1 (- (length bpf) 1)) bpf)))))

                        
            (list (pw::mk2D-object :scrap 
                                 (list (iter (for x in 
                                            (iter 
                                              (for when in (pw::mat-trans 
                                                            (mapcar #'butlast 
                                                                    (mapcar #'rest 
                                                                            (iter 
                                                                             (for xxx in (pw::g-round (pw::mat-trans interp-intervals)))
                                                                             (collect (pw::dx->x 0 xxx)))))))





                                              (for where in (pw::mat-trans (iter 
                                                                             (for xx in (iter (for xxx in (pw::g-round (pw::mat-trans interp-intervals)))
                                                                                              (collect (pw::dx->x 0 xxx))))
                                                                             (for yy in (pw::mat-trans interp-before))
                                                                             (collect (rest (remove 'nil (pw::posn-match (pw::flat yy) xx)))))))

                                              (collect (pw::mat-trans (list when (pw::g+ where (pw::g* (* -1 shift) (pw::arithm-ser 0 1 (1- (length when)))))))))

                                            )
                                   (collect (pw::x-append x (reverse (butlast x))))))


                                 )))))



(defun morphogenetic-scheme-2 (profile1 profile2 steps curve shift)
  (let* (
         (interp-finale (jv-components::metamorpher profile1 profile2 steps curve))

         (interp-before (iter 
                          (for x in (mapcar #'pw::flat profile1)) 
                          (for y in (mapcar #'pw::flat profile2))

                          (let ((lenx (length x))
                                (leny (length y)))


                          (collect (iter (for a in (pw::flat (pw::g-round (pw::interpolation lenx leny steps curve))))
                                         (for b in (pw::interpolation (if (= lenx leny)
                                                                        x
                                                                        (if (> lenx leny)
                                                                          x
                                                                                                    ;;;;;;;;;;;;;;;;;; PWGL-SAMPLE ICI
                                                                          (pw::flat (pw::pwgl-sample 
                                                                                         (pw::mk2D-object :bpf (list (pw::arithm-ser 0 1 (- lenx 1)) x)) 
                                                                                         leny))))
                                                                      (if (= lenx leny)
                                                                        y
                                                                        (if (> lenx leny)
                                                                                                  ;;;;;;;;;;;;;;;;;; PWGL-SAMPLE ICI
                                                                          (pw::flat (pw::pwgl-sample 
                                                                                         (pw::mk2D-object :bpf (list (pw::arithm-ser 0 1 (- leny 1)) y)) 
                                                                                         lenx)) 
                                                                          y)) steps curve))
                                         (collect (pw::pwgl-sample (pw::mk2D-object :bpf (list (pw::arithm-ser 0 1 (- (length b) 1)) b)) a))))
                            )

                            ))
         
         (interp-intervals (iter 
                            (for x in (mapcar #'pw::flat profile1))
                            (for y in (mapcar #'pw::flat profile2))
                            (collect (pw::flat (pw::g-round (pw::interpolation (length x) (length y) steps curve))))))

         (iter_through_interp_finale (iterate (for int in interp-finale)
                                                                          ;;;;;;;;;;;;;;;;;; PWGL-SAMPLE ICI
                                              (collect (first (pw::pwgl-sample 
                                                               (pw::mk2D-object :bpf (list (pw::arithm-ser 0 1 (- (length int) 1)) int)) 
                                                               (pw::g-max (mapcar #'length interp-finale)))))) )
         
         )
    
    
    (append 
     (pw::flat (iterate
                   (for bpf in 
                        (iterate 
                            (for a in (pw::g* (* -1 shift) (pw::arithm-ser 0 1 (1- (length iter_through_interp_finale)))))
                            (for b in iter_through_interp_finale)
                          (collect (pw::g+ a b))))
                   (collect (pw::mk2D-object :bpf 
                                                 (list (pw::arithm-ser 0 1 (- (length bpf) 1)) bpf)))))
     
     
     
     
     (list (pw::mk2D-object :scrap 
                                (list (iter (for x in 
                                                 (iter 
                                                  (for when in (pw::mat-trans 
                                                                (mapcar #'butlast 
                                                                        (mapcar #'rest 
                                                                                (iter (for xxx in (pw::g-round 
                                                                                                   
                                                                                                   
                                                                                                   (pw::g-scaling/sum (pw::g-round (pw::mat-trans interp-intervals))
                                                                                                                      (pw::g-max (iter (for m in (pw::g-round (pw::mat-trans interp-intervals)))
                                                                                                                                       (collect (apply #'+ m)))))))
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      (collect (pw::dx->x 0 xxx)))))))
                                                  




                                              (for where in (pw::mat-trans (iter 
                                                                             (for xx in (iter (for xxx in (pw::g-round (pw::mat-trans interp-intervals)))
                                                                                              (collect (pw::dx->x 0 xxx))))
                                                                             (for yy in (pw::mat-trans interp-before))
                                                                             (collect (rest (remove 'nil (pw::posn-match (pw::flat yy) xx)))))))

                                              (collect (pw::mat-trans (list when (pw::g+ where (pw::g* (* -1 shift) (pw::arithm-ser 0 1 (1- (length when)))))))))

                                            )
                                   (collect (pw::x-append x (reverse (butlast x))))))


                                 )))))












