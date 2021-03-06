(cl:in-package #:concrete-syntax-tree)

;;; Given a CST, return the location of the source for it.  The source
;;; location is represented by a client-defined object.
(defgeneric source (cst))

;;; Return the parent of CST.  If CST does not have a parent, then NIL
;;; is returned instead.
(defgeneric parent (cst))

;;; Return true if and only if CST is an instance of NULL-CST.  Notice
;;; that this is not the same as a CST representing the atom NIL.
(defgeneric null (cst))

;;; Return true if and only if CST represents an atomic expression.
;;; Notice that (ATOM CST) is NOT equivalent to (NOT (CONSP CST))
;;; because there are CSTs that represent neither atoms nor conses.
(defgeneric atom (cst))

;;; Return true if and only if CST represents a CONS expression.
;;; Notice that (CONSP CST) is NOT equivalent to (NOT (ATOM CST))
;;; because there are CSTs that represent neither atoms nor conses.
(defgeneric consp (cst))

;;; Given an EXPRESSION-CST, return the underlying Common Lisp
;;; expression.
(defgeneric raw (expression-cst))

;;; Given a CONS-CST, return the FIRST of that CST.  If some other CST
;;; type is given, including an ATOM-CST representing NIL, then an
;;; error is signaled.
(defgeneric first (cons-cst))

;;; Given a CONS-CST, return the REST of that CST.  If some other CST
;;; type is given, including an ATOM-CST representing NIL, then an
;;; error is signaled.
(defgeneric rest (cons-cst))
