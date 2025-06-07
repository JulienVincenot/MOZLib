(defpackage :transkaija
  (:use :cl :pw :sb-ext)
  (:nicknames :kaija))


(in-package :transkaija)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;; UTILITIES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun my-list (&rest toto) toto)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;; TRANSKAIJA FUNCTIONS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod dyn2num ((dyn symbol))
  (loop for i in   '(:ppppppp :pppppp :ppppp :pppp :ppp :pp :p :mp :mf :f :ff :fff :ffff :fffff :ffffff :fffffff)
        for j from 0 by 1
        if (equalp dyn i)
        return j
        ))

(defmethod dyn2num ((dyn list))
  (mapcar #'dyn2num dyn))


(defmethod num2dyn ((num number))
  (nth (round num) '(:ppppppp :pppppp :ppppp :pppp :ppp :pp :p :mp :mf :f :ff :fff :ffff :fffff :ffffff :fffffff)
       ))

(defmethod num2dyn ((num list))
  (mapcar #'num2dyn num))


(defun ks-interp-circ-dur (list1 list2 dur-thresh &optional (interp_curve 0))
  (let* ((accum nil)
         )
    (loop for i from 1 by 1
          if (>= (apply #'+ (pw::flat (pw::interpolation list1 list2 i interp_curve))) dur-thresh)
          return (pw::interpolation list1 list2 (1- i) interp_curve)
          else 
          do (setq accum (pw::interpolation list1 list2 i interp_curve))
          )))

(defun ks-interp-circ-others (list1 list2 total-length &optional (interp_curve 0))
    (loop for i from 1 by 1
          when (>= (length (pw::flat (pw::interpolation list1 list2 i interp_curve)))
                   total-length)
          return (pw::x-append (butlast (pw::interpolation list1 list2 i interp_curve))
                               
                               (list (jbs-cmi::first-n 
                                      (pw::flat (last (pw::interpolation list1 list2 i interp_curve)))
                                      (- total-length (length (pw::flat (butlast (pw::interpolation list1 list2 i interp_curve))))))))

          ))



                               
                               
    

(defun ks-interp-circ (dur1 dur2 dyn1 dyn2 pitch1 pitch2 dur-thresh &optional (interp_curve_durs 0) (interp_curve_dyns 0) (interp_curve_pitches 0) )
  (let* ((dur-interp (ks-interp-circ-dur dur1 dur2 dur-thresh interp_curve_durs))
         (total-length (length (pw::flat dur-interp))))

    (remove nil 
            (list    ;;; rajouter (g-round (G-SCALING/SUM en faisant un flat puis réintégration dans listes
                   
                   (pw::g-round (jbs-cmi::group-list (pw::g-scaling/sum (pw::flat dur-interp) dur-thresh) (mapcar #'length dur-interp) :stop) 4)

                   
                   (if (and dyn1 dyn2) (num2dyn (ks-interp-circ-others (dyn2num dyn1) (dyn2num dyn2) total-length interp_curve_dyns)) nil)
                   
                   (if (and pitch1 pitch2) (ks-interp-circ-others pitch1 pitch2 total-length interp_curve_pitches) nil)))))


(defun ks-interpolation (durs dyns pitches dur-thresh &optional (interp_curve_durs 0) (interp_curve_dyns 0)(interp_curve_pitches 0))

  (let* ((dur1 (pw::posn-match (first durs) (mapcar #'first (third durs))))
         (dur2 (pw::posn-match (second durs) (mapcar #'second (third durs))))
         (dyn1 (pw::posn-match (first dyns) (mapcar #'first (third dyns))))
         (dyn2 (pw::posn-match (second dyns) (mapcar #'second (third dyns))))
         (pitch1 (pw::posn-match (first pitches) (mapcar #'first (third pitches))))
         (pitch2 (pw::posn-match (second pitches) (mapcar #'second (third pitches))))
         )
         
    (ks-interp-circ dur1 dur2 dyn1 dyn2 pitch1 pitch2 dur-thresh interp_curve_durs interp_curve_dyns interp_curve_pitches)))



