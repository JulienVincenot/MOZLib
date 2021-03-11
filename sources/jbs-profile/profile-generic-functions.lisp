;;;       JBS-PROFILE for PWGL

;;;       Copyright (c) 2009, Jacopo Baboni Schilingi.  All rights reserved.

;;;;;;;;;;;;;;;;;BASED ON THE OPEN-MUSIC VERSION DONE in 2001 BY;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;; Jacopo Baboni Schilingi, Nicola Evangelisti e Mikhail Mal ;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;     Redistribution and use in source and binary forms, with or without
;;;     modification, are permitted provided that the following conditions
;;;     are met:

;;;   * Redistributions of source code must retain the above copyright
;;;     notice, this list of conditions and the following disclaimer.

;;;   * Redistributions in binary form must reproduce the above
;;;     copyright notice, this list of conditions and the following
;;;     disclaimer in the documentation and/or other materials
;;;     provided with the distribution.

;;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR 'AS IS' AND ANY EXPRESSED
;;; OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
;;; WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
;;; DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
;;; GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
;;; WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   GENERIC FUNCTIONS      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;

(in-package :jbs-profile)

(defun group-list (list 
                        group
                        mode?)
  ""
  ; :menu (mode? (:stop "stop") (:circ "circ") (:scal "scale"))
  ; :non-generic t
  ; :class profile-box
  (let ((mode? (Profile-stop-circ-scal? mode?))
        (calcolo (pr list (pw::create-list (apply'+ group) 0))))
    
    (case mode?
      (1 (crea-spazio list group))
      (2 (scomp calcolo group))
      (3 (crea-spazio list (pw::om-round 
                            (pw::om-scalinom/sum group (length list))))))))
;
;
;



(defun octave (midic)
"it gives the octave starting from C3= 3"
;()
  (let ((midic (pw::list! midic)))
    (mapcar #'(lambda (x) (pw::om- (pw::om// x 1200) 2) ) midic)))
;
;
;--------------------------------------
;
;


(defun makenote (index octave &optional mod)

"construction d'une note  partir des donnes 
             de index, octave e modulo du index"
;()
  (+ (/ (* index 100 12) mod) (* (+ 2 octave) 1200)))
;
;
;--------------------------------------
;
;



(defun pr (lista1 lista2)
  "Se lista1  pi corta di lista2 allora lista1 viene riletta per il numero di volte
   identico a lista 2."
  (let ((ros nil))
    (dotimes (y (length lista2) (nreverse ros))
      (push 
       (if (< (length lista1) (length lista2))
         (nth 
          (mod y (length lista1))
          lista1)
         (nth y lista1)) ros))))

;
;
;--------------------------------------
;
;


(defun prx (lista1 lista2)
  
  "Crea la lettura modulare di lista1 in funzione della lunghezza di lista2.
   Se lista1  pi corta di lista2 allora lista1 viene riletta per il numero di volte
   identico a lista 2. Ma viene riletto il pw::x->dx di lista1 in funzione del
   pw::x->dx di lista2."
  (let ((ros nil))   
    (dotimes (y (length (pw::x->dx lista2)) (nreverse ros))   
      (push 
       (if (< (length (pw::x->dx lista1)) (length (pw::x->dx lista2)))
         (nth 
          (mod y (length (pw::x->dx lista1)))
          (pw::x->dx  lista1))
         (nth y (pw::x->dx  lista1))) ros))))
;
;
;--------------------------------------
;
;


(defun dillox (lista1 lista2)
  "Questa funzione cambia gli intervalli di lista2 in funzione degli intervalli di lista1.
   Se un intervallo di lista1  discendente e quello corrispondente di lista2  ascendente, 
   allora l'intervallo di lista2 viene cambiato e reso ascendente." 
  (let ((ris nil)
        (test1 (prx lista1 lista2))
        (test2 (pw::x->dx lista2)))
    (dotimes (x (- (length lista2) 1) (nreverse ris))
      (push 
       (if (> (nth x test1) 0)
         (abs (nth x test2))
         (- (abs (nth x test2)))) ris))))

;
;
;--------------------------------------
;
;
(defun cambia-prof-mel (lista1 lista2)    
            "Modifica il profilo melodico di lista2 in funzione del profilo melodico
             di mista1. Il 'length' del risultato  sempre uguale al 'length' di 
             lista2. Se lista2  pi corta di lista1 allora il processo si attua per 
             la lunghezza di lista2. Ma se lista1  pi corta di lista2, allora 
             lista2 torna a rileggere i valori di lista1 ogni volta che lista1 finisce."
  (pw::dx->x (first lista2) (dillox lista1 lista2)))
;
;
;
;--------------------------------------
;
;


(defun int-com (lista)
  "Restituisce l'intervallo complementare di un intervallo dato in funzione della
   prima nota dell'intervallo stesso. Questo significa che se ho SOL3 DO4, la 
   funzione restituisce do4 sol4." 
  (let ((ris nil)) 
    (pw::flat
     (dotimes (x (- (length lista) 1) (nreverse ris))
       (push 
        (pw::x->dx (append
                    (list (nth x lista))
                    (list (- (- (nth x lista)
                                (* (- 12 (mod 
                                          (/ (- (first (pw::x->dx lista)) 
                                                (* 
                                                 (first 
                                                  (pw::om// (pw::x->dx lista) 1200)) 1200)) 100) 12)) 100))
                             (* (first (pw::om// (pw::x->dx lista) 1200)) 1200)))))
        ris)))))
;
;
;--------------------------------------
;
;
(defun prof (lista1 lista2)
  "restituisce l'intervallo complentare tenendo le altezze assolute."
  (let ((ris nil))
    (pw::flat 
     (dotimes (x (length (prx lista1 lista2)) (nreverse ris))
       (push (if (equalp (signum (nth x (prx lista1 lista2)))
                         (signum (nth x (pw::x->dx lista2))))
               (nth x (pw::x->dx lista2))
               (int-com (list
                         (nth x lista2)
                         (nth (1+ x) lista2))))
             ris)))))
;
;
;--------------------------------------
;
;



(defun prof-fix-note (lista1 lista2)
            
            "Modifica il profilo melodico di lista2 in funzione del profilo melodico
             di mista1. Il 'length' del risultato  sempre uguale al 'length' di 
             lista2. Se lista2  pi corta di lista1 allora il processo si attua per 
             la lunghezza di lista2. Ma se lista1  pi corta di lista2, allora 
             lista2 torna a rileggere i valori di lista1 ogni volta che lista1 finisce." 
  (pw::dx->x (first lista2) (prof lista1 lista2)))
;
;
;--------------------------------------
;
;
(defun malt-mod+ (list limit)
            ""
  (let ((ris nil)
        (limite (first (pw::list! limit)))) 
    (dolist (y list (nreverse ris))
      (push (if (< y limite)
              (- (* 2 limite) y) y) ris))))
;
;
;--------------------------------------
;
;
(defun malt-mod- (list limit)
            ""
  (let ((ris nil)
        (limite (first (pw::list! limit))))  
    (dolist (y list (nreverse ris))
      (push (if (> y limite)
              (- (* 2 limite) y) y) ris))))
;
;

;--------------------------------------
;
;
(defun reflex-int (ls value 
                     up/down?)
    "Restituisce la rifleesione delle note che sono superiori o inferiori
             al valore indicato con 'value'. Il men permette di selezionare se si
             vuole una riflessione superiore o inferiore"
    ()
  (let ((up/down? (Profile-up/down? up/down?)))
    (case up/down?
      (1 (malt-mod+ ls value))
      (2 (malt-mod- ls value)))))
;
;
;
;--------------------------------------
;
;
(defun mod-fix- (ls asse)
  ""
  (let ((ris nil)
        (asse (pw::list! asse)))
    (dotimes (x (length ls) (nreverse ris))
      (push
       (if (<= (nth x ls) (first asse)) (nth x ls)
           (+ (first asse) (first (int-com (list
                                            (first asse)
                                            (nth x ls)))))) 
       ris))))
;
;
;--------------------------------------
;
;
(defun mod-fix+ (ls asse)
  ""
  (let ((ris nil)
        (asse (pw::list! asse)))
    (dotimes (x (length ls) (nreverse ris))
      (push
       (if (>= (nth x ls) (first asse)) (nth x ls)
           (+ (first asse) (first (int-com (list
                                            (first asse)
                                            (nth x ls)))))) ris))))
;
;
;--------------------------------------
;
;
(defun reflex-note (ls 
                      value
                      up/down?)
    "Restituisce per la riflessione superiore con <UP> e quella
             inferiore con <DOWN>."
;    ()
  (let ((up/down? (Profile-up/down? up/down?)))
    (case up/down?
      (1 (mod-fix+ ls value))
      (2 (mod-fix- ls value)))))
;
;
;--------------------------------------
;
;


(defun doppio-reflex-note (list
                            value)         
    "Restituisce due volte <REFLEX-NOTE> la prima volta a <LIST>
             la seconda volta al risultato della prima volta."
 ; ()
    (mod-fix- (mod-fix+ list (pw::list-min value)) 
                 (pw::list-max value)))
;
;
;--------------------------------------
;
;
(defun doppio-reflex-int (list value)       
  "Restituisce due volte <REFLEX-INT> la prima volta a <LIST>
             la seconda volta al risultato della prima volta."
  (malt-mod- (malt-mod+ list (pw::list-min value))
              (pw::list-max value)))
;
;
;
;--------------------------------------
;
;

(defun int (elt coppia)
  (if (< (first coppia) elt (second coppia)) elt nil))
;
;
;
;--------------------------------------
;
;
(defun pass-band (lista alt)
            "Restituisce i valori inclusi in ALT."
  (let ((ris nil))
    (dolist (x lista (nreverse ris))
      (if (equalp (int x alt) nil) (int x alt) (push x ris)))))
;
;
;
;--------------------------------------
;
;


(defun correttore-doppio-reflex-note (list
                                           value
                                           inclu?)
  "Corregge il risultato di 'DOPPIO-REFLEX-NOTE' in modo che se la 
             riflessione supera i limiti con <YES> abbiamo una trasposizione
             oltre i limiti stessi ma con TRANS-APPROX altrimenti le note 
             che non sono incluse nei limiti vengono escluse dalla funzione
             COMP-OCTAVE."
  ; :menu (inclu? (:yes ":yes") (:no! ":no!"))
  ; :non-generic t
  ; :class profile-box
  (let ((risultato (doppio-reflex-note list value))
        (inclu? (Profile-inclu? inclu?)))
    (case inclu?
      (1 (trans-approx risultato value))
      (2 (comp-octave risultato value)))))  
;
;
;--------------------------------------
;
;
(defun trans-approx (list range)
            "E' meglio di transpoct di Esquisse. Infatti attua lo stesso
             procedimento ma traspone una nota non inclusa nel range il pi
             vicino o al limite superiore o a quello inferiore."
  (cor-ott-list (mio-transpoct list range) range))
;
;
;--------------------------------------
;
;
(defun int-com-ottava (lista)
  "Restituisce l'intervallo complementare ad ull'intervallo in 'lista'
   ma all'interno di un'ottava."
  (let ((ris nil))
    (pw::flat
     (dotimes (x (- (length lista) 1) (nreverse ris))
       (push 
        (pw::x->dx (append
                    (list (nth x lista))
                    (list  
                     (- (nth x lista)
                        (* (- 12 (mod 
                                  (/ (- (first (pw::x->dx lista)) 
                                        (* 
                                         (first 
                                         (pw::om// (pw::x->dx lista) 1200)) 1200)) 100) 12)) 100)))))
        ris)))))
;
;
;--------------------------------------
;
;
(defun mio-transpoct (list range)
            "Restituisce lo stesso risultato di 'transpoct' della libreria Esquisse"
  (let ((ris nil))
    (dolist (y list (nreverse ris))
      (push 
       (cond ((< y (pw::list-min range))
              (+ (pw::list-min range)
                 (+ 1200 (first (int-com-ottava (list (pw::list-min range) y))))))
             ((> y (pw::list-max range))
              (+ 
               (pw::list-max range) 
               (first (int-com-ottava (list (pw::list-max range) y)))))
             (y))
       ris))))
;
;
;--------------------------------------
;
;

(defun correttore (elmt range)
  "Restituisce un elemento se questo compare all'interno del range.
           Se l'elemento  escluso allora lo traspone in modo tale che sia
           il pi vicino possibile o al limite superiore o a quello inferiore.
           Se il limite  DO-SOL allora Mi viene incluso, SI viene trasposto
           sotto il DO e il SOL# viene trasposto sopra il SOL."
  (let ((max (pw::list-max range))
        (min (pw::list-min range)))
    (cond ((<= (pw::list-min range) elmt max) 
           elmt)
          ((cond ((< elmt min)
                  (cond ((<= (- min elmt) (- (+ 1200 elmt) max))
                         elmt)
                        ((> (- min elmt) (- (+ 1200 elmt) max))
                         (+ 1200 elmt))))
                 ((> elmt max)
                  (cond ((<= (- elmt max) (- min (- elmt 1200)))
                         elmt)
                        ((> (- elmt max) (- min (- elmt 1200)))
                         (- elmt 1200)))))))))
;
;
;--------------------------------------
;
;
(defun cor-ott-list (elmt range)
        
          "Restituisce un elemento se questo compare all'interno del range.
           Se l'elemento  escluso allora lo traspone in modo tale che sia
           il pi vicino possibile o al limite superiore o a quello inferiore.
           Se il limite  DO-SOL allora Mi viene incluso, SI viene trasposto
           sotto il DO e il SOL# viene trasposto sopra il SOL.La differenza
           con 'CORRETTORE'  che questo modulo agisce su una lista intera."
        
        (let ((ris nil))
          (dolist (y elmt)
            (push (correttore y range) ris))
          (nreverse ris)))
;
;
;--------------------------------------
;
;
(defun correttore-doppio-reflex-int (list value)
            "Corregge il risultato di 'DOPPIO-REFLEX-INT' in modo che 
             se il risultato di 'DOPPIO-REFLEX-INT supera i limiti dati
             ripete l'operazione di adattamento fino a che non soddisfa 
             i limiti di esistenza."
  (let* ((value (pw::sort-list value))
         (risultato (doppio-reflex-int list value))
         (ris nil)) 
    (dolist (y risultato (pw::flat (nreverse ris)))
      (push (if (int y value) y
              (correttore-doppio-reflex-int (pw::list! (1+ y)) value)) ris))))
;
;
;--------------------------------------
;
;
(defun midi-to-cents (list)
  "It converts midi notes into midicents note"

  (pw::om* list 100))
;
;
;--------------------------------------
;
;
(defun cents-to-midi (list)
  "It concerts midicents note into midi notes"

  (pw::om/ list 100))
;
;
;--------------------------------------
;
;
(defun interno (elmt range)
          "Restituisce l'elemento se  incluso nel 'range' e nil 
           se non  incluso."
  (if (<= (pw::list-min range) elmt (pw::list-max range)) elmt nil))
;
;
;--------------------------------------
;
;


(defun comp-octave (list range)
            "Restituisce una trasposizione della lista mantenendo le altezze
             assolute all'interno del 'range. Se un elemento non  incluso 
             nel 'range', allora viene tolto dal risultato."
  (let ((ris nil))
    (dolist (y (mio-transpoct list range) (nreverse ris))
      (if (equalp (interno y range) nil) (interno y range) (push y ris)))))
;
;
;--------------------------------------
;
;
(defun pass-alto (lista alt)
            "Restituisce tutti i valori superiori al vaore segnato in ALT."
  (let ((ris nil))
    (dolist (x lista (nreverse ris))
      (when (> x alt) (push x ris)))))
;
;
;--------------------------------------
;
;
(defun pass-basso (lista alt)
            "Restituisce tutti i valori inferiori al valore segnato in ALT."
  (let ((ris nil))
    (dolist (x lista (nreverse ris))
      (when (< x alt) (push x ris)))))
;
;
;--------------------------------------
;
;
(defun quarta-reflexio (list limit)
            "Se un elemento di <LIST>  superiore al limite superiore allora viene trasposto 
             al di sotto di tale limite della differenza tra l'elemento stesso ed il limite 
             (if (> y maxim) (+ minim  (- y maxim))). 
             Se un elemento di <LIST>  inferiore al limite inferiore allora viene trasposto 
             al di sopra di tale limite della differenza tra il limite e l'elemento stesso 
             (if (< y minim) (- maxim  (-  minim y)))."
  (let ((ris nil)
        (minim (pw::list-min limit))
        (maxim (pw::list-max limit))) 
    (dolist (y list (pw::flat (nreverse ris)))
      (push (cond
             ((> y maxim) (+ minim  (- y maxim)))
             ((< y minim) (- maxim  (-  minim y)))
             (t y))
            ris))))
;
;
;--------------------------------------
;
;
(defun quasi-multi-reflexions (list limit)
            "Se un elemento di <LIST>  superiore al limite superiore allora viene trasposto 
             al di sotto di tale limite della differenza tra l'elemento stesso ed il limite 
             (if (> y maxim) (+ minim  (- y maxim))). 
             Se un elemento di <LIST>  inferiore al limite inferiore allora viene trasposto 
             al di sopra di tale limite della differenza tra il limite e l'elemento stesso 
             (if (< y minim) (- maxim  (-  minim y))).
             Se la soluzione non soddisfa i limiti di esistenza dei limiti stessi, il risultato
             viene trattato ricorsivamente fino a soddisfare i due limiti."
   (let ((ris nil)
        (calcolo (quarta-reflexio list limit)))
    (dolist (y calcolo (pw::flat (nreverse ris)))
      (push (if (int y limit) 
              y
              (quasi-multi-reflexions (pw::list! (1+ y)) limit)) ris))))
;
;


;--------------------------------------
;
;
(defun primo-passo (lista n) 
  (let (f)                             ;prende n elementi della lista
    (dotimes (x n)                     ;di partenza
      (push (nth x lista) f))
    (nreverse f)))
;
;
;--------------------------------------
;
;
(defun scomp (list1 list2)
            "Restituisce la nostra lista1 di partenza suddivisa nei segmenti
             da noi scelti tramite lista2."
  (let (ris)                                          ;Prende ogni elemento di lista2 e lo
    (dotimes (x (length list2) (nreverse ris))        ;usa per estrarre i valori da lista1.
      (push (primo-passo                              ;Per fare in modo che (nth x lista2)
             (nthcdr                                  ;non prenda il successivo di lista1
              (let (ros)                              ;uso (nthcdr) la cui y  data da
                (dotimes (y (length ris))             ;(apply '+ ros) cio dalla somma
                  (push (nth y list2) ros))           ;delle y precedenti.
                (apply '+ ros))                       ;
              list1)                                  ;
             (nth x list2))                           ;
            ris))))              
;
;
;--------------------------------------
;
;
(defun med-fix (lista)
            "Restitusce la derivata data dalla media tra una nota e la successiva."
  (let ((ris nil))
    (dotimes (x (- (length lista) 1) (nreverse ris))
      (push (/ (+ (nth x lista) (nth (1+ x) lista)) 
               2) ris))))
;
;
;--------------------------------------
;
;
(defun baricentro (valori)
            "Calcola il baricentro di una sequenza di valori: il valore medio." 
  (pw::om-mean valori 1.0))
;
;
;--------------------------------------
;
;


(defun prime-note (list gr)
            
            "Prende la prima nota di ogni derivata e ne fa una lista.
             Se <GR>  uguale a 1 allora restituisce la prima nota 
             di <LIST>. Questo serve per la funzione <INTEGR-SUC> che
             abbisogna di ogni passo delle derivate per risalire alla
             lista <LIST> di partenza."
  (let ((ris (first list))
        (partenza (first list)))
    (if (= gr 1) 
      (pw::list! ris)
      (append (prime-note (deriv list partenza)
                          (- gr 1)) (list ris)))))
;
;
;--------------------------------------
;
;

(defun deriv (list start?)
            "Calcola la differenza (delta y) tra una altezza e la precedente e
             se si considera (= (delta x) 1) allora il risultato  la 'derivazione
             della lista <LIST>."
  (pw::om+ (first (pw::list! start?)) (pw::x->dx list)))
;
;
;--------------------------------------
;
;
(defun quasi-der-suc (list
                        value
                        gr°)
    "Calcola la differenza (delta y) tra una altezza e la precedente e
             se si considera (= (delta x) 1) allora il risultato  la 'derivazione
             della lista <LIST>. Con <gr¡> possiamo decidere di sapere quante volte
             vogliamo applicare la stessa operazione a <LIST>, in altre parole
             decidiamo il grado della derivazione da fare a <LIST>."
  ;  ()
  (let ((value (first list)))
  (if (= gr° 1) 
      (deriv list (first list))
    (quasi-der-suc (deriv list (first list)) value (- gr° 1)))))

;
;
;--------------------------------------
;
;
(defun integr (list start)
            "E' la funzione inversa alla funzione <DERIV>. In altre parole
             prende una lista <LIST> gli sottrae un elemento scelto in <START>
             e costruisce una lista con (pw::dx->x) a partire da <START>."
  (pw::dx->x (first (pw::list! start)) (pw::om- list (first (pw::list! start)))))
;
;
;--------------------------------------
;
;
(defun quasi-integr-suc (list
                           value
                           gr°)
    ""       
  ;  ()    
  (if (= gr° 1)
      (integr list (baricentro list))
    (quasi-integr-suc (integr list (baricentro list))  value (- gr° 1))))
;
;
;--------------------------------------
;
;
(defun quasi-integr-suc1 (list
                            test
                            value
                            gr°)
    ""       
 ;   ()    
  (if (= test 1)
      (if (= gr° 1)
          (integr list (baricentro list))
        (quasi-integr-suc (integr list (baricentro list)) value (- gr° 1)))
    (if (= gr° 1)
          (integr list (first value))
      (quasi-integr-suc1 (integr list (pop value)) 2 value (- gr° 1)))))
      
      
;
;
;--------------------------------------
;
;

(defun lettura-modulare (lista1 lista2)
            "Se la prima lista  pi grande della seconda lista, allora legge 
             modularmente la seconda lista restituendo un length uguale al length
             di lista1."
  (let ((ros nil))
    (dotimes (y (length lista1) (nreverse ros))
      (push 
       (if (< (length lista2) (length lista1))
         (nth 
          (mod y (length lista2))
          lista2)
         (nth y lista2)) ros))))
;
;
;--------------------------------------
;
;
(defun inter-profile (list1 list2)
            ""
  (let ((ris nil)
        (y (lettura-modulare list1 list2)))
    (pw::flat 
     (append 
      (dotimes (x (1- (length list1)) (nreverse ris))
        (push
         (pw::mat-trans (list (list (nth x list1))
                              (list (trans-approx (list (nth x y))
                                                  (list (nth x list1) 
                                                        (nth (1+ x) list1)))))) ris))
     (last list1)))))
;
;
;--------------------------------------
;
;
(defun lin-list (init end steps)
            "inteporlazione lineare"
  (if (eq init end) (make-list steps :initial-element init)
      (pw::arithm-ser init (/ (-  end init ) (+ 1 steps)) end)))
;
;
;--------------------------------------
;
;
(defun cambia-ogni-accordo (list note?)
            "Effettua la trasposizione per ogni accordo o nota del materiale in <LIST>
             con ogni accordo o materiale in <NOTE?>. Se il length di NOTE?  inferiore
             a quello di list allora NOTE? viene riletto modularmente."
            
  (let ((ris nil)) 
    (dotimes (x (length list) (nreverse ris))
      (push (notes-change 
             (nth x list)
             (nth x (pr note? list)) 48) ris))))
;
;
;--------------------------------------
;
;

(defun inter-dyn0 (init end steps
                     tab 
                     inclu?)
    ""
 ;   ()                                        ;;;;;;;;;;;;;;;;;;;;;;;; CORRIGER SAMPLE !!!!!
  (let* ((inclu? (Profile-inclu? inclu?))
         (listetab (when tab (pw::om-scale (pw::pwgl-sample tab (+ 2 steps))
                                            0.0
                                            1.0)))
         (liste1 (if tab listetab
                   (lin-list 0 1 steps)))
         (liste2 (pw::om+ (pw::om* liste1 (- end init)) init)))
    (case inclu?
      (1 liste2)
      (2 (butlast (rest liste2))))))
;
;
;--------------------------------------
;
;
(defun dyn-mult (elmt steps tab)
            "Restituisce l'interpolazione tra tutti gli elementi di 'elmt'.
             I passi e le curve sono definibili per ogni tratto dell'interpolazione
             con l'utilizzo di una o pi curve BPF."
  (pw::flat-once
   (let ((ris nil)
         (passi (pr steps elmt))
         (curve (when tab (pr (pw::list! tab) elmt))))
     (dotimes (x (- (length elmt) 1))
       (push (list (nth x elmt)) ris)
       (push  
        (dynamic-interpolation (nth x elmt)
                               (nth (1+ x) elmt)
                               (nth x passi)
                               (nth x curve)
                               2
                               '())
        ris))
     (nreverse (push (list (pw::last-elem elmt)) ris)))))
;
;
;--------------------------------------
;
;


(defun interpol-multipla (elmt
                                    steps
                                    tab)    
    "Restituisce l'interpolazione tra tutti gli elementi di 'elmt'.
             I passi e le curve sono definibili per ogni tratto dell'interpolazione
             con l'utilizzo di una o pi curve BPF."
  ;  ()
  (let ((ris nil)
        (passi (pr steps elmt))
        (curve (when tab (pr (pw::list! tab) elmt))))

    (dotimes (x (- (length elmt) 1) (pw::flat-once (nreverse ris)))
       
      (push  
       (list (dynamic-interpolation (nth x elmt)
                                    (nth (1+ x) elmt)
                                    (nth x passi)
                                    (nth x curve)
                                    2
                                    '()))
       ris))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;          INTERPOL-TAB      OX           ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun interpol-tab (begin 
                          end 
                          steps
                          tab 
                          inclu?)
  "In my opinion it is totally unusefull"
  ; :non-generic t
  ; :class profile-box
  (let ((initio (pw::list! begin))
        (endio (pw::list! end)))
    (pw::mat-trans (mapcar #'(lambda 
                                     (liste1 liste2) 
                               (inter-dyn0  liste1 liste2 steps tab inclu?))
                           initio endio))))
;
;
;--------------------------------------
;
;
(defun our-interlock (liste1 liste2)
  "l'interlock se fait un  un et commence avec le
             premier lment de liste1"
  (let ((longs (mapcar #'(lambda (x) (length x)) liste2))
        (aux nil)
        (int-list (pw::flat-once liste2)) 
        (k 0) (p 0))
    (dotimes (n (1- (length liste1)) (pw::x-append (reverse aux) (last liste1)))
      (push (nth n liste1) aux)
      (dotimes (m (nth n longs))
        (push (nth (+ k m) int-list) aux)
        (setf p m))
      (setf k (+ k p 1)))))
;
;
;--------------------------------------
;
;
(defun interpol-mult-note? (elmt steps tab note?)
            "Restituisce l'interpolazione tra tutti gli elementi di 'elmt'.
             I passi e le curve sono definibili per ogni tratto dell'interpolazione
             con l'utilizzo di una o pi curve BPF."
  (let* ((note? (if (atom (first note?)) (list note?) note?))
         (calcolo (interpol-multipla elmt steps tab))
         (longs (mapcar #' (lambda (x) (length x)) calcolo))
         (interpolazione (pw::flat-once calcolo)))
    (our-interlock elmt (scomp (cambia-ogni-accordo interpolazione
                                                    note?) longs))))
;
;
;--------------------------------------
;
;
(defun prof-pert (ls range)
           "Restituisce una perturbazione casuale 'random' della lista 
            aggiungendo o sottraendo dei valori scelti casualmente tra 
            +range e -range."
  (mapcar #' (lambda (x) (+ x (pw::om-random (- range) range))) ls))
;
;
;--------------------------------------
;
;

(defun tutti-int (list ref)
  "Calcola gli intervalli che ci sono fra una lista di note ed
             un'unica nota di riferimento."
  (let ((ris nil))   
    (dolist (y list)
      (push (pw::x->dx (list ref y)) ris))
    (pw::flat (nreverse ris))))
;
;
;--------------------------------------
;
;
(defun segno+picc (list)
            "Trasforma tutta la lista in valori tutti positivi e prende il valore
             pi piccolo."
  (pw::list-min (mapcar #' (lambda (x) (abs x)) list)))
;
;
;--------------------------------------
;
;
(defun nota-vicina (list ref)  
  "Prende l'intervallo pi piccolo di una lista."
  (let* ((intervalli (tutti-int list ref))
         (piccolo (segno+picc intervalli)))
    (if
        (equalp (abs (first intervalli)) piccolo)
        (first intervalli)
      (nota-vicina (rest list) ref))))
;
;
;--------------------------------------
;
;
(defun tieni-nota (list ref)   
            "tiene la nota pi vicina."
  (pw::om+ ref (nota-vicina list ref)))
;
;
;--------------------------------------
;
;
(defun vicine-note (list1 refs)  
            "Prende le note pi vicine di list per ogni nota di refs."
    (let ((ris nil))
     (dotimes (x (length refs) (nreverse ris))
       (push (tieni-nota list1 (nth x refs)) ris))))
;
;
;--------------------------------------
;
;
#|


(defun range-approx ((list '(60 61 62 63))
                       (limit '(60 66))
                       inclu?)

    ""
    ()
  (let ((inclu? (Profile-inclu? inclu?)))
    (funcall (case inclu?
               (1 'trans-approx)
               (2 'comp-octave))
             list limit)))
|#
;
;
;--------------------------------------
;
;


(defun segment (liste
                  place 
                  n-elem
                  lecture?)
            
    "retire les <n-elem> lments de la liste <liste>  partir de la place
            <place>. OBS: place=0 c'est--dire premier lment de liste.
            Il est possible de choisir deux types de lectures -lineaire- ou -circulaire-"
 ;   ()
  (let ((lecture? (Profile-lecture? lecture?)))
    (case lecture?
      (1 (if (> (length liste) (+ place n-elem)) 
             (subseq  liste place  (+ place n-elem))
           (nthcdr place (butlast liste 0))))
      (2 (let ((aux))
           (dotimes (n n-elem (reverse aux))
             (push (nth (mod (+ n place ) (length liste)) liste) aux)))))))

;
;
;--------------------------------------
;
;
(defun crea-spazio (list segm)
  (let ((place (pw::dx->x 0 segm)))
    (remove nil (mapcar #'(lambda (pl el) (segment list pl el :stop)) place segm))))
;
;
;--------------------------------------
;
;


(defun pw::mk2D-object  (type args)
  (apply
  (pw::2d-constructor-function-name (pw::keyword-to-2D-class type))
  args))


;
;
;--------------------------------------
;
(defun baricentro (valori)
  (pw::om-mean valori 1.0))
(defun se-derivo (list)
  (pw::om+ (baricentro list) (pw::x->dx list)))
;
;
;---------------------------
;
;
(defun der-fix-arb (list)
  (let ((ris nil))
    (dotimes (x (- (length list) 1) (nreverse ris))
      (push (/ 
             (cond ((eq x 0)
                    (* 2 (first list)))
                   ((<= 1 x (- (length list) 1))
                    (+ (nth x list) (nth (- x 1) list)))
                   ((eq x (- (length list) 1))
                    (+ (nth x list) (baricentro list))))
             2) ris))))
;
;
;-----------------------
;
;
(defun aggiungi (list val)
  (append list (list val)))
;
(defun int-fix-arb (list)
  (let* ((ris nil)
         (baricentro (baricentro list))
         (agg (aggiungi list baricentro)))
    (dotimes (x (length agg) (nreverse ris))
      (push (+ (nth x agg)
               (- (nth x agg)
                  (/ 
                   (cond ((eq x 0)
                          (+ (first list) baricentro))
                         ((< 0 x (- (length agg) 1))
                          (+ (nth x agg) (nth (- x 1) agg)))
                         ((* 2 baricentro)))
                   2))) ris))))











;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;just for friends;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; (defpackage :profile)
; (in-package :profile)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;   NOTE CHANGE OX    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(defun notes-change (pitch scale &optional mod)

    "It changes the pitches in pitch foolowing the scale put in scale. You can chose the modulo in mod."
 ;   ()
  (let* ((pitch (pw::om* (pw::list! pitch) 100))
         (scale (pw::om* (pw::list! scale) 100))
         (modsca (pw::om-floor (pw::sort-list 
                            (pw::rem-dups (pw::om-mod (pw::om/ scale (/ 100 (/ mod 12))) mod)))))
         (pitmods (pw::om-mod (pw::om/ pitch (/ 100 (/ mod 12))) mod))
         (octa (octave pitch))
         (posdifs (mapcar #'(lambda (p) (position (pw::list-min (pw::om-abs (pw::om- modsca p)))
                                                  (pw::om-abs (pw::om- modsca p))))
                          pitmods)))
    (pw::om/ (mapcar #'(lambda (index octave) (makenote index octave mod))
                    (pw::posn-match modsca posdifs)
                    octa) 100)))
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     COMPR/EXPAN       OX      ;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun compr/expan (list 
                      value
                      note?) 
         "This function creates a compression or an expansion of intervals. You put a sequence in list,
than you chose the index of compression or expansion in value. If you put 1 the resula is equal to the
given sequence; if -1 you obtain the inversion; between 0 an 1 a compression; more than 1 an expansion; 
with a negative number the same but in the inversion."
       ;  ()
         (let* ((calcolo (pw::dx->x 
                          (first list) 
                          (mapcar #'(lambda (x) (* x value)) (pw::x->dx list))))
                (corretto (when note?
                            (notes-change calcolo note? 12))))
           (if note? corretto calcolo)))
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;       ALEA PERTB          OX        ;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun alea-pertb (list range)
    "This function creates a random perturbation of a given list. In range you put
a number that indicates plus and minus the assigned value. If you put 10, alea-pertb will add
between -10 and 10 to each memebr of list."
 ;   ()
  (mapcar #' (lambda (x) (+ x (pw::om-random (- range) range))) list))
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;       CTRL-PERTB          OX        ;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun control-pertb (list 
                        index
                        fact)
    ""
  ;  ()
  (let* (;(xpoints (unless (listp index) (pw::x-points index)))
         (index (pw::om* fact (if (listp index) index 
                               (pw::pwgl-sample index (length list)   ;;;;;;;;;;;;; SAMPLE !!!!!!!!!!!!!!!!!!!!
                                                 ))))
         (calcolo-bpf (pw::om+ list
                              (pw::om-round
                               (pw::om- 1 index) 0)))
         (calcolo-numeri (pw::om+ list
                                 (pw::om-round
                                  index 0))))
    (if (listp index)
        calcolo-numeri calcolo-bpf)))
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;       PROF-CHANGE          OX        ;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun prof-change (prof 
                      pitch
                      mode?)
    "Prof change"
  ;  ()
  (pw::om/ 
   (let* ((prof (pw::om* prof 100))
          (pitch (pw::om* pitch 100))
          (mode? (Profile-int-note? mode?)))
     (funcall (case mode?
                (1 'cambia-prof-mel)
                (2 'prof-fix-note))
              prof pitch)) 100))
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;         REFLEXION          OX        ;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun reflexion (list
                    axis
                    mode?
                    up/down?)
    ""
  ;  ()
  (pw::om/ (let* (;(up/down? (Profile-up/down? up/down?))
                 (mode? (Profile-int-note? mode?))
                 (list (pw::om* list 100))
                 (axis (pw::om* axis 100)))
            (funcall (case mode?
                       (1 'reflex-int)
                       (2 'reflex-note)) list axis up/down?))
          100))
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;         DOUBLE-REFLECT       OX         ;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun double-reflect (list 
                        limits
                         mode?
                         inclu?)
    ""
  ;  ()
  (pw::om/ (let* ((mode? (Profile-int-note? mode?))
                 (list (pw::om* list 100))
                 (limits (pw::om* limits 100)))
            (case mode?
              (1 (correttore-doppio-reflex-int list limits))
              (2 (correttore-doppio-reflex-note list limits inclu?)))) 100))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;         MULTI-REFLECT      OX           ;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun multi-reflect (list 
                        limits
                        note?)  
    ""
  ;  ()
  (let* ((list (pw::om* list 100))
         (limits (pw::om* limits 100))
         (note? (pw::om* note? 100))
         (calcolone (quasi-multi-reflexions list limits)))
    (if (numberp (first note?))
        (notes-change (pw::om/ calcolone 100) (pw::om/ note? 100))
      (pw::om/ calcolone 100))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;         MEAN-DERIVATION      OX           ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun mean-derivation (list 
                         gr°
                          &optional note?)
           
    ""
   ; ()
  (let* ((list (pw::om* list 100))
         (calcolo (if (= 1 gr°) (med-fix list)
                    (mean-derivation (med-fix list) (- gr° 1)  note?))))
    
    (if (numberp (first note?)) (notes-change (pw::om/ calcolo 100) note? 48) 
      (pw::om/ calcolo 100))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;         DERIVATION      OX           ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun derivation (list
                     start?          
                     gr°)
    ""
   ; ()
  (let* ((start? (Profile-oriom-first? start?))
         (value (if (= start? 2) (rest list) nil))
         (list (if (= start? 1) list (first list))))

    ;(when (or (and (= start? 1) (listp (first list))) (and (= start? 2) (atom  (first list))))
     ;(error "ATTENTION!! Au format de la liste d'entre <list> et au menu <start>"))
    
    (case start?
      (1 (append (list (quasi-der-suc list (first list) gr°))
                 (prime-note list gr°)))
      (2 (append (list (quasi-der-suc list value gr°))
                 (prime-note list gr°))))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;        INTEGRATION      OX           ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun integration (list
                      start?
                      gr°)
    ""
  ;  ()
  ;(when (or (and (= start 1) (listp (first list))) (and (= start 2) (atom  (first list))))
   ; (error "ATTENTION!! Au format de la liste d'entre <list> et au menu <start>"))

  (let* ((start? (Profile-baric-first? start?))
         (value (if (= start? 2) (rest list) nil))
         (list (if (= start? 1) list (first list))))
 (case start?
      (1 (append (list (quasi-integr-suc list value gr°))
                 (list (baricentro list))))
      (2 (append (list (quasi-integr-suc1 list 2 value gr°))
                 (list (baricentro list)))))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;          INTERLOCK      OX           ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun interlock (list1 list2 gr) 
    ""
  ;  ()
  (if (= gr 1) (inter-profile list1 list2)
    (interlock (inter-profile list1 list2)
               (pw::permut-circ list2 (1- (length list1)))
               (- gr 1))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;          INTER-DYN      OX           ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun inter-dyn (begin 
                    end 
                    steps
                    tab 
                    inclu?
                    note?)
            
    ""
   ; ()
  (let* ((inclu? (Profile-inclu? inclu?))
         (initio (pw::list! begin))
         (endio (pw::list! end))
         (le-note (when note?
                    (if (atom (first note?))
                        (list note?) note?)))
         (interpo (pw::mat-trans (mapcar #'(lambda 
                                                   (liste1 liste2) 
                                             (inter-dyn0 liste1 liste2 steps
                                                         tab 
                                                         2))
                                         initio endio)))
         (con-scala (when note?
                      (if (= (length begin) 1)
                          (pw::list-explode
                           (notes-change (pw::flat interpo) (pw::flat le-note) 48)
                           (length interpo))
                        (cambia-ogni-accordo interpo le-note))))
         (fine-calcolo (append (list begin)
                               (if note? con-scala interpo)
                               (list end))))
    (case inclu?
      (1 fine-calcolo)
      (2 (butlast (rest fine-calcolo))))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;          INTERPOL-TAB      OX           ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun interpol-tab (begin 
                       end 
                       steps
                       tab 
                       inclu?)
    ""
  ;  ()
  (let ((initio (pw::list! begin))
        (endio (pw::list! end)))
    (pw::mat-trans (mapcar #'(lambda 
                                     (liste1 liste2) 
                               (inter-dyn0  liste1 liste2 steps tab inclu?))
                           initio endio))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;        MULTI-INTEPOL      OX          ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun multi-interpol (prof 
                         n-elmt 
                         tab
                         note?)
    ""
 ;   ()
  (let* ((steps (pw::list! n-elmt))
         (interpo (dyn-mult prof steps tab))
         (interpo-note (when note?
                         (if (atom (first prof))
                             (interpol-mult-note? (pw::list-explode prof (length prof)) steps tab note?)
                           (interpol-mult-note? prof steps tab note?)))))
    
    (if note? interpo-note interpo)))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;        BPF-INTERPOLX      OX          ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun BPF-interpolx  (bpf1 bpf2
                            echantillons
                            approx
                            steps
                            tab
                         )
    ""
  ;  ()
  (let* ((xbpf1 (pw::x-points bpf1))
         (xbpf2 (pw::x-points bpf2))
         (x-max-bpf1 (pw::list-max xbpf1))
         (x-min-bpf1 (pw::list-min xbpf1))
         (x-max-bpf2 (pw::list-max xbpf2))
         (x-min-bpf2 (pw::list-min xbpf2))
         (databpfy1 (pw::pwgl-sample bpf1 echantillons))   ;;;;;;;;;;;;;;;;;;;;;;;;;SAMPLE !!!!!!!!!!!!!!!!!!!!!!!!
         (databpfx1 (pw::interpolation x-min-bpf1 x-max-bpf1 echantillons 1))
         (databpfy2 (pw::pwgl-sample bpf2 echantillons))   ;;;;;;;;;;;;;;;;;;;;;;;;;SAMPLE !!!!!!!!!!!!!!!!!!!!!!!!
         (databpfx2 (pw::interpolation x-min-bpf2 x-max-bpf2 echantillons 1))
         (coordonx (pw::om-round (interpol-tab databpfx1 databpfx2 
                                              steps tab 1) approx))
         (coordony (pw::om-round (interpol-tab databpfy1 databpfy2 
                                              steps tab 1) approx)))


    (pw::mat-trans (list coordonx coordony))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;        INTERPOL-PROF      NO          ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun interpol-prof  (prof1  
                       prof2
                       steps
                       nbr-n
                       tab
                       note?
                       precis
                       approx)
            
    ""
  ;  ()
  (let* ((prof1 (pw::list! prof1))
         (prof2 (pw::list! prof2))
         (lungo1 (length prof1))
         (lungo2 (length prof2))
         (le-note (when note?
                    (if (atom (first note?))
                        (list note?) note?)))
         (bpf1 (pw::mk2D-object :bpf (list (pw::arithm-ser 0 (* 10 precis) (1- (* precis 10 lungo1))) prof1)))
         (bpf2 (pw::mk2D-object :bpf (list (pw::arithm-ser 0 (* 10 precis) (1- (* precis 10 lungo2))) prof2)))

         (liste-interpolations (bpf-interpolx (first bpf1) (first bpf2) 
                                              (* precis 
                                                 (pw::list-max (list lungo1 lungo2)))
                                              2 steps tab))
         (nbr-n (cond 
                 ((null nbr-n) (lin-list lungo1 lungo2 steps))
                 ((numberp nbr-n) (pw::create-list steps 0 nbr-n))
                 (t (pr nbr-n (pw::create-list steps 0 nbr-n)) )))
                                                                       ;;;;;;;;;;;;;;; SAMPLE !!!!!!!!!!!!
         (calcolone (mapcar #'(lambda (x ech) (pw::approx-midi (pw::pwgl-sample 
                                                                (pw::mk2D-object :bpf x) ech) approx)) liste-interpolations nbr-n))
         (con-note (when note?
                     (append (list prof1)
                             (cambia-ogni-accordo (pw::flat-once (rest (butlast calcolone))) le-note)
                             (list prof2)))))

   

    (if note? con-note (append (list prof1) (pw::flat-once calcolone) (list prof2)))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;         RANGE-APPROX      NO          ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun range-approx (list
                     limit
                     inclu?)
    ""
  ;  ()
  (let ((inclu? (Profile-inclu? inclu?))
        )
    (funcall (case inclu?
               (1 'trans-approx)
               (2 'comp-octave))
             list limit)))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;           GROUP-LIST      OX          ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun group-list (list 
                     group
                     mode?)
    ""
  ;  ()
  (let ((mode? (Profile-stop-circ-scal? mode?))
        (calcolo (pr list (pw::create-list (apply'+ group) 0))))
    
    (case mode?
      (1 (crea-spazio list group))
      (2 (scomp calcolo group))
      (3 (crea-spazio list (pw::om-round 
                            (pw::om-scale/sum group (length list))))))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;           SUBST-LIST                  ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun subst-list (list 
                        new
                        old
                        start
                        count
                        &optional test)
            
            ""
        ;    ()
  (let ((old (cond  
              ((atom old) old) 
              ((listp old) (if (= 1 (length old)) (first old) old)))))
  (substitute new
              old
              list
              :start start
              :count count
              :test test)))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;           SUBST-LIST                  ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun interpol-tab (begin 
                       end 
                       steps
                       tab 
                       inclu?)
    ""
  ;  ()
  (let ((initio (pw::list! begin))
        (endio (pw::list! end)))
    (pw::mat-trans (mapcar #'(lambda 
                                     (liste1 liste2) 
                               (inter-dyn0  liste1 liste2 steps tab inclu?))
                           initio endio))))
;
; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;           WEIGHT-AVERAGE              ;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun weight-average (list)
    "Calcule le barycentre de l'ensemble de hauteurs <list>"
  ;  ()
  (baricentro list))

