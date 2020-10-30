/* Parametros */

param M := 10000;
param m := 0.001;
param X := 75;

/* Variables */

# Toneladas de aceite a usar
var R_A >= 0;
var R_B >= 0;
var R_C >= 0;
var R_D >= 0;
var R_E >= 0;

# Variables indicadoras de que aceites crudos se usan
var U_A, binary;
var U_B, binary;
var U_C, binary;
var U_D, binary;
var U_E, binary;

# Variables de horas dentro del intervalo de tiempo de refinado
# Y sus respectivas variables indicadoras
var H_1 >= 0;
var I_1, binary;

var H_2 >= 0;
var I_2, binary;

var H_3 >= 0;
var I_3, binary;

var H_4 >= 0;
var I_4, binary;

# Horas maquina utilizadas:
var H >= 0;

# Total a producir
var A >= 0;

/* Restricciones */

# Restricciones de las indicadoras de intervalos
s.t. INTERVALO_1_MIN: 0 <= H_1;
s.t. INTERVALO_1_MAX: H_1 <= (100 - m) * I_1;

s.t. INTERVALO_2_MIN: 100 * I_2 <= H_2;
s.t. INTERVALO_2_MAX: H_2 <= 200 * I_2;

s.t. INTERVALO_3_MIN: (200 + m) * I_3 <= H_3;
s.t. INTERVALO_3_MAX: H_3 <= (500 - m) * I_3;

s.t. INTERVALO_4_MIN: (500 + m) * I_4 <= H_4;
s.t. INTERVALO_4_MAX: H_4 <= M * I_4;

# Restricciones de las indicadoras de aceites
# Si se usa un aceite crudo, se usan 20 ton como minimo
s.t. USA_A_MIN: U_A * 20 <= R_A;
s.t. USA_A_MAX: R_A <= U_A * M;

s.t. USA_B_MIN: U_B * 20 <= R_B;
s.t. USA_B_MAX: R_B <= U_B * M;

s.t. USA_C_MIN: U_C * 20 <= R_C;
s.t. USA_C_MAX: R_C <= U_C * M;

s.t. USA_D_MIN: U_D * 20 <= R_D;
s.t. USA_D_MAX: R_D <= U_D * M;

s.t. USA_E_MIN: U_E * 20 <= R_E;
s.t. USA_E_MAX: R_E <= U_E * M;

# Vinculacion aceite comestible producido:
s.t. ACEITE_COMESTIBLE: A = R_A + R_B + R_C + R_D + R_E;

# Vinculacion de horas de maquina utilizadas:
s.t. HORAS_TOTAL: H = H_1 + H_2 + H_3 + H_4;

# Vinculacion de horas de maquina refinadora con aceite refinado:
s.t. HORAS_REFINAMIENTO: H = A * X / 60;

# El aceite comestible no debe contener mas de 3 aceites crudos:
s.t. MAX_ACEITES: U_A + U_B + U_C + U_D + U_E <= 3;

# Utilizar C si se usa A o B
s.t. USAR_C_SI_A: U_A - U_C <= 0;
s.t. USAR_C_SI_B: U_B - U_C <= 0;

# Restricciones de maquinaria:
s.t. MAQUINA_LINEA_1: R_A + R_B <= 200;
s.t. MAQUINA_LINEA_2: R_C + R_D + R_E <= 250;

# Restriccion de dureza:
s.t. DUREZA_MIN: A * 3 <= R_A * 8.8 + R_B * 6.1 + R_C * 2.0 + R_D * 4.2 + R_E * 5.0;
s.t. DUREZA_MAX: R_A * 8.8 + R_B * 6.1 + R_C * 2.0 + R_D * 4.2 + R_E * 5.0 <= A * 6;


/* Funcional */

maximize z: A * 150 
    - R_A * 110 - R_B * 120 - R_C * 130 - R_D * 110 - R_E * 115 
    - I_1 * 5000 - I_2 * 8000 - I_3 * 9500 - I_4 * 10000;