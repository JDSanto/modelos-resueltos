/* Variables */

var P_A >= 0;
var P_B >= 0;
var P_C >= 0;

var C_choc >= 0;
var C_ddl >= 0;
var C_crema >= 0;

var U_harina >= 0;
var U_azucar >= 0;
var U_choc >= 0;
var U_ddf >= 0;
var U_cob >= 0;
var U_huevos >= 0;

/* Restricciones */

# Vinculacion de tortas con sus ingredientes
s.t. VINC_TORTA_HARINA: (1 * P_A + 1.5 * P_B + 0.8 * P_C ) = U_harina;
s.t. VINC_TORTA_AZUCAR: (0.5 * P_A + 0.6 * P_B + 0.4 * P_C) = U_azucar;
s.t. VINC_TORTA_HUEVOS: (6 * P_A + 6 * P_B + 4 * P_C) = U_huevos;
s.t. VINC_TORTA_DDF: (0.2 * P_A + 0.4 * P_C) = U_ddf;
s.t. VINC_TORTA_CHOC: (0.4 * P_A + 0.5 * P_B) = U_choc;
s.t. VINC_TORTA_COB: (0.2 * P_A + 0.25 * P_B) = U_cob;


# Vinculacion de la cobertura usada con su composicion
s.t. VINC_COBERTURA_TOTAL: U_cob = C_choc + C_ddl + C_crema;
s.t. VINC_COBERTURA_CHOC: U_cob * 0.2 = C_choc;
s.t. VINC_COBERTURA_DDL_MIN: U_cob * 0.4 <= C_crema;
s.t. VINC_COBERTURA_DDL_MAX: U_cob * 0.6 >= C_crema;

# La restricción de materia prima semanal:
s.t. MAX_HARINA: U_harina <= 500;
s.t. MAX_AZUCAR: U_azucar <= 200;
s.t. MAX_CHOC: U_choc + C_choc <= 120;
s.t. MAX_HUEVOS: U_huevos <= 150 * 12;
s.t. MAX_DDF: U_ddf <= 40;
s.t. MAX_CREMA: C_crema <= 30;
s.t. MAX_DDL: C_ddl <= 15;
s.t. MAX_CAJAS: (P_A + P_B + P_C) <= 300;


/* Funcional */

maximize z: 20 * P_A + 25 * P_B + 12 * P_C;