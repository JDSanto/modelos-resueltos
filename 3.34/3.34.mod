/* Parametros */

param M := 100000;
param K := 0.0001;
param MAX_MESES := 25;

set EDIFICIOS := {1..4};
set EQUIPOS;

param C{i in EDIFICIOS, j in EQUIPOS};

param MG{i in EDIFICIOS, j in EQUIPOS};

param ED{i in EDIFICIOS};

param X;

/* Variables */

var I{i in EDIFICIOS, j in EQUIPOS} >= 0;
var F{i in EDIFICIOS, j in EQUIPOS} >= 0;

var Y_ANULO{j in EQUIPOS, i in EDIFICIOS, k in EDIFICIOS: i <> k}, binary;

var D{m in -1..MAX_MESES} >= 0;

var Y_INICIO{i in EDIFICIOS, j in EQUIPOS, m in -1..MAX_MESES}, binary;

var FINAL >= 0;

/* Restricciones */

s.t. VINCULACION_I_F{i in EDIFICIOS, j in EQUIPOS}: F[i,j] = I[i,j] + MG[i,j];

s.t. TAREAS_EN_ORDEN_A_B{i in EDIFICIOS, j in EQUIPOS, k in EQUIPOS: j < k}: F[i,'A'] <= I[i,'B'];
s.t. TAREAS_EN_ORDEN_A_G{i in EDIFICIOS, j in EQUIPOS, k in EQUIPOS: j < k}: F[i,'A'] <= I[i,'G'];
s.t. TAREAS_EN_ORDEN_B_G{i in EDIFICIOS, j in EQUIPOS, k in EQUIPOS: j < k}: F[i,'B'] <= I[i,'G'];

s.t. VINCULACION_FINAL{i in EDIFICIOS, j in EQUIPOS}: F[i,j] <= FINAL;

s.t. UNICA_TAREA_POR_EDIFICIO_1{i in EDIFICIOS, k in EDIFICIOS, j in EQUIPOS: i <> k}: F[i,j] <= I[k,j] + M * Y_ANULO[j,i,k];
s.t. INDICADORA_UNICA_TAREA{j in EQUIPOS, i in EDIFICIOS, k in EDIFICIOS: i <> k}: Y_ANULO[j,i,k] + Y_ANULO[j,k,i] = 1;

s.t. VINCULACION_MES_INICIO_TAREA_MIN{i in EDIFICIOS, j in EQUIPOS, m in 0..MAX_MESES}: (m - K) * Y_INICIO[i,j,m] - M*(1-Y_INICIO[i,j,m]) <= I[i,j];
s.t. VINCULACION_MES_INICIO_TAREA_MAX{i in EDIFICIOS, j in EQUIPOS, m in 0..MAX_MESES}: I[i,j] <= (m + K) * Y_INICIO[i,j,m] + M*(1-Y_INICIO[i,j,m]);
s.t. MES_INICIAL_TAREA{i in EDIFICIOS, j in EQUIPOS}: Y_INICIO[i,j,-1] = 0;

s.t. UNICO_MES_DE_INICIO{i in EDIFICIOS, j in EQUIPOS}: sum{m in -1..MAX_MESES} Y_INICIO[i,j,m] = 1;

s.t. CAJA_INICIAL: D[-1] = X;

s.t. DIFERENCIA_CAJA{m in 0..MAX_MESES}: D[m] = D[m-1] + (sum{j in EDIFICIOS} ED[j] * Y_INICIO[j, 'G', m-1]) - (sum{j in EDIFICIOS, k in EQUIPOS} C[j,k] * Y_INICIO[j, k, m]);

minimize z: FINAL;

data;

set EQUIPOS := 'A' 'B' 'G';


param C:
        'A'  'B'   'G'   :=
    1   10   90     7
    2   14   19     5
    3   14   11     26
    4   10   17     3;


param MG:
        'A' 'B' 'G' :=
    1   5   2   6
    2   4   3   3
    3   3   4   2
    4   2   5   3;

param ED :=
    1   45
    2   40
    3   50
    4   47;


param X := 95;

end;
