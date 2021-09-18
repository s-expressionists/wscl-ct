(defpackage #:wscl-ct
  (:use #:common-lisp)
  (:documentation "Compliance testing for WSCL")
  (:export
    #:*output-path*
    #:record-eval
    #:deftest))

(defpackage #:wscl-ct/tests
  (:documentation "Tests for WSCL"))
