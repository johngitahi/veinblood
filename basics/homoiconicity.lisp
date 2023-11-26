;; Define a list (data) containing code
(defvar code (list '+ 2 5))

;; Evaluate the list as a code
(format t "Result: ~a~%" (eval code))
