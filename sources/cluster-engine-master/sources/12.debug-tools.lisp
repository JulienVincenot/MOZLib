(in-package cluster-engine)

(defvar *debug-vector* (make-array '(100) :element-type 'list :initial-element nil))
(defvar *debug-vector2* (make-array '(100) :element-type 'list :initial-element nil))
(defvar *debug-index* 0)
(defvar *debug-index2* 0)
(defvar *debug-count-backtrack* 0)
(defvar *debug-filename* nil)
(defvar *debug-indexes-filename* nil)


(defun store-temp-solution-to-debug-vector (temp-sol)
  (declare (type list temp-sol))
  (if (= *debug-index* 99) (setf *debug-index* 0)
    (setf *debug-index* (1+ *debug-index*)))
  (setf (aref *debug-vector* *debug-index*) temp-sol))

(defun store-temp-solution-to-debug-vector2 (temp-sol)
  (declare (type list temp-sol))
  (if (= *debug-index2* 99) (setf *debug-index2* 0)
    (setf *debug-index2* (1+ *debug-index2*)))
  (setf (aref *debug-vector2* *debug-index2*) temp-sol))


(defun convert-history-index-to-debug-index (history-index)
  (mod (- *debug-index* history-index) 100))

(defun convert-history-index-to-debug-index2 (history-index)
  (mod (- *debug-index2* history-index) 100))

(defun get-solution-from-history (history-index)
  (let ((debug-index (convert-history-index-to-debug-index history-index)))
    (aref *debug-vector* debug-index)))

(defun get-solution-from-history2 (history-index)
  (let ((debug-index (convert-history-index-to-debug-index2 history-index)))
    (aref *debug-vector2* debug-index)))

(defun clear-debug-vector ()
  (setf *debug-count-backtrack* 0)
  (loop for index from 0 to 99
        do (progn
             (setf (aref *debug-vector* index) nil)
             (setf (aref *debug-vector2* index) nil))))


;;;ADDED May 23, 2020 - write all debug information to a file that can be opened in another software
(defun write-debugvectors-to-file ()
  (progn ( with-open-file
    ( stream
      ( string
        *debug-filename* )
      :direction :output :if-exists :supersede )
    ( format stream
     ( write-to-string
       (list *debug-index* *debug-vector* *debug-index2* *debug-vector2* ))))
  ))


;;;ADDED Jan 17, 2021
;;;append successive debug index vectors (showing progression in solving) 
;;;to a file that can be opened in another software
;;;NOTE : the file must be cleared (see following function) before any evaluation 


(defvar *debug-indexes-filename* nil)

