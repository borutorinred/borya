(DEFUN SORT11 (KURWA)
                (COND
                 ((ATOM (CDR KURWA)) KURWA)
                 ((> (CAR KURWA) (CADR KURWA)) (CONS(CADR KURWA) (SORT11 (CONS (CAR KURWA) (CDDR KURWA)))))
                 (T KURWA)   
                )
              )

              (DEFUN SORT1 (KURWA)
                (COND 
                 ((ATOM (CDR KURWA)) KURWA)
                 (T (SORT11 (CONS (CAR KURWA) (SORT1 (CDR KURWA)))))
                )
              )
(PRINT  (SORT1 '(1 5 2 4 3)))
