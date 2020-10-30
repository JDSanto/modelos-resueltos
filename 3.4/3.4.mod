/* Variables */

# Personal elegido
var X1, binary;
var X2, binary;
var X3, binary;
var X4, binary;
var X5, binary;
var X6, binary;
var X7, binary;
var X8, binary;
var X9, binary;
var X10, binary;
var X11, binary;
var X12, binary;

# Indicadora de personal autoritario
var CON_AUT, binary;

# Indicadora de personal partidario del trabajo de grupo
var CON_PRT, binary;

# Indicadora del equipo formado por Vidal y Smith
var CON_7_11, binary;

# Indicadora de dos o mas benevolentes
var CON_MAS_BEN, binary;

/* Restricciones */

# Restringir valor de indicadora de personal autoritario
s.t. INDICADORA_CON_AUT_MIN: CON_AUT <= X1 + X5 + X7;
s.t. INDICADORA_CON_AUT_MAX: X1 + X5 + X7 <= 3 * CON_AUT;

# Restringir valor de indicadora de personal partidario
s.t. INDICADORA_CON_PRT_MIN: CON_PRT <= X2 + X6;
s.t. INDICADORA_CON_PRT_MAX: X2 + X6 <= 2 * CON_PRT;

# Restringir valor del equipo formado por Vidal y Smith
s.t. INDICADORA_CON_7_11_MIN: 2 * CON_7_11 <= X7 + X11;
s.t. INDICADORA_CON_7_11_MAX: X7 + X11 <= 1 + CON_7_11;

# Restringir valor de indicadora de al menos dos benevolentes
s.t. INDICADORA_CON_MAS_BEN_MIN: 2 * CON_MAS_BEN <= X4 + X8 + X11 + X12;
s.t. INDICADORA_CON_MAS_BEN_MAX: X4 + X8 + X11 + X12 <= 1 + 3 * CON_MAS_BEN;

# Equipo de 6 personas
s.t. CANT_EQUIPO: X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + X12 = 6;

# Conflicto entre autoritarios y partidarios del trabajo de grupo
s.t. CONFLICTO_CARACTER: CON_AUT + CON_PRT <= 1;

# Conflicto entre Marino (2) y Vidal (11)
s.t. CONFLICTO_2_11: X2 + X11 <= 1;

# Conflicto entre Bettega (3) y Marotta (4)
s.t. CONFLICTO_3_4: X3 + X4 <= 1;

# Restriccion mentor Marotta (4) y Lima (6)
s.t. MENTOR_4_6: X6 <= X4;

s.t. MINIMO_INGENIEROS: 1 <= X3 + X9 + X10;
s.t. MINIMO_QUIMICOS: 1 <= X2 + X7;
s.t. MINIMO_CONTADORES: 2 <= X1 + X4 + X5 + X8 + X11;

s.t. MAXIMO_CONTADORES: X1 + X4 + X5 + X8 + X11 <= 3 + CON_7_11;


minimize z: X1 * 2500 + X2 * 2000 + X3 * 1800 + X4 * 3000 + X5 * 2500 + X6 * 1500 + X7 * 3500 + X8 * 4000 + X9 * 2800 + X10 * 3000 + X11 * 2500 + X12 * 5000 - CON_MAS_BEN * 100;