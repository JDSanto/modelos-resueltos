Problem:    3
Rows:       18
Columns:    16 (16 integer, 16 binary)
Non-zeros:  79
Status:     INTEGER OPTIMAL
Objective:  z = 15600 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 INDICADORA_CON_AUT_MIN
                                  -2                          -0 
     2 INDICADORA_CON_AUT_MAX
                                   0                          -0 
     3 INDICADORA_CON_PRT_MIN
                                   0                          -0 
     4 INDICADORA_CON_PRT_MAX
                                   0                          -0 
     5 INDICADORA_CON_7_11_MIN
                                   0                          -0 
     6 INDICADORA_CON_7_11_MAX
                                   1                           1 
     7 INDICADORA_CON_MAS_BEN_MIN
                                  -1                          -0 
     8 INDICADORA_CON_MAS_BEN_MAX
                                   1                           1 
     9 CANT_EQUIPO                 6             6             = 
    10 CONFLICTO_CARACTER
                                   1                           1 
    11 CONFLICTO_2_11
                                   1                           1 
    12 CONFLICTO_3_4
                                   1                           1 
    13 MENTOR_4_6                  0                          -0 
    14 MINIMO_INGENIEROS
                                  -2                          -1 
    15 MINIMO_QUIMICOS
                                  -1                          -1 
    16 MINIMO_CONTADORES
                                  -3                          -2 
    17 MAXIMO_CONTADORES
                                   2                           3 
    18 z                       15600                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 X1           *              1             0             1 
     2 X2           *              0             0             1 
     3 X3           *              1             0             1 
     4 X4           *              0             0             1 
     5 X5           *              1             0             1 
     6 X6           *              0             0             1 
     7 X7           *              1             0             1 
     8 X8           *              0             0             1 
     9 X9           *              1             0             1 
    10 X10          *              0             0             1 
    11 X11          *              1             0             1 
    12 X12          *              0             0             1 
    13 CON_AUT      *              1             0             1 
    14 CON_PRT      *              0             0             1 
    15 CON_7_11     *              1             0             1 
    16 CON_MAS_BEN  *              0             0             1 

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
