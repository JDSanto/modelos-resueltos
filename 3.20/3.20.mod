/* Parametros */
param A := 120000000;
param B := 170000000;
param m := 0.001;

/* Variables */

# Produccion de aviones
var P_AV >= 0;
var T_AV_1 >= 0;
var T_AV_2 >= 0;
var T_AV_3 >= 0;
var I_AV, binary;

# Represa A
var T_A_1 >= 0;
var OP_A_1 >= 0;
var I_A, binary;

# Represa B
var T_B_1 >= 0;
var T_B_2 >= 0;
var OP_B_1 >= 0;
var OP_B_2 >= 0;
var I_B, binary;

# Turbinas
var T_TOTAL >= 0;

var COSTO_TOTAL >= 0;
var BENEF_TOTAL >= 0;

/* Restricciones */

s.t. MAX_HH_FUSELAJE: P_AV * 48000 <= 40000 * 12;
s.t. VINCULACION_TURBINAS_AVION: P_AV * 4 = T_AV_1 + T_AV_2 + T_AV_3;

s.t. VINCULACION_PROD_AVIONES_MIN: (5 + m) * I_AV <= P_AV;

s.t. VINCULACION_TURBINAS: T_TOTAL = T_A_1 + T_B_1 + T_B_2 + T_AV_1 + T_AV_2 + T_AV_3;

s.t. MAX_TURBINAS_1: (T_A_1 + T_B_1 + T_AV_1) * 24000 <= 2 * 100 * 8 * 90;
s.t. MAX_TURBINAS_2: (T_B_2 + T_AV_2) * 24000 <= 2 * 100 * 8 * 180;
s.t. MAX_TURBINAS_3: (T_AV_3) * 24000 <= 2 * 100 * 8 * 95;

s.t. TURBINAS_REPRESA_A_MIN: 8 * I_A <= T_A_1;
s.t. TURBINAS_REPRESA_A_MAX: T_A_1 <= 8 * I_A;

s.t. TURBINAS_REPRESA_B_MIN: 10 * I_B <= T_B_1 + T_B_2;
s.t. TURBINAS_REPRESA_B_MAX: T_B_1 + T_B_2 <= 10 * I_B;

s.t. OP_A_MIN: 50000 * I_A <= OP_A_1;
s.t. OP_A_MAX: OP_A_1 <= 50000 * I_A;

s.t. OP_B_MIN: 80000 * I_B <= OP_B_1 + OP_B_2;
s.t. OP_B_MAX: OP_B_1 + OP_B_2 <= 80000 * I_B;

s.t. OP_TOTAL_1_MAX: OP_A_1 + OP_B_1 <= 800 * 90;
s.t. OP_TOTAL_2_MAX: OP_B_2 <= 800 * 180;

s.t. VINCULACION_COSTO_TOTAL: COSTO_TOTAL = T_TOTAL * 2000000 + I_A * (70000000 + 15000000) + I_B * (110000000 + 15000000) + (1 - I_AV) * 1000000 + P_AV * 3000000;

s.t. VINCULACION_BENEF_TOTAL: BENEF_TOTAL = I_A * A + I_B * B + P_AV * 16000000;

/* Funcional */
maximize z: BENEF_TOTAL - COSTO_TOTAL;