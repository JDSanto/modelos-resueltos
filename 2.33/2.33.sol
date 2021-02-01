Problem:    2
Rows:       19
Columns:    12
Non-zeros:  45
Status:     OPTIMAL
Objective:  z = 6436.363636 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 VINC_TORTA_HARINA
                    NS             0            -0             =         < eps
     2 VINC_TORTA_AZUCAR
                    NS             0            -0             =         < eps
     3 VINC_TORTA_HUEVOS
                    NS             0            -0             =         < eps
     4 VINC_TORTA_DDF
                    NS             0            -0             =         < eps
     5 VINC_TORTA_CHOC
                    NS             0            -0             =       23.6364 
     6 VINC_TORTA_COB
                    NS             0            -0             =       4.72727 
     7 VINC_COBERTURA_TOTAL
                    NS             0            -0             =         < eps
     8 VINC_COBERTURA_CHOC
                    NS             0            -0             =       23.6364 
     9 VINC_COBERTURA_DDL_MIN
                    B       -6.81818                          -0 
    10 VINC_COBERTURA_DDL_MAX
                    B        4.09091            -0               
    11 MAX_HARINA   B        392.727                         500 
    12 MAX_AZUCAR   B        163.636                         200 
    13 MAX_CHOC     NU           120                         120       23.6364 
    14 MAX_HUEVOS   B        1636.36                        1800 
    15 MAX_DDF      B        32.7273                          40 
    16 MAX_CREMA    B        28.6364                          30 
    17 MAX_DDL      NU            15                          15         < eps
    18 MAX_CAJAS    NU           300                         300            12 
    19 z            B        6436.36                             

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 P_A          NL             0             0                        -2.4 
     2 P_B          B        218.182             0               
     3 P_C          B        81.8182             0               
     4 C_choc       B        10.9091             0               
     5 C_ddl        B             15             0               
     6 C_crema      B        28.6364             0               
     7 U_harina     B        392.727             0               
     8 U_azucar     B        163.636             0               
     9 U_choc       B        109.091             0               
    10 U_ddf        B        32.7273             0               
    11 U_cob        B        54.5455             0               
    12 U_huevos     B        1636.36             0               

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
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
