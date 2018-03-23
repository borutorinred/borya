(defun ASSOC1 (x y) (cond (x (cond ((equal y (car (car x))) (cdr (car x)))
                                    (T (ASSOC1 (cdr x) y))))
                                    (T nil)))
(print (ASSOC1 '((A . 1) (B . 2) (C . 3)) 'B))