(in-package :fe)

(defmethod sum ((term function) (a number) (next function) (b number))
  (if (> a b)
      0
    (+ (funcall term a)
       (sum term (funcall next a) next b))))

; (sum #'identity 1 #'1+ 10) -> 55

(defmethod integral ((func function) (a number) (b number)
		     &optional (dx 0.01))
  (flet ((add-dx (x) (+ x dx)))
    (* (sum func (+ a (* dx 0.5)) #'add-dx b)
       dx)))

; (integral #'sin 0 pi 0.1) -> 1.9999688
; (integral #'sin 0 pi) -> 2.0000098
; (integral #'sin 0 pi 0.0001) -> 2.0004032

; (integral #'sin 0 (* pi 2)) -> 4.3505034e-5


#|
;; !! nur skizze, noch nicht wie soll 
;; -> distibution: die y-werte snd die haeufigsten, zu denen die meisten x werte fuehren
;; wenn z.B. Kurve flach, sind die resultierenden y werte besonders haeufig
;; ist sinnvoll (leichter zu verstehen), wenn Funktion stetig steigend ist 
;; -> dagegen will ich: die x werte der distibution, deren y werte die groessten sind
;; (werte-bereich: (0,1)) sind die haeufigsten. Haeufigkeit ist mit y wert definiert.
;; deshalb muss das integral der Funktion = 1 sein
(defmethod random-env ((distibution func-env) 
                       &key (shape (make-func-env #'(lambda (x)
                                                      (declare (ignore x))
                                                      1))))
  (make-func-env 
   #'(lambda (x)
      (* (env-value shape x)
         (env-value distibution (random 1.0))))))

;; falsch gedacht...
(defmethod random-env ((distibution func-env) 
                       &key (shape (make-func-env #'(lambda (x)
                                                      (declare (ignore x))
                                                      1))))
  (make-func-env 
   #'(lambda (x)
      (* (env-value shape x)
         (env-value (make-func-env 
                     #'(lambda (x)
                         (if (= x 0)
                           0
                           (/ 1 (env-value (linear-env (0 0) (1 1)) 
                                           x)))))
                    (random 1.0))))))
|#

