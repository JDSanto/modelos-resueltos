Problem:    modelo
Rows:       45
Columns:    29 (26 integer, 7 binary)
Non-zeros:  122
Status:     INTEGER OPTIMAL
Objective:  z = 8735 (MAXimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 VINC_PROMO_1                0            -0             = 
     2 VINC_PROMO_2                0            -0             = 
     3 VINC_M[a]                   0            -0             = 
     4 VINC_M[b]                   0            -0             = 
     5 VINC_M[g]                   0            -0             = 
     6 MIN_PROMO_1[a]
                                -560                          -0 
     7 MIN_PROMO_1[b]
                                   0                          -0 
     8 MIN_PROMO_1[g]
                                   0                          -0 
     9 MIN_PROMO_2               -38                          -0 
    10 VINC_BARRAS                 0            -0             = 
    11 VINC_BARRAS_P1
                                   0            -0             = 
    12 VINC_BARRAS_P2
                                   0            -0             = 
    13 VINC_330_MIN             -320                          -0 
    14 VINC_330_MAX              320                         329 
    15 MAX_PROD_DULCES[a,b]
                                   0                          -0 
    16 MAX_PROD_DULCES[a,g]
                                   0                          -0 
    17 MAX_PROD_DULCES[b,a]
                                -512                          -0 
    18 MAX_PROD_DULCES[b,g]
                                -128                          -0 
    19 MAX_PROD_DULCES[g,a]
                                -512                          -0 
    20 MAX_PROD_DULCES[g,b]
                                -128                          -0 
    21 COND_PROD_BARRITAS
                                  15                          15 
    22 DEMANDA_MAX_PROMO_1
                                  20                          20 
    23 DEMANDA_MAX_PROMO_2
                                  20                          30 
    24 VINCULACION_BONUS_SP_MIN
                                 -40                          -0 
    25 VINCULACION_BONUS_SP_MAX
                                  40                         349 
    26 UNICO_MENOR                 1             1             = 
    27 MP_1_MIN               100020                      200000 
    28 MP_1_MAX                  -20                          -0 
    29 MP_2_MIN                   20                      200000 
    30 MP_2_MAX                  -20                          -0 
    31 MP_VINC                     0                          -0 
    32 VINC_P1                     0            -0             = 
    33 P_1_1_MIN                   0                          -0 
    34 P_1_1_MAX                   8                           8 
    35 P_1_2_MAX              -99988                          -0 
    36 VINC_COSTO                  0            -0             = 
    37 z                        8735                             
    38 UNICO_MENOR_PREMIO
                                   1             1             = 
    39 MP2_1_MIN                   0                      100000 
    40 MP2_1_MAX                   0                          -0 
    41 MP2_2_MIN              100000                      100000 
    42 MP2_2_MAX                   0                          -0 
    43 BENEF_1_PREMIO_MAX_1
                                   0                          -0 
    44 BENEF_1_PREMIO_MAX_2
                              -99980                          -0 
    45 VINC_BENEF                  0            -0             = 

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 P[a]         *            192                             
     2 P[b]         *             64                             
     3 P[g]         *             64                             
     4 P[bar]       *             15                             
     5 P_P[1]       *             20                             
     6 P_P[2]       *             20                             
     7 C[bar]       *             45                             
     8 M[1,g]       *             20                             
     9 M[1,b]       *             20                             
    10 M[1,a]       *            100                             
    11 M[2,g]       *             44                             
    12 M[2,b]       *             44                             
    13 M[2,a]       *             92                             
    14 M[2,bar]     *             20                             
    15 M[1,bar]     *             40                             
    16 P_1_1        *              8                             
    17 P_1_2        *             12                             
    18 Y_1_sup8     *              1             0             1 
    19 Y_330dulces  *              0             0             1 
    20 Y_benef      *              0             0             1 
    21 MP           *              0                             
    22 Y_menor[2]   *              0             0             1 
    23 Y_menor[1]   *              1             0             1 
    24 BENEF                   18500             0               
    25 COSTO                    9765             0               
    26 BENEF_1_premio
                                  20             0               
    27 Y_menor_premio[2]
                    *              1             0             1 
    28 Y_menor_premio[1]
                    *              0             0             1 
    29 MP2          *             20                             

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
