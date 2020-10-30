Problem:    2
Rows:       19
Columns:    28
Non-zeros:  98
Status:     OPTIMAL
Objective:  z = 175.7727273 (MINimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 MAXEMP_V     B        5.53571                          18 
     2 MAXEMP_S     B        5.53571                          18 
     3 MAXEMP_D     B        5.53571                          18 
     4 VINC_REP_S   NS             0            -0             =           1.2 
     5 VINC_ORD_S   NS             0            -0             =         < eps
     6 VINC_MAR_S   NS             0            -0             =         < eps
     7 VINC_LIB_S   NS             0            -0             =         < eps
     8 VINC_REP_D   NS             0            -0             =         < eps
     9 VINC_MAR_D   NS             0            -0             =         < eps
    10 VINC_LIB_D   NS             0            -0             =         < eps
    11 MIN_REP_V    NL           450           450                        0.09 
    12 MIN_ORD_V    NL           300           300                        0.05 
    13 MIN_MAR_V    NL           150           150                   0.0428571 
    14 MIN_REP_S    NL           500           500                         0.1 
    15 MIN_MAR_S    B        435.833           139               
    16 MIN_REP_D    NL           350           350                   0.0909091 
    17 MIN_ORD_D    NL           360           360                        0.05 
    18 MIN_MAR_D    NL           360           360                    0.038961 
    19 z            B        175.773                             

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 V_R          B           3.75             0               
     2 V_O          B           1.25             0               
     3 V_M          B       0.535714             0               
     4 V_L          B              0             0               
     5 S_R_R        B           3.75             0               
     6 S_R_O        NL             0             0                       < eps
     7 S_R_M        B      0.0416667             0               
     8 S_R_L        NL             0             0                       < eps
     9 S_M_R        NL             0             0                         1.2 
    10 S_M_O        B           1.25             0               
    11 S_M_M        B        0.27868             0               
    12 S_M_L        NL             0             0                       < eps
    13 S_L_R        NL             0             0                         1.2 
    14 S_L_O        NL             0             0                       < eps
    15 S_L_M        B       0.215368             0               
    16 S_L_L        NL             0             0                       < eps
    17 D_R_R        B        2.65152             0               
    18 D_R_M        NL             0             0                     1.09091 
    19 D_R_L        NL             0             0                          12 
    20 D_O_R        B        1.14015             0               
    21 D_O_M        B       0.359848             0               
    22 D_O_L        NL             0             0                          12 
    23 D_M_R        NL             0             0                     1.09091 
    24 D_M_M        B        1.16883             0               
    25 D_M_L        NL             0             0                          12 
    26 D_L_R        NL             0             0                       < eps
    27 D_L_M        NL             0             0                       < eps
    28 D_L_L        B       0.215368             0               

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 1.71e-13 on row 17
        max.rel.err = 2.37e-16 on row 17
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 3.55e-15 on column 7
        max.rel.err = 2.17e-16 on column 11
        High quality

KKT.DB: max.abs.err = 1.73e-15 on column 26
        max.rel.err = 1.73e-15 on column 26
        High quality

End of output
