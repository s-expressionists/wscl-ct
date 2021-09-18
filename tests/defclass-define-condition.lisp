(asdf:load-system :wscl-ct)


(defmacro cl/name (name)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,name () ())))

(defmacro cl/super (&rest names)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) ,names ())))

(defmacro cl/s/name (name)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) () ((,name)))))

(defmacro cl/s/reader (name)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) () ((a :reader ,name)))))

(defmacro cl/s/writer (name)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) () ((a :writer ,name)))))

(defmacro cl/s/accessor (name)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) () ((a :accessor ,name)))))

(defmacro cl/s/allocation (&rest forms)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) ()
       ((a ,@(mapcan (lambda (form)
                       (list :allocation form))
                     forms))))))

(defmacro cl/s/initform (&rest forms)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) ()
       ((a ,@(mapcan (lambda (form)
                       (list :initform form))
                     forms))))))

(defmacro cl/s/type (&rest forms)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) ()
       ((a ,@(mapcan (lambda (form)
                       (list :type form))
                     forms))))))

(defmacro cl/s/documentation (&rest forms)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) ()
       ((a ,@(mapcan (lambda (form)
                       (list :documentation form))
                     forms))))))

(defmacro cl/s/unk-option ()
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) ()
       ((a :fubar "b")))))

(defmacro cl/dup-default-initarg ()
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) ()
       ((a :initarg :a))
       (:default-initargs :a 1 :a 2))))

(defmacro cl/metaclass (&rest forms)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,(gentemp) () ()
       ,@(mapcar (lambda (form)
                   (list :metaclass form))
                 forms))))

(defmacro co/name (name)
  `(locally
     (declare (optimize (safety 3)))
     (defclass ,name () ())))

(defmacro co/super (&rest names)
  `(locally
     (declare (optimize (safety 3)))
     (define-condition ,(gentemp) ,names ())))

(defmacro co/s/name (&rest names)
  `(locally
     (declare (optimize (safety 3)))
     (define-condition ,(gentemp) ()
       ,(mapcar #'list names))))

(defmacro co/s/reader (name)
  `(locally
     (declare (optimize (safety 3)))
     (define-condition ,(gentemp) () ((a :reader ,name)))))

(defmacro co/s/writer (name)
  `(locally
     (declare (optimize (safety 3)))
     (define-condition ,(gentemp) () ((a :writer ,name)))))

(defmacro co/s/accessor (name)
  `(locally
     (declare (optimize (safety 3)))
     (define-condition ,(gentemp) () ((a :accessor ,name)))))

(defmacro co/s/allocation (&rest forms)
  `(locally
     (declare (optimize (safety 3)))
     (define-condition ,(gentemp) ()
       ((a ,@(mapcan (lambda (form)
                       (list :allocation form))
                     forms))))))

(defmacro co/s/initform (&rest forms)
  `(locally
     (declare (optimize (safety 3)))
     (define-condition ,(gentemp) ()
       ((a ,@(mapcan (lambda (form)
                       (list :initform form))
                     forms))))))

(defmacro co/s/type (&rest forms)
  `(locally
     (declare (optimize (safety 3)))
     (define-condition ,(gentemp) ()
       ((a ,@(mapcan (lambda (form)
                       (list :type form))
                     forms))))))

(defmacro co/s/documentation (&rest forms)
  `(locally
     (declare (optimize (safety 3)))
     (define-condition ,(gentemp) ()
       ((a ,@(mapcan (lambda (form)
                       (list :documentation form))
                     forms))))))

(defmacro co/s/unk-option ()
  `(locally
     (declare (optimize (safety 3)))
     (define-condition ,(gentemp) ()
       ((a :fubar "b")))))

(defmacro co/dup-default-initarg ()
  `(locally
     (declare (optimize (safety 3)))
     (define-condition ,(gentemp) ()
       ((a :initarg :a))
       (:default-initargs :a 1 :a 2))))

(wscl-ct:record-eval
  (cl/name "a")
  (cl/name nil)
  (cl/super "a")
  (cl/super nil)
  (cl/s/name "a")
  (cl/s/reader "a")
  (cl/s/reader nil)
  (cl/s/writer "a")
  (cl/s/writer nil)
  (cl/s/accessor "a")
  (cl/s/accessor nil)
  (cl/s/allocation :wibble)
  (cl/s/allocation :instance :class)
  (cl/s/initform 1 2)
  (cl/s/type t t)
  (cl/s/documentation t)
  (cl/s/documentation "a" "b")
  (cl/s/unk-option)
  (cl/dup-default-initarg)
  (cl/metaclass "a")
  (cl/metaclass nil)
  (cl/metaclass a b)
  (co/name "a")
  (co/name nil)
  (co/super "a")
  (co/super nil)
  (co/s/name "a")
  (co/s/name a a)
  (co/s/reader "a")
  (co/s/reader nil)
  (co/s/writer "a")
  (co/s/writer nil)
  (co/s/accessor "a")
  (co/s/accessor nil)
  (co/s/allocation :wibble)
  (co/s/allocation :instance :class)
  (co/s/initform 1 2)
  (co/s/type t t)
  (co/s/documentation t)
  (co/s/documentation "a" "b")
  (co/s/unk-option)
  (co/dup-default-initarg))
  
