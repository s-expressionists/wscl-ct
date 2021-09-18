(in-package #:wscl-ct)


(defvar *output-path* (first (uiop:command-line-arguments)))
(defvar *test-results* nil)
(defvar +implementation-identifier+
        (format nil "~A ~A" (uiop:implementation-type) (uiop:lisp-version-string)))

(defmacro record-eval (&rest forms)
  (let ((form-var (gensym))
        (stream-var (gensym)))
    `(with-open-file (,stream-var *output-path*
                                  :if-exists :append :if-does-not-exist :create
                                  :direction :output)
       (format ,stream-var "~%  ~A ~A~%" (uiop:implementation-type) (uiop:lisp-version-string))
         (dolist (,form-var (quote ,forms))
           (let ((*print-case* :downcase))
             (format ,stream-var "    ~S => " ,form-var))
           (handler-case
               (multiple-value-list (eval ,form-var))
             (type-error (condition)
               (format ,stream-var "[signals TYPE-ERROR~@[ with expected type ~S~]]~%"
                       (ignore-errors
                         (type-error-expected-type condition))))
             (error (condition)
               (format ,stream-var "[signals ~S]~%"
                       (or (find-if (lambda (class-name)
                                      (and (or (equal "ERROR" (symbol-name class-name))
                                          (equal 0 (mismatch "ERROR" (symbol-name class-name) :from-end t)))
                                           (equal "COMMON-LISP" (package-name (symbol-package class-name)))))
                                    (mapcar #'class-name (closer-mop:compute-class-precedence-list (class-of condition))))
                           (class-name (class-of condition)))))
             (:no-error (result)
               (format ,stream-var "~{~S~^, ~}~%" result)))))))

