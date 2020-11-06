/* Parametros */
param M := 100000;
param m := 0.0001;

/* Variables */

# Compra de productos
var C_A >= 0;
var C_B >= 0;
var C_C >= 0;

# Venta de productos
var V_A >= 0;
var V_B >= 0;
var V_C >= 0;

# Suma de intervalos
var V_A_1 >= 0;
var V_A_2 >= 0;
var V_A_3 >= 0;

var C_C_B_1 >= 0;
var C_C_B_2 >= 0;

var C_C_1 >= 0;
var C_C_2 >= 0;
var C_C_3 >= 0;

# Variables de costo por producto
var COSTO_A >= 0;
var COSTO_B >= 0;
var COSTO_C >= 0;

# Variables de beneficio por producto
var BENEF_A >= 0;
var BENEF_B >= 0;
var BENEF_C >= 0;

# Variables indicadoras
var I_A_1, binary;
var I_A_2, binary;
var I_A_3, binary;

var I_C_1, binary;
var I_C_2, binary;
var I_C_3, binary;

var I_C_B_1, binary;
var I_C_B_2, binary;

var I_B_MENOR, binary;

/* Restricciones */

s.t. INTERVALO_VA_1_MIN: 0 <= V_A_1;
s.t. INTERVALO_VA_1_MAX: V_A_1 <= (500 - m) * I_A_1;
s.t. INTERVALO_VA_2_MIN: 500 * I_A_2 <= V_A_2;
s.t. INTERVALO_VA_2_MAX: V_A_2 <= 1000 * I_A_2;
s.t. INTERVALO_VA_3_MIN: (1000 + m) * I_A_3 <= V_A_3;
s.t. INTERVALO_VA_3_MAX: V_A_3 <= M * I_A_3;
s.t. INTERVALO_UNICO_VA: I_A_1 + I_A_2 + I_A_3 = 1;
s.t. SUMA_V_A: V_A = V_A_1 + V_A_2 + V_A_3;

s.t. INTERVALO_CC_1_MIN: 0 <= C_C_1;
s.t. INTERVALO_CC_1_MAX: C_C_1 <= (1000 - m) * I_C_1;
s.t. INTERVALO_CC_2_MIN: 1000 * I_C_2 <= C_C_2;
s.t. INTERVALO_CC_2_MAX: C_C_2 <= 3000 * I_C_2;
s.t. INTERVALO_CC_3_MIN: (3000 + m) * I_C_3 <= C_C_3;
s.t. INTERVALO_CC_3_MAX: C_C_3 <= M * I_C_3;
s.t. INTERVALO_UNICO_CC: I_C_1 + I_C_2 + I_C_3 = 1;
s.t. SUMA_C_C: C_C = C_C_1 + C_C_2 + C_C_3;

s.t. INTERVALO_C_2500_MIN: (2500 + m) * I_C_B_2 <= C_C;
s.t. INTERVALO_C_2500_MAX: C_C <= I_C_B_1 * 2500 + I_C_B_2 * M;
s.t. INTERVALO_UNICO_CB: I_C_B_1 + I_C_B_2 = 1;
s.t. INTERVALO_CB_1_MAX: C_C_B_1 <= M * I_C_B_1;
s.t. INTERVALO_CB_2_MAX: C_C_B_2 <= M * I_C_B_2;
s.t. SUMA_C_B: C_B = C_C_B_1 + C_C_B_2;

s.t. B_MENOR_C_MIN: - M * I_B_MENOR <= V_B - V_C;
s.t. B_MENOR_C_MAX: V_B - V_C <= M * (1 - I_B_MENOR);

s.t. MAX_VENTAS_A: V_A <= 2000;
s.t. MAX_VENTAS_B: V_B <= 3000;
s.t. MAX_VENTAS_C: V_C <= 4000;

s.t. CONDICIONAL_VENTAS_A_1: V_A <= (V_B - m) + I_B_MENOR * M;
s.t. CONDICIONAL_VENTAS_A_2: V_A <= I_B_MENOR * M;

s.t. STOCK_INICIAL_A: V_A = C_A + 50;
s.t. STOCK_INICIAL_B: V_B = C_B + 100;
s.t. STOCK_INICIAL_C: V_C = C_C + 300;

s.t. COSTO_FINAL_A: COSTO_A = 3 * C_A;
s.t. COSTO_FINAL_B: COSTO_B = C_C_B_1 * 4 + 3 * C_C_B_2;
s.t. COSTO_FINAL_C: COSTO_C = 6 * C_C_1 + 5 * C_C_2 + 4 * C_C_3;

s.t. BENEF_FINAL_A: BENEF_A = 20 * V_A_1 + 18 * V_A_2 + 15 * V_A_3;
s.t. BENEF_FINAL_B: BENEF_B = 35 * V_B;
s.t. BENEF_FINAL_C: BENEF_C = 40 * V_C;


/* Funcional */
maximize z: BENEF_A + BENEF_B + BENEF_C - COSTO_A - COSTO_B - COSTO_C;
