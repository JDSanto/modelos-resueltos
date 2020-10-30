Problem:    2
Rows:       9
Columns:    4
Non-zeros:  15
Status:     OPTIMAL
Objective:  z = 5400 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 z            B           5400                             
     2 VentasMes1Min
                    B             70            70               
     3 VentasMes2Min
                    NL           110           110                       < eps
     4 StockMes1    B            -20                          -0 
     5 StockMes2    NU             0                          -0            30 
     6 MateriaPrimaMes1
                    B           -135          -150               
     7 MateriaPrimaMes2
                    B           -270          -300               
     8 HorasMaquinaMes1
                    NL          -180          -180                         -15 
     9 HorasMaquinaMes2
                    NL          -180          -180                         -15 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 P1           B             90             0               
     2 P2           B             90             0               
     3 V1           B             70             0               
     4 V2           B            110             0               

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
