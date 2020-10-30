Problem:    3
Rows:       29
Columns:    20 (9 integer, 9 binary)
Non-zeros:  84
Status:     INTEGER OPTIMAL
Objective:  z = 7000 (MAXimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 INTERVALO_1_MIN
                                   0                          -0 
     2 INTERVALO_1_MAX
                                   0                          -0 
     3 INTERVALO_2_MIN
                                   0                          -0 
     4 INTERVALO_2_MAX
                                   0                          -0 
     5 INTERVALO_3_MIN
                                   0                          -0 
     6 INTERVALO_3_MAX
                                   0                          -0 
     7 INTERVALO_4_MIN
                             -62.499                          -0 
     8 INTERVALO_4_MAX
                             -9437.5                          -0 
     9 USA_A_MIN                -180                          -0 
    10 USA_A_MAX               -9800                          -0 
    11 USA_B_MIN                   0                          -0 
    12 USA_B_MAX                   0                          -0 
    13 USA_C_MIN                 -30                          -0 
    14 USA_C_MAX               -9950                          -0 
    15 USA_D_MIN                -180                          -0 
    16 USA_D_MAX               -9800                          -0 
    17 USA_E_MIN                   0                          -0 
    18 USA_E_MAX                   0                          -0 
    19 ACEITE_COMESTIBLE
                                   0            -0             = 
    20 HORAS_TOTAL                 0            -0             = 
    21 HORAS_REFINAMIENTO
                                   0            -0             = 
    22 MAX_ACEITES                 3                           3 
    23 USAR_C_SI_A                 0                          -0 
    24 USAR_C_SI_B                -1                          -0 
    25 MAQUINA_LINEA_1
                                 200                         200 
    26 MAQUINA_LINEA_2
                                 250                         250 
    27 DUREZA_MIN              -1350                          -0 
    28 DUREZA_MAX                  0                          -0 
    29 z                        7000                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 R_A                       200             0               
     2 R_B                         0             0               
     3 R_C                        50             0               
     4 R_D                       200             0               
     5 R_E                         0             0               
     6 U_A          *              1             0             1 
     7 U_B          *              0             0             1 
     8 U_C          *              1             0             1 
     9 U_D          *              1             0             1 
    10 U_E          *              0             0             1 
    11 H_1                         0             0               
    12 I_1          *              0             0             1 
    13 H_2                         0             0               
    14 I_2          *              0             0             1 
    15 H_3                         0             0               
    16 I_3          *              0             0             1 
    17 H_4                     562.5             0               
    18 I_4          *              1             0             1 
    19 H                       562.5             0               
    20 A                         450             0               

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
