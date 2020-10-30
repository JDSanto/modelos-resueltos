Problem:    2
Rows:       13
Columns:    22
Non-zeros:  44
Status:     OPTIMAL
Objective:  z = 19250 (MINimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 TRIM1        NS             0            -0             =         < eps
     2 TRIM2        NS             0            -0             =         -0.75 
     3 TRIM3        NS             0            -0             =         -0.75 
     4 TRIM4        NS             0            -0             =           0.5 
     5 DIFPROD1     NS             0            -0             =             1 
     6 DIFPROD2     NS             0            -0             =             1 
     7 DIFPROD3     NS             0            -0             =          0.25 
     8 DIFPROD4     NS             0            -0             =          -0.5 
     9 STOCK1       NU          5000                        5000         -0.75 
    10 STOCK2       B            500                        5000 
    11 STOCK3       B              0                        5000 
    12 STOCK4       B           1000                        5000 
    13 z            B          19250                             

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 P0           NS          6000          6000             =            -1 
     2 P1           B          14000             0               
     3 P2           B          19500             0               
     4 P3           B          19500             0               
     5 P4           B           8000             0               
     6 SF0          NS             0             0             =         < eps
     7 SF1          B           5000             0               
     8 SF2          B            500             0               
     9 SF3          NL             0             0                        1.25 
    10 SF4          NS          1000          1000             =          -0.5 
    11 E1           B           8000             0               
    12 E2           B           5500             0               
    13 E3           NL             0             0                        0.75 
    14 E4           NL             0             0                         1.5 
    15 D1           NL             0             0                         1.5 
    16 D2           NL             0             0                         1.5 
    17 D3           NL             0             0                        0.75 
    18 D4           B          11500             0               
    19 V1           NS          9000          9000             =         < eps
    20 V2           NS         24000         24000             =          0.75 
    21 V3           NS         20000         20000             =          0.75 
    22 V4           NS          7000          7000             =          -0.5 

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
