(asdf:load-system :wscl-ct)


  (defmacro duplicate-slot (name)
    `(locally
       (declare (optimize (safety 3)))
       (define-condition ,name ()
         ((a)
          (a)))))


  (defmacro duplicate-default-initarg (name)
    `(locally
       (declare (optimize (safety 3)))
       (define-condition ,name ()
         ((a :initarg :a))
         (:default-initargs :a 1 :a 2))))


  (defmacro duplicate-allocation-option (name)
    `(locally
       (declare (optimize (safety 3)))
       (define-condition ,name ()
         ((a :allocation :class :allocation :instance)))))


  (defmacro duplicate-initform-option (name)
    `(locally
       (declare (optimize (safety 3)))
       (define-condition ,name ()
         ((a :initform 1 :initform 2)))))


  (defmacro duplicate-type-option (name)
    `(locally
       (declare (optimize (safety 3)))
       (define-condition ,name ()
         ((a :type integer :type string)))))


  (defmacro duplicate-documentation-option (name)
    `(locally
       (declare (optimize (safety 3)))
       (define-condition ,name ()
         ((a :documentation "a" :documentation "b")))))


  (defmacro unknown-slot-option (name)
    `(locally
       (declare (optimize (safety 3)))
       (define-condition ,name ()
         ((a :fubar "b")))))


(wscl-ct:record-eval
  (duplicate-slot c1)
  (duplicate-default-initarg c2)
  (duplicate-allocation-option c3)
  (duplicate-initform-option c4)
  (duplicate-type-option c5)
  (duplicate-documentation-option c6)
  (unknown-slot-option c7))
