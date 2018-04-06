(DEFUN find1(LST A &OPTIONAL(N 0)) (COND ((NULL LST) 0) 
( (EQL A (CAR LST) ) (+ N 1) ) 
( T (find1 (CDR LST) A (+ N 1) ) ) ) )

(DEFUN MAKE-CAR-CDR(LST A Q &OPTIONAL(NUM (find1 LST A)) ) (COND  ((= NUM 0) NIL) 
((= NUM 1) ( CONS 'CAR (CONS Q NIL) ))
( T (MAKE-CAR-CDR LST A (CONS 'CDR (CONS Q NIL)) (- NUM 1)) ) ) )

(PRINT (MAKE-CAR-CDR '(A B C) 'B 'Q))
