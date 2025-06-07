(in-package :ccl)

;======================
;;evaluate following (note that this only temp stuff and is already included for the next release)
;; calling ccl::%box% returns the pointer of the box
(defvar %box%)

(defmacro PWGLDef (name args documentation keyword-args &body body)
  (let* ((lambda-list (mk-lambda-list args))
         (final-body (if (eq (first body) :no-definition)
                         :no-definition
                       (if body
                           body
                         (remove '&optional (remove '&rest (remove '&key (reduced-lambda-list lambda-list))))))))
    `(let* ((boxes (mk-box-type-list ',args))
         (defaults+argns (mk-default-list ',args))
         (req-box_info (mapcar #'(lambda (argn b d) (mk-box-form argn b d)) (third defaults+argns) (first boxes) (first defaults+argns)))
         (opt-box_info (mapcar #'(lambda (argn b d) (mk-box-form argn b d)) (fourth defaults+argns) (second boxes) (second defaults+argns)))
         (keyword-arg-list ',keyword-args))
         (when (eq (first keyword-arg-list) 'eval) (setq keyword-arg-list (eval keyword-arg-list)));;290604
         (dowhile keyword-arg-list (unless (member (first keyword-arg-list) *valid-PWGLDef-keywords*)
                                   (error "Wrong keyword: ~A. Valid keywords = ~A" (first keyword-arg-list) *valid-PWGLDef-keywords*))
           (write-key ',name (pop keyword-arg-list)  (eval (pop keyword-arg-list)))); eval due to quotes
       (unless ,(eq final-body :no-definition)
         (defgeneric ,name ,(reduced-lambda-list lambda-list) (:documentation ,documentation)) ;for documentation
         (defmethod  ,name ,lambda-list
           ,documentation
           (DECLARE (SPECIAL %BOX%))
           ;; (declare (ignore-if-unused ,.(reduced-lambda-list lambda-list)))
           ,.final-body))
       (write-key ',name :extra-documentation ,documentation)
       (write-key ',name :required-inputs req-box_info)
       (write-key ',name :optional-inputs opt-box_info)
       (export ',name ,(symbol-package name))
       ',name)))


(defmethod patch-value ((self PWGL-box) outbox) 
  (let ((%box% self))
    (let ((args (mapcar #'(lambda (input) (patch-value input outbox)) (pwgl-inputs self))))
      (apply (pw-function self) args))))

(export '%box%)
;=======================
#|

(pwgldef ff ((a 3) &rest (x 8))
    ""
    ()
  (length (pwgl-subviews %box%)))


(system::PWGLDef PolyEngineDesingn ((no-of-variables 10)
                                    (rnd? t)
                                    (rules nil)
                                    (bktr-rule  10 (ccl::mk-menu-subview :menu-list '(":bktr-rule1" ":bktr-rule2")))
                                    (metric-domain '((4 4)))
                                    (rhythmdomain0 '((1/4)))
                                    (pitchdomain0 nil)
                                    &optional (rhythmdomain1 '((1/4))) (pitchdomain1 nil) (rhythmdomain2 '((1/4))) (pitchdomain2 nil)
                                    (rhythmdomain3 '((1/4))) (pitchdomain3 nil) (rhythmdomain4 '((1/4))) (pitchdomain4 nil)
                                    (rhythmdomain5 '((1/4))) (pitchdomain5 nil) (rhythmdomain6 '((1/4))) (pitchdomain6 nil)
                                    (rhythmdomain7 '((1/4))) (pitchdomain7 nil) (rhythmdomain8 '((1/4))) (pitchdomain8 nil)
                                    (rhythmdomain9 '((1/4))) (pitchdomain9 nil))
    ""
    (:groupings '(2 2 1 2)  :extension-pattern '(2) :x-proportions '((0.2 0.2)(0.1 0.3)(0.4)(0.2 0.2)) :w 0.5)

  (let (no-of-voices locked-engines)
    (length (ccl::pwgl-subviews ccl::%box%))))

|#