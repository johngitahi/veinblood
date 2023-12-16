(defstruct point
  x
  y)

(setf p (make-point :x 12 :y 6))

(defstruct polemic
  (type (progn
	  (format t "What kind of polemic was it? ")
	  (read)))
  (effect nil))

(defstruct (point (:conc-name p)
		  (:print-function print-point))
  (x 0)
  (y 0))

(defun print-point (p stream depth)
  (format stream "(~A, ~A)" (px p) (py p)))
