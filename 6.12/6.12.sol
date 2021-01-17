Problem:    6
Rows:       4
Columns:    3
Non-zeros:  12
Status:     OPTIMAL
Objective:  z = 60 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 RECURSO_1    NU            12                          12             5 
     2 RECURSO_2    B             24                          28 
     3 RECURSO_3    B            -24                           4 
     4 z            B             60                             

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 X_1          NL             0             0                          -6 
     2 X_2          B             12             0               
     3 X_3          NL             0             0                          -9 

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 1.78e-15 on row 1
        max.rel.err = 7.11e-17 on row 1
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
