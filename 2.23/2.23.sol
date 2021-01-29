Problem:    2
Rows:       20
Columns:    22
Non-zeros:  56
Status:     OPTIMAL
Objective:  z = 82837.5 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 VINCULACION_PROD_E_1
                    NS             0            -0             =         30.82 
     2 VINCULACION_PROD_K_1
                    NS             0            -0             =         30.82 
     3 VINCULACION_PROD_S_1
                    NS             0            -0             =         30.82 
     4 VINCULACION_PROD_E_2
                    NS             0            -0             =         15.41 
     5 VINCULACION_PROD_K_2
                    NS             0            -0             =         15.41 
     6 VINCULACION_PROD_S_2
                    NS             0            -0             =         15.41 
     7 VINCULACION_PROD_E_3
                    NS             0            -0             =          4.02 
     8 VINCULACION_PROD_K_3
                    NS             0            -0             =          4.02 
     9 VINCULACION_PROD_S_3
                    NS             0            -0             =          4.02 
    10 USO_RECURSO_TOTAL[HH]
                    NS             0            -0             =        -30.82 
    11 USO_RECURSO_TOTAL[HM]
                    NS             0            -0             =        -15.41 
    12 USO_RECURSO_TOTAL[MP]
                    NS             0            -0             =         -4.02 
    13 TOTAL_HH     NS          2500          2500             =        25.795 
    14 TOTAL_HM     NS          1000          1000             =         8.375 
    15 TOTAL_MP     NS          5000          5000             =          2.01 
    16 META_CAJA    NS         15000         15000             =        -0.005 
    17 TOTAL_GANANCIA
                    NS             0            -0             =         1.005 
    18 TOTAL_COSTO  NS             0            -0             =        -1.005 
    19 CAJA_INICIAL_COMPRA_RECURSOS
                    B          23500                       30000 
    20 z            B        82837.5                             

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 M[HH,E]      B            100             0               
     2 M[HH,K]      B           2400             0               
     3 M[HH,S]      B              0             0               
     4 M[HM,E]      B            400             0               
     5 M[HM,K]      B            600             0               
     6 M[HM,S]      B              0             0               
     7 M[MP,E]      B            200             0               
     8 M[MP,K]      B           1800             0               
     9 M[MP,S]      B              0             0               
    10 P[E]         B            100             0               
    11 P[K]         B            600             0               
    12 P[S]         NL             0             0                      -42.88 
    13 U_UTIL[HH]   B           2500             0               
    14 U_UTIL[HM]   B           1000             0               
    15 U_UTIL[MP]   B           2000             0               
    16 U_SOB[HH]    NL             0             0                     -21.775 
    17 U_SOB[HM]    NL             0             0                      -0.335 
    18 U_SOB[MP]    B           3000             0               
    19 GANANCIA     B         106000             0               
    20 COSTO        B          23500             0               
    21 CAJA_EXC     B          67500             0               
    22 CAJA_DEF     NL             0             0                      -0.005 

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 1.46e-11 on row 17
        max.rel.err = 9.47e-17 on row 5
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 2.84e-14 on column 10
        max.rel.err = 1.41e-16 on column 10
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
