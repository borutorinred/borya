              
                (DEFUN SORTIRIVKA1 (KURWA)

                (COND

                 ((ATOM (CDR KURWA)) KURWA)

                 ((> (CAR KURWA) (CADR KURWA)) (CONS(CADR KURWA) (SORTIRIVKA1 (CONS (CAR KURWA) (CDDR KURWA)))))

                 (T KURWA)   

                )

              )
              (DEFUN SORTIRIVKA (KURWA)

                (COND 

                 ((ATOM (CDR KURWA)) KURWA)

                 (T (SORTIRIVKA1 (CONS (CAR KURWA) (SORTIRIVKA (CDR KURWA)))))

                )

              )




(DEFUN MERGE1(X Y) (SORTIRIVKA (append X Y )))

(PRINT (MERGE1 '(1 3 5) '(2 4) ) )
