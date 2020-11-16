Problem:    3
Rows:       20
Columns:    16 (3 integer, 3 binary)
Non-zeros:  55
Status:     INTEGER OPTIMAL
Objective:  z = 41916666.67 (MAXimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 MAX_HH_FUSELAJE
                              172000                      480000 
     2 VINCULACION_TURBINAS_AVION
                                   0            -0             = 
     3 VINCULACION_PROD_AVIONES_MIN
                            -3.58333                          -0 
     4 VINCULACION_TURBINAS
                                   0            -0             = 
     5 MAX_TURBINAS_1
                              144000                      144000 
     6 MAX_TURBINAS_2
                              288000                      288000 
     7 MAX_TURBINAS_3
                              152000                      152000 
     8 TURBINAS_REPRESA_A_MIN
                                   0                          -0 
     9 TURBINAS_REPRESA_A_MAX
                                   0                          -0 
    10 TURBINAS_REPRESA_B_MIN
                                   0                          -0 
    11 TURBINAS_REPRESA_B_MAX
                                   0                          -0 
    12 OP_A_MIN                    0                          -0 
    13 OP_A_MAX                    0                          -0 
    14 OP_B_MIN                    0                          -0 
    15 OP_B_MAX                    0                          -0 
    16 OP_TOTAL_1_MAX
                               72000                       72000 
    17 OP_TOTAL_2_MAX
                                8000                      144000 
    18 VINCULACION_COSTO_TOTAL
                               1e+06         1e+06             = 
    19 VINCULACION_BENEF_TOTAL
                                   0            -0             = 
    20 z                 4.19167e+07                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 P_AV                  3.58333             0               
     2 T_AV_1                      0             0               
     3 T_AV_2                      8             0               
     4 T_AV_3                6.33333             0               
     5 I_AV         *              0             0             1 
     6 T_A_1                       0             0               
     7 OP_A_1                      0             0               
     8 I_A          *              0             0             1 
     9 T_B_1                       6             0               
    10 T_B_2                       4             0               
    11 OP_B_1                  72000             0               
    12 OP_B_2                   8000             0               
    13 I_B          *              1             0             1 
    14 T_TOTAL               24.3333             0               
    15 COSTO_TOTAL       1.85417e+08             0               
    16 BENEF_TOTAL       2.27333e+08             0               

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 2.91e-11 on row 5
        max.rel.err = 2.02e-16 on row 5
        High quality

End of output
