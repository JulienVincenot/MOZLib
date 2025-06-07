(in-package cluster-engine)

;;;;;;decode solution
(defun get-one-engine (vsolution vindex engine)
  (loop for index from 0 to (aref vindex engine)
        collect (caar (aref (aref vsolution engine) index))))


(defun get-all-engines (vsolution vindex nr-of-engines)
  (loop for engine from 0 to (1- nr-of-engines)
        collect (if (= engine (1- nr-of-engines))
                    (get-one-engine vsolution vindex engine)
                  (apply 'append (get-one-engine vsolution vindex engine)))))