;;; 44 - Lisp - Macro-Based Artificial Intelligence Engine
(defmacro defrule (name condition action)
  `(defun ,name (state)
     (when ,condition (funcall ,action state))))

(defun report (state)
  (format t "Lisp AI Engine: rule fired -> ~a~%" state))

(defrule aggro-check (> (getf state :threat) 50) #'report)

(aggro-check '(:threat 99))
