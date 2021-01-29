Problem:    2
Rows:       9
Columns:    8
Non-zeros:  22
Status:     OPTIMAL
Objective:  z = 3250 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 LIMITE_AZUCAR
                    NU           100                         100            15 
     2 LIMITE_NUECES
                    NU            20                          20            65 
     3 LIMITE_CHOCOLATE
                    NU            30                          30            15 
     4 VINCULACION_PROD[CANDY]
                    NS             0            -0             =            15 
     5 VINCULACION_PROD[SWEETY]
                    NS             0            -0             =            15 
     6 PROP_NUECES_CANDY
                    NU             0                          -0            50 
     7 PROP_NUECES_SWEETY
                    NU             0                          -0            50 
     8 PROP_CHOCOLATE_SWEETY
                    B            -20                          -0 
     9 z            B           3250                             

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 M[AZUCAR,SWEETY]
                    B             60             0               
     2 M[AZUCAR,CANDY]
                    B             40             0               
     3 M[NUECES,SWEETY]
                    B             10             0               
     4 M[NUECES,CANDY]
                    B             10             0               
     5 M[CHOCOLATE,SWEETY]
                    B             30             0               
     6 M[CHOCOLATE,CANDY]
                    NL             0             0                       < eps
     7 P[CANDY]     B             50             0               
     8 P[SWEETY]    B            100             0               

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 0.00e+00 on column 0
        max.rel.err = 0.00e+00 on column 0
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
