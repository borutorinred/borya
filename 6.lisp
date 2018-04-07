(DEFUN ATOMS (AIDS)
                   (COND((ATOM AIDS ) AIDS)
                   ((ATOM (CAR AIDS)) (CONS (CAR AIDS))(ATOMS (CDR AIDS) ) ))
                   (T ( APPEND ( ATOMS ( CAR AIDS))( ATOMS ( CDR AIDS ) ))))
          )

(PRINT (ATOMS '((A B) C NIL (D (E F G)))))
