(defpackage #:wscl-ct
  (:use #:common-lisp)
  (:documentation "Compliance testing for WSCL")
  (:export
    #:*output-path*
    #:record-eval))


(defpackage #:wscl-ct/tests
  (:documentation "Tests for WSCL")
  (:export
    #:stream-error-stream-type-error))
