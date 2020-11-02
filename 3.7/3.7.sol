Problem:    3
Rows:       39
Columns:    29 (9 integer, 9 binary)
Non-zeros:  94
Status:     INTEGER OPTIMAL
Objective:  z = 265650 (MAXimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 INTERVALO_VA_1_MIN
                                   0                          -0 
     2 INTERVALO_VA_1_MAX
                                   0                          -0 
     3 INTERVALO_VA_2_MIN
                                   0                          -0 
     4 INTERVALO_VA_2_MAX
                                   0                          -0 
     5 INTERVALO_VA_3_MIN
                               -1000                          -0 
     6 INTERVALO_VA_3_MAX
                              -98000                          -0 
     7 INTERVALO_UNICO_VA
                                   1             1             = 
     8 SUMA_V_A                    0            -0             = 
     9 INTERVALO_CC_1_MIN
                                   0                          -0 
    10 INTERVALO_CC_1_MAX
                                   0                          -0 
    11 INTERVALO_CC_2_MIN
                                   0                          -0 
    12 INTERVALO_CC_2_MAX
                                   0                          -0 
    13 INTERVALO_CC_3_MIN
                                -700                          -0 
    14 INTERVALO_CC_3_MAX
                              -96300                          -0 
    15 INTERVALO_UNICO_CC
                                   1             1             = 
    16 SUMA_C_C                    0            -0             = 
    17 INTERVALO_C_2500_MIN
                               -1200                          -0 
    18 INTERVALO_C_2500_MAX
                              -96300                          -0 
    19 INTERVALO_UNICO_CB
                                   1             1             = 
    20 INTERVALO_CB_1_MAX
                                   0                          -0 
    21 INTERVALO_CB_2_MAX
                              -97100                          -0 
    22 SUMA_C_B                    0            -0             = 
    23 B_MENOR_C_MIN
                              -99000                          -0 
    24 B_MENOR_C_MAX
                               99000                      100000 
    25 MAX_VENTAS_A             2000                        2000 
    26 MAX_VENTAS_B             3000                        3000 
    27 MAX_VENTAS_C             4000                        4000 
    28 CONDICIONAL_VENTAS_A_1
                             -101000                          -0 
    29 CONDICIONAL_VENTAS_A_2
                             -102000                          -0 
    30 STOCK_INICIAL_A
                                  50            50             = 
    31 STOCK_INICIAL_B
                                 100           100             = 
    32 STOCK_INICIAL_C
                                 300           300             = 
    33 COSTO_FINAL_A
                                   0            -0             = 
    34 COSTO_FINAL_B
                                   0            -0             = 
    35 COSTO_FINAL_C
                                   0            -0             = 
    36 BENEF_FINAL_A
                                   0            -0             = 
    37 BENEF_FINAL_B
                                   0            -0             = 
    38 BENEF_FINAL_C
                                   0            -0             = 
    39 z                      265650                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 C_A                      1950             0               
     2 C_B                      2900             0               
     3 C_C                      3700             0               
     4 V_A                      2000             0               
     5 V_B                      3000             0               
     6 V_C                      4000             0               
     7 V_A_1                       0             0               
     8 V_A_2                       0             0               
     9 V_A_3                    2000             0               
    10 C_C_B_1                     0             0               
    11 C_C_B_2                  2900             0               
    12 C_C_1                       0             0               
    13 C_C_2                       0             0               
    14 C_C_3                    3700             0               
    15 COSTO_A                  5850             0               
    16 COSTO_B                  8700             0               
    17 COSTO_C                 14800             0               
    18 BENEF_A                 30000             0               
    19 BENEF_B                105000             0               
    20 BENEF_C                160000             0               
    21 I_A_1        *              0             0             1 
    22 I_A_2        *              0             0             1 
    23 I_A_3        *              1             0             1 
    24 I_C_1        *              0             0             1 
    25 I_C_2        *              0             0             1 
    26 I_C_3        *              1             0             1 
    27 I_C_B_1      *              0             0             1 
    28 I_C_B_2      *              1             0             1 
    29 I_B_MENOR    *              1             0             1 

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 1.71e-13 on row 3
        max.rel.err = 1.71e-13 on row 3
        High quality

End of output