(defun write-debug-index-vectors-to-file ()
  ( with-open-file
    ( stream
      ( string *debug-indexes-filename* )
      :direction :output :if-exists :supersede )
    ( format stream "~a~%"
      ( write-to-string 
        (list    
          (coerce 
            (mapcar #'length 
              (nth 0 (coerce 
                (reverse 
                  (remove-if #'null *debug-vector*)) 
                'list))) 'vector)
          (coerce 
            (mapcar #'length 
              (nth 0 (coerce 
                (reverse 
                  (remove-if #'null *debug-vector2*)) 
                'list))) 'vector)
          )  
        )
      )
    )
  )


(defun clear-debug-index-vectors-to-file ()
  ( with-open-file
    ( stream 
      ( string *debug-indexes-filename* )
         :direction :output :if-exists :supersede )
    ( format stream ""))
)





;;;;;PWGL box below

#+PWGL
(progn 
  (defclass PWGL-box-CLUSTERdebug (ccl::PWGL-box) ())

  (defmethod ccl::patch-value ((self PWGL-box-CLUSTERdebug) outbox)
    (declare (ignore outbox))
    (ccl::application-window (ccl::find-by-nick-name self :sol-score)))



  (defgeneric CLUSTERdebug ()  (:documentation "This is a tool to display what happend during the last search. The inputs 
should not be connected.

The main control is the slider on the top. By dragging the slider to the 
left, you step back in history from the final solution (or where you 
interrupted the last search). When you move the slider, the history index 
displays how far back you are from the found solution (max 100 steps).

The pmc-index shows how far the search process had reached at the displayed
point.

The score diplays the temporary solution at the history-index. By double 
clicking the score, you can open a bigger score and set the display the 
usual way (see the PWGL manual). "))

  (defun history-slider (slider)
    (let* ((container (ccl::pwgl-view-container slider))
	   (debug-type (ccl::curval (ccl::find-by-nick-name container :debug-type)))
	   old-score new-score)  
      (ccl::set-curval (ccl::find-by-nick-name container :history-index) (format nil "~A" (ccl::curval slider)))
      
      (if (= debug-type 0)
	  (setf new-score (poly-engine->score (get-solution-from-history (abs (ccl::curval slider)))))
	  (setf new-score (poly-engine->score (get-solution-from-history2 (abs (ccl::curval slider))))))
      (if new-score
	  (progn
	    (setf old-score (ccl::application-window (ccl::find-by-nick-name container :sol-score)))
	    (setf (ccl::parts old-score) (ccl::parts new-score))
	    (ccl::redraw (ccl::subview (ccl::application-window (ccl::find-by-nick-name container :sol-score))))))
      ))


  (defun history-value (value)
    (let* ((container (ccl::pwgl-view-container value))
	   (debug-type (ccl::curval (ccl::find-by-nick-name container :debug-type)))
	   old-score new-score)
      (ccl::set-curval (ccl::find-by-nick-name container :history-index2) (ccl::curval value))
      
      (if (= debug-type 0)
	  (setf new-score (poly-engine->score (get-solution-from-history (abs (ccl::curval value)))))
	  (setf new-score (poly-engine->score (get-solution-from-history2 (abs (ccl::curval value))))))
      (if new-score
	  (progn
	    (setf old-score (ccl::application-window (ccl::find-by-nick-name container :sol-score)))
	    (setf (ccl::parts old-score) (ccl::parts new-score))
	    (ccl::redraw (ccl::subview (ccl::application-window (ccl::find-by-nick-name container :sol-score))))))))


  (defun type-value (value))

					;(redraw (subview xxxx))  xxxx = application-window

  (defmethod ccl::mk-box-function ((self (eql 'CLUSTERdebug)) x y)
    (ccl::mk-PW-box   'PWGL-box-CLUSTERdebug 'CLUSTERdebug "CLUSTER debug" x y 1.5 0.5
		      (list 
		       (ccl::mk-value-subview :value 0 :minval 0 :maxval 1 :stepval 1  :doc-string "debug-type" :pwgl-nick-name :debug-type :pwgl-action-function 'type-value)
		       (ccl::mk-value-subview :value -1 :minval -99 :maxval -1 :stepval 1  :doc-string "history-index" :pwgl-nick-name :history-index :pwgl-action-function 'history-value)
		       (ccl::mk-slider-subview :value -1 :minval -99 :maxval -1 :number-of-decimals 0 :horizontal t :grid t :pwgl-nick-name :history-index2 :pwgl-action-function 'history-slider)
		       (ccl::mk-score-subview :application-window (ccl::make-enp-application-window '(((()))))  :doc-string "" :pwgl-nick-name :sol-score)
		       )
		      :groupings '(3 1)
		      :x-proportions '((0.3 0.55 9)(1))
		      :y-proportions '((:fix 0.06) 10)
		      :r 0.5 :g 0.6 :b 0.6
		      ))


  (defmethod ccl::playable-box? ((self PWGL-box-CLUSTERdebug)) t)
  (defmethod ccl::play-PWGL-box ((self PWGL-box-CLUSTERdebug))
    (let ((score (ccl::application-window (ccl::find-by-nick-name self :sol-score))))
      (ccl::ENP-play/stop-midi-notes score)))
  )


