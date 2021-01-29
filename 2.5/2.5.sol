Problem:    2
Rows:       7
Columns:    6 (4 integer, 0 binary)
Non-zeros:  14
Status:     INTEGER EMPTY
Objective:  z = 0 (MAXimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 MAX_RAPIDAS                 0                          70 
     2 MAX_LENTAS                  0                          60 
     3 VINCULACION_SNOOPY
                                   0            -0             = 
     4 VINCULACION_SCOOBY
                                   0            -0             = 
     5 DEMANDA_MINIMA_SNOOPY
                                   0                      -10000 
     6 DEMANDA_MINIMA_SCOOBY
                                   0                       -9000 
     7 z                           0                             

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 M_RAPIDA_SNOOPY
                    *              0             0               
     2 M_RAPIDA_SCOOBY
                    *              0             0               
     3 M_LENTA_SNOOPY
                    *              0             0               
     4 M_LENTA_SCOOBY
                    *              0             0               
     5 P_SNOOPY                    0             0               
     6 P_SCOOBY                    0             0               

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 1.00e+04 on row 5
        max.rel.err = 1.00e+00 on row 5
        SOLUTION IS INFEASIBLE

End of output
