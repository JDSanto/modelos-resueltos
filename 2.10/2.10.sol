Problem:    2
Rows:       25
Columns:    28
Non-zeros:  68
Status:     OPTIMAL
Objective:  z = 13296.75 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 z            B        13296.8                             
     2 ProdTaloLargo
                    NS             0            -0             =             1 
     3 ProdAmarillas
                    NS             0            -0             =           0.4 
     4 ProdRojas    NS             0            -0             =           0.2 
     5 ProdCrisantemos
                    NS             0            -0             =          0.05 
     6 ProdRamoChico_Crisantemos
                    NS             0            -0             =          0.05 
     7 ProdRamoChico_Margaritas
                    NS             0            -0             =          0.03 
     8 ProdRamoMediano_Crisantemos
                    NS             0            -0             =          0.05 
     9 ProdRamoMediano_Margaritas
                    NS             0            -0             =          0.03 
    10 ProdRamoMediano_Rosas
                    NS             0            -0             =           0.2 
    11 ProdRamoGrande_Crisantemos
                    NS             0            -0             =          0.05 
    12 ProdRamoGrande_Margaritas
                    NS             0            -0             =          0.03 
    13 ProdRamoGrande_Rosas
                    NS             0            -0             =           0.2 
    14 CompraAtadoTaloLargo
                    NS             0            -0             =            -1 
    15 CompraAtadoAmarillas
                    NS             0            -0             =          -0.4 
    16 CompraAtadoRojas
                    NS             0            -0             =          -0.2 
    17 CompraAtadoCrisantemos
                    NS             0            -0             =         -0.05 
    18 CompraAtadoMargaritas
                    NS             0            -0             =         -0.03 
    19 DemandaTaloLargo
                    NU           650                         650             2 
    20 DemandaAmarillas
                    NU           350                         350           6.4 
    21 DemandaRojas NU           250                         250           6.6 
    22 DemandaCrisantemos
                    NU           600                         600           2.1 
    23 DemandaRamoChico
                    NU          1100                        1100          1.46 
    24 DemandaRamoMediano
                    NU           990                         990           2.8 
    25 DemandaRamoGrande
                    NU           625                         625          3.95 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 FLL          B            650             0               
     2 FLRM         NL             0             0                        -0.8 
     3 FLRG         NL             0             0                        -0.8 
     4 FAA          B           3150             0               
     5 FARM         NL             0             0                        -0.2 
     6 FARG         NL             0             0                        -0.2 
     7 FRR          B           1750             0               
     8 FRRM         B           1980             0               
     9 FRRG         B           3125             0               
    10 FCC          B          10800             0               
    11 FCRC         B           6600             0               
    12 FCRM         B           9900             0               
    13 FCRG         B           9375             0               
    14 FMRC         B           8800             0               
    15 FMRM         B           9900             0               
    16 FMRG         B           6250             0               
    17 AL           B           32.5             0               
    18 AA           B             63             0               
    19 AR           B          137.1             0               
    20 AC           B         366.75             0               
    21 AM           B          249.5             0               
    22 PL           B            650             0               
    23 PA           B            350             0               
    24 PR           B            250             0               
    25 PC           B            600             0               
    26 PRC          B           1100             0               
    27 PRM          B            990             0               
    28 PRG          B            625             0               

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 5.55e-17 on column 7
        max.rel.err = 3.97e-17 on column 7
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
