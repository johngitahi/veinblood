(defun get-third(x)
  (car(cdr(cdr x))))

(format t "~a" (get-third '(a b c d e f)))

