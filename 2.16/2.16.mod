/* Variables */

/* Producción trimestral */ 
var P0 = 6000;
var P1 >= 0;
var P2 >= 0;
var P3 >= 0;
var P4 >= 0;

/* Stock a fin de cada trimestre */
var SF0 = 0;
var SF1 >= 0;
var SF2 >= 0;
var SF3 >= 0;
var SF4 = 1000;

/* Exceso de diferencia de producción trimestral */
var E1 >= 0;
var E2 >= 0;
var E3 >= 0;
var E4 >= 0;

/* Defecto de diferencia de producción trimestral */
var D1 >= 0;
var D2 >= 0;
var D3 >= 0;
var D4 >= 0;

/* Ventas por trimestre */
var V1 = 9000;
var V2 = 24000;
var V3 = 20000;
var V4 = 7000;


/* Restricciones */

/* Relación ventas y cantidad producida de cada trimestre */
s.t. TRIM1: V1 + SF1 = P1 + SF0;
s.t. TRIM2: V2 + SF2 = P2 + SF1;
s.t. TRIM3: V3 + SF3 = P3 + SF2;
s.t. TRIM4: V4 + SF4 = P4 + SF3;

/* Relación por la diferencia de producción trimestral */
s.t. DIFPROD1: E1 - D1 = P1 - P0;
s.t. DIFPROD2: E2 - D2 = P2 - P1;
s.t. DIFPROD3: E3 - D3 = P3 - P2;
s.t. DIFPROD4: E4 - D4 = P4 - P3;

/* Restricción de almacenamiento */
s.t. STOCK1: SF1 <= 5000;
s.t. STOCK2: SF2 <= 5000;
s.t. STOCK3: SF3 <= 5000;
s.t. STOCK4: SF4 <= 5000;

/* Funcional */
minimize z: (E1 + E2 + E3 + E4) + (D1 + D2 + D3 + D4) * 0.5;

end;