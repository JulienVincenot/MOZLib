(in-package :fe)

(export '(;; data structure
	  fenv y fenv?
	  fenv->list fenv->vector v ; l
	  ;; macros
	  linear-fenv sin-fenv sin-fenv1 expon-fenv constant-segements-fenv
	  linear-fenv-fn sin-fenv-fn sin-fenv1-fn expon-fenv-fn constant-segements-fenv-fn
	  ;; Concrete generators
	  mk-sin-fenv
	  saw-fenv saw1-fenv triangle-fenv square-fenv
	  steps-fenv random-steps-fenv rising-expon-fenv constant-fenv
	  ;; Generic generators
	  make-fenv make-fenv1 points->fenv list->fenv
	  funcs->fenv fenv-seq osciallator
	  ;; Transformers
	  add-fenvs multiply-fenvs reverse-fenv inverse-fenv scale-fenv rescale-fenv
	  combine-fenvs fenv-section waveshape
	  )
	:fe)
