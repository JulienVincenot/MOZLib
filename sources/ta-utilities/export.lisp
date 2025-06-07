(in-package :ta-utils)

(export '(;; macros
	  ;; | |
	  ;; ->
	  dbind
	  ;; constants
	  +golden-ratio+
	  ;; function utils
	  arglist arity
	  ;; list utils
	  last-element first-n ensure-list nested-list? ensure-nested-list
          subseq-before subseq-after split-list subseqs
	  flat one-level-flat inner-flat mat-trans zip cartesian-product
	  positions-if best-if at-position at-even-position at-odd-position
	  keyword-position before-keyword after-keyword
	  properties plist-values remove-property remove-properties remove-keyargs replace-element update-property update-properties
	  plist->pairs pairs->plist map-plist-vals
	  length=1 append-atoms mappend map-pairwise map-neighbours all-members? last-eq? items-ordered-as?
	  find-recursively dx->x x->dx
	  rescale scale-sum
	  remove-nth pop-nth insert-after filter remove-multiple
	  ;; math utils
	  between? arithmeric-series average median integrate
	  ;; PC utilities
	  pitch->pc pc-transpose-to-0 pitches->pc-normal-form
	  ;; system
	  shell-fn shell 
	  ;; further utils
	  convert-to-package symbol-to-keyword recursive-apply save-lisp-expr format-to-file read-file write-file
	  concatenate-symbols alternate
	  ;; for documentation
	  apropos-function-documentation
	  ;; for debuging
	  mac dbg debug undebug
	  )
	:ta-utils)
