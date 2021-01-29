set REC;
set PROD;

param E_1 := 1;
param E_2 := 4;
param E_3 := 2;

param K_1 := 4;
param K_2 := 1;
param K_3 := 3;

param S_1 := 6;
param S_2 := 2;
param S_3 := 7;

var M{i in REC, j in PROD} >= 0;
var P{j in PROD} >= 0;
var U_UTIL{i in REC} >= 0;
var U_SOB{i in REC} >= 0;
var GANANCIA >= 0;
var COSTO >= 0;
var CAJA_EXC >= 0;
var CAJA_DEF >= 0;

s.t. VINCULACION_PROD_E_1: P['E'] * E_1 = M['HH', 'E'];
s.t. VINCULACION_PROD_K_1: P['K'] * K_1 = M['HH', 'K'];
s.t. VINCULACION_PROD_S_1: P['S'] * S_1 = M['HH', 'S'];

s.t. VINCULACION_PROD_E_2: P['E'] * E_2 = M['HM', 'E'];
s.t. VINCULACION_PROD_K_2: P['K'] * K_2 = M['HM', 'K'];
s.t. VINCULACION_PROD_S_2: P['S'] * S_2 = M['HM', 'S'];

s.t. VINCULACION_PROD_E_3: P['E'] * E_3 = M['MP', 'E'];
s.t. VINCULACION_PROD_K_3: P['K'] * K_3 = M['MP', 'K'];
s.t. VINCULACION_PROD_S_3: P['S'] * S_3 = M['MP', 'S'];

s.t. USO_RECURSO_TOTAL{i in REC}: U_UTIL[i] = sum{j in PROD} M[i, j];

s.t. TOTAL_HH: U_UTIL['HH'] + U_SOB['HH'] = 2500;
s.t. TOTAL_HM: U_UTIL['HM'] + U_SOB['HM'] = 1000;
s.t. TOTAL_MP: U_UTIL['MP'] + U_SOB['MP'] = 5000;

s.t. META_CAJA: GANANCIA - COSTO + 30000 - 45000 = CAJA_EXC - CAJA_DEF;

s.t. TOTAL_GANANCIA: GANANCIA = 4 * U_SOB['HH'] + 8 * U_SOB['HM'] + 2 * U_SOB['MP'] + 100 * P['E'] + 150 * P['K'] + 200 * P['S'];

s.t. TOTAL_COSTO: COSTO = 5 * U_UTIL['HH'] + 7 * U_UTIL['HM'] + 2 * U_UTIL['MP'];

s.t. CAJA_INICIAL_COMPRA_RECURSOS: COSTO <= 30000;

maximize z: GANANCIA - COSTO + 0.005 * CAJA_EXC - 0.01 * CAJA_DEF;

data;

set REC := 'HH' 'HM' 'MP';
set PROD := 'E' 'K' 'S';