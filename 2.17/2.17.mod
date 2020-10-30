/* Parametros */
param A := 450;
param C := 360;
param HORAS := 8;

/* Variables viernes */
var V_R >= 0;
var V_O >= 0;
var V_M >= 0;
var V_L >= 0;

/* Variables sabado */
var S_R_R >= 0;
var S_R_O >= 0;
var S_R_M >= 0;
var S_R_L >= 0;

var S_M_R >= 0;
var S_M_O >= 0;
var S_M_M >= 0;
var S_M_L >= 0;

var S_L_R >= 0;
var S_L_O >= 0;
var S_L_M >= 0;
var S_L_L >= 0;

/* Variables domingo */
var D_R_R >= 0;
var D_R_M >= 0;
var D_R_L >= 0;

var D_O_R >= 0;
var D_O_M >= 0;
var D_O_L >= 0;

var D_M_R >= 0;
var D_M_M >= 0;
var D_M_L >= 0;

var D_L_R >= 0;
var D_L_M >= 0;
var D_L_L >= 0;

/* Restricciones */

s.t. MAXEMP_V: V_R + V_O + V_M + V_L <= 18;
s.t. MAXEMP_S: S_R_R + S_R_O + S_R_M + S_R_L + S_M_R + S_M_O + S_M_M + S_M_L + S_L_R + S_L_O + S_L_M + S_L_L <= 18;
s.t. MAXEMP_D: D_R_R + D_R_M + D_R_L + D_O_R + D_O_M + D_O_L + D_M_R + D_M_M + D_M_L + D_L_R + D_L_M + D_L_L <= 18;

/* Vinculacion tareas viernes/sabado */
s.t. VINC_REP_S: V_R = S_R_R + S_M_R + S_L_R;
s.t. VINC_ORD_S: V_O = S_R_O + S_M_O + S_L_O;
s.t. VINC_MAR_S: V_M = S_R_M + S_M_M + S_L_M;
s.t. VINC_LIB_S: V_L = S_R_L + S_M_L + S_L_L;

/* Vinculacion tareas sabado/domingo */
s.t. VINC_REP_D: S_R_R + S_R_O + S_R_M + S_R_L = D_R_R + D_O_R + D_M_R + D_L_R;
s.t. VINC_MAR_D: S_M_R + S_M_O + S_M_M + S_M_L = D_R_M + D_O_M + D_M_M + D_L_M;
s.t. VINC_LIB_D: S_L_R + S_L_O + S_L_M + S_L_L = D_R_L + D_O_L + D_M_L + D_L_L;

/* Mínima tarea a realizar el viernes */
s.t. MIN_REP_V: V_R * 15 * HORAS >= A;
s.t. MIN_ORD_V: V_O * 30 * HORAS >= 300;
s.t. MIN_MAR_V: V_M * 35 * HORAS >= 150;

/* Mínima tarea a realizar el sábado */
s.t. MIN_REP_S: (S_R_R * 1.1 + S_R_O + S_R_M) * 15 * HORAS >= 500;
s.t. MIN_MAR_S: (S_M_R + S_M_O + S_M_M * 1.1) * 35 * HORAS >= 139;

/* Mínima tarea a realizar el domingo */
s.t. MIN_REP_D: (D_R_R * 1.1 + D_R_M) * 15 * HORAS >= 350;
s.t. MIN_ORD_D: (D_O_R + D_O_M) * 30 * HORAS >= C;
s.t. MIN_MAR_D: (D_M_R + D_M_M * 1.1) * 35 * HORAS >= C;

/* Funcional */
minimize z: (V_R + V_O + V_M + S_R_R + S_R_O + S_R_M + D_R_R + D_R_M + D_R_L + D_O_R + D_O_M + D_O_L + D_M_R + D_M_M + D_M_L) * 12;