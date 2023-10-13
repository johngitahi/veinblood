;; load the Hunchentoot library
(ql:quickload 'hunchentoot)

(hunchentoot:define-easy-handler (say-yo :uri "/yo") (name)
  (setf (hunchentoot:content-type*) "text/plain")
  (format nil "Hey~@[ ~A~]!" name))

(defun start-server()
  (hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 5000)))
