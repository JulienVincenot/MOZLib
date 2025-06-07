;;; This library implements a simple neural network.
;;; Copyright 2019-2020 Guillaume Le Vaillant
;;; This library is free software released under the GNU GPL-3 license.

(defsystem "simple-neural-network"
  :name "simple-neural-network"
  :description "Simple neural network"
  :version "3.1"
  :author "Guillaume Le Vaillant"
  :license "GPL-3"
  :depends-on ("cl-store" "lparallel")
  :in-order-to ((test-op (test-op "simple-neural-network/test")))
  :components ((:file "simple-neural-network")))

(defsystem "simple-neural-network/test"
  :depends-on ("chipz" "fiveam" "simple-neural-network" "uiop")
  :version "3.1"
  :in-order-to ((test-op (load-op "simple-neural-network/test")))
  :perform (test-op (o s)
             (let ((tests (uiop:find-symbol* 'snn-tests
                                             :simple-neural-network/test)))
               (uiop:symbol-call :fiveam 'run! tests)))
  :components ((:module "tests"
                :components ((:file "tests")))))
