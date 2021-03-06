(cl:in-package #:concrete-syntax-tree)

(define-condition cst-error (error acclimation:condition)
  ())

;;; This condition is signaled whenever an instance of the class
;;; CST-EXPRESSION was required, but something else was given.
(define-condition expression-cst-required (cst-error)
  ((%cst :initarg :cst :reader cst)))
