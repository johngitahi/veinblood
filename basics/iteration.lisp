;; function to compute and show squares
(defun show-squares(start end)
  (do ((i start (+ i 1)))
      ((> i end) 'done)
    (format t "~A ~A~%" i (* i i))))

;; recursive form of show-squares
(defun rshow-squares(i end)
  (if (> i end)
      'done
      (progn
	(format t "~A ~A~%" i (* i i))
	(rshow-squares(+ i 1) end))))

;; calculate the length of a list
(defun our-length (lst)
  (let ((len 0))
    (dolist (obj lst)
      (setf len (+ len 1)))
    len))

;; recursive form of our-length
(defun rour-length (lst)
  (if (null lst)
      0
      (+ (rour-length (cdr lst)) 1)))

;; lambda expression
;; (lambda (x) (+ x 10))

;;; use this notation to use functions without naming them
;;(funcall #'(lambda (x) (+ x 10))
;;	 20)

