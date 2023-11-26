(defmacro double (expr)
  `(let ((result# (* 2 ,expr)))
     result#))


(defun run()
  (let ((x 5))
  (format t "Double of ~a is ~a~%" x (double x))))

(macroexpand `(double x))
