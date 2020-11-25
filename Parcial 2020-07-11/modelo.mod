
set DULCES;
set PROMOS;
set DULCES_FULL;
set BARRAS;

param B := 15;
param DS1 := 20;
param DS2 := 30;
param m := 0.01;
param K := 100000;
param SP := 350;
param V11 := 400;
param V12 := 500;
param V2 := 420;

/* Variables */

var P{d in DULCES_FULL}, integer;
var P_P{p in PROMOS}, integer;
var C{d in BARRAS}, integer;
var M{p in PROMOS, d in DULCES_FULL}, integer;

var P_1_1, integer;
var P_1_2, integer;
var Y_1_sup8, binary;
var Y_330dulces, binary;
var Y_benef, binary;
var MP, integer;
var Y_menor{p in PROMOS}, binary;
var BENEF >= 0;
var COSTO >= 0;


s.t. VINC_PROMO_1: 7 * P_P[1] = M[1,'a'] + M[1,'b'] + M[1,'g'];
s.t. VINC_PROMO_2: 9 * P_P[2] = M[2,'a'] + M[2,'b'] + M[2,'g'];

s.t. VINC_M{d in DULCES}: P[d] = M[1,d] + M[2,d];

s.t. MIN_PROMO_1{d in DULCES}: M[1,'a'] + M[1,'b'] + M[1,'g'] <= 7 * M[1,d];

s.t. MIN_PROMO_2: 0.3 * (M[2,'a'] + M[2,'b'] + M[2,'g']) <= M[2,'a'];

s.t. VINC_BARRAS: M[1,'bar'] + M[2,'bar'] = P['bar'] + C['bar'];

s.t. VINC_BARRAS_P1: P_P[1] * 2 = M[1,'bar'];
s.t. VINC_BARRAS_P2: P_P[2] = M[2,'bar'];

s.t. VINC_330_MIN: 330 * Y_330dulces <= P['a'] + P['b'] + P['g'];
s.t. VINC_330_MAX: P['a'] + P['b'] + P['g'] <= 330 * Y_330dulces + 329 * (1 - Y_330dulces);

s.t. MAX_PROD_DULCES{i in DULCES, j in DULCES: j <> i}: P[i] <= 3 * P[j];

s.t. COND_PROD_BARRITAS: P['bar'] <= (1 - Y_330dulces) * B;

s.t. DEMANDA_MAX_PROMO_1: P_P[1] <= DS1;
s.t. DEMANDA_MAX_PROMO_2: P_P[2] <= DS2;

s.t. VINCULACION_BONUS_SP_MIN: Y_benef * SP <= P_P[1] + P_P[2];
s.t. VINCULACION_BONUS_SP_MAX: P_P[1] + P_P[2] <= (1 - Y_benef) * (SP - 1) + Y_benef * K;

s.t. UNICO_MENOR: Y_menor[1] + Y_menor[2] = 1;
s.t. MP_1_MIN: P_P[1] - K * (1 - Y_menor[1]) - K * (1 - Y_benef) <= MP;
s.t. MP_1_MAX: MP <= P_P[1];
s.t. MP_2_MIN: P_P[2] - K * (1 - Y_menor[2]) - K * (1 - Y_benef) <= MP;
s.t. MP_2_MAX: MP <= P_P[2];
s.t. MP_VINC: MP <= K * Y_benef;

s.t. VINC_P1: P_P[1] = P_1_1 + P_1_2;
s.t. P_1_1_MIN: Y_1_sup8 * 8 <= P_1_1;
s.t. P_1_1_MAX: P_1_1 <= 8;
s.t. P_1_2_MAX: P_1_2 <= Y_1_sup8 * K;


s.t. VINC_COSTO: COSTO = (P['a'] + P['b'] + P['g']) * 30 + P['bar'] * 2 + C['bar'] * 3;

maximize z: BENEF - COSTO;


var BENEF_1_premio >= 0;
var Y_menor_premio{p in PROMOS}, binary;
var MP2, integer;

s.t. UNICO_MENOR_PREMIO: Y_menor_premio[1] + Y_menor_premio[2] = 1;
s.t. MP2_1_MIN: P_P[1] - K * (1 - Y_menor_premio[1]) <= MP2;
s.t. MP2_1_MAX: MP2 <= P_P[1];
s.t. MP2_2_MIN: P_P[2] - K * (1 - Y_menor_premio[2]) <= MP2;
s.t. MP2_2_MAX: MP2 <= P_P[2];

s.t. BENEF_1_PREMIO_MAX_1: BENEF_1_premio <= P_P[1];
s.t. BENEF_1_PREMIO_MAX_2: BENEF_1_premio <= Y_menor_premio[2] * K;


s.t. VINC_BENEF: BENEF = P_1_1 * V11 + P_1_2 * V12 + P_P[2] * V2 + MP * 4 + BENEF_1_premio * 45 + Y_menor_premio[1] * 300;

data;

set DULCES := 'a' 'b' 'g';
set DULCES_FULL := 'a' 'b' 'g' 'bar';
set PROMOS := 1 2;
set BARRAS := 'bar'

end;
