Problem:    3
Rows:       36
Columns:    35 (35 integer, 30 binary)
Non-zeros:  146
Status:     INTEGER OPTIMAL
Objective:  z = 250 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 MAX_DESTINO[0]
                                   1             1             = 
     2 MAX_DESTINO[1]
                                   1             1             = 
     3 MAX_DESTINO[2]
                                   1             1             = 
     4 MAX_DESTINO[3]
                                   1             1             = 
     5 MAX_DESTINO[4]
                                   1             1             = 
     6 MAX_DESTINO[5]
                                   1             1             = 
     7 MAX_ORIGEN[0]
                                   1             1             = 
     8 MAX_ORIGEN[1]
                                   1             1             = 
     9 MAX_ORIGEN[2]
                                   1             1             = 
    10 MAX_ORIGEN[3]
                                   1             1             = 
    11 MAX_ORIGEN[4]
                                   1             1             = 
    12 MAX_ORIGEN[5]
                                   1             1             = 
    13 SEQ[1,2]                    1                           4 
    14 SEQ[1,3]                    3                           4 
    15 SEQ[1,4]                    4                           4 
    16 SEQ[1,5]                    2                           4 
    17 SEQ[2,1]                    4                           4 
    18 SEQ[2,3]                    2                           4 
    19 SEQ[2,4]                   -2                           4 
    20 SEQ[2,5]                    1                           4 
    21 SEQ[3,1]                   -3                           4 
    22 SEQ[3,2]                   -2                           4 
    23 SEQ[3,4]                   -4                           4 
    24 SEQ[3,5]                    4                           4 
    25 SEQ[4,1]                    1                           4 
    26 SEQ[4,2]                    2                           4 
    27 SEQ[4,3]                    4                           4 
    28 SEQ[4,5]                    3                           4 
    29 SEQ[5,1]                   -2                           4 
    30 SEQ[5,2]                    4                           4 
    31 SEQ[5,3]                    1                           4 
    32 SEQ[5,4]                   -3                           4 
    33 ORDEN_3_4                  -4                          -0 
    34 ORDEN_3_2                  -2                          -0 
    35 ORDEN_5_2                  -1                          -0 
    36 z                         250                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 Y[0,1]       *              0             0             1 
     2 Y[0,2]       *              0             0             1 
     3 Y[0,3]       *              1             0             1 
     4 Y[0,4]       *              0             0             1 
     5 Y[0,5]       *              0             0             1 
     6 Y[1,0]       *              0             0             1 
     7 Y[1,2]       *              0             0             1 
     8 Y[1,3]       *              0             0             1 
     9 Y[1,4]       *              1             0             1 
    10 Y[1,5]       *              0             0             1 
    11 Y[2,0]       *              0             0             1 
    12 Y[2,1]       *              1             0             1 
    13 Y[2,3]       *              0             0             1 
    14 Y[2,4]       *              0             0             1 
    15 Y[2,5]       *              0             0             1 
    16 Y[3,0]       *              0             0             1 
    17 Y[3,1]       *              0             0             1 
    18 Y[3,2]       *              0             0             1 
    19 Y[3,4]       *              0             0             1 
    20 Y[3,5]       *              1             0             1 
    21 Y[4,0]       *              1             0             1 
    22 Y[4,1]       *              0             0             1 
    23 Y[4,2]       *              0             0             1 
    24 Y[4,3]       *              0             0             1 
    25 Y[4,5]       *              0             0             1 
    26 Y[5,0]       *              0             0             1 
    27 Y[5,1]       *              0             0             1 
    28 Y[5,2]       *              1             0             1 
    29 Y[5,3]       *              0             0             1 
    30 Y[5,4]       *              0             0             1 
    31 U[2]         *              1                             
    32 U[1]         *              2                             
    33 U[3]         *             -1                             
    34 U[4]         *              3                             
    35 U[5]         *              0                             

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
