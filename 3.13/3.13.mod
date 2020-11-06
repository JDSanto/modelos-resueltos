/* Parametros */

# Costo de ir de un comercio "i" a un comercio "j"
param C{i in 0..5, j in 0..5};

/* Variables */

# Se elije el camino de "i" a "j"
var Y{i in 0..5, j in 0..5}, binary;

# Numero de secuencia en la cual el comercio "i" es visitado
var U{i in 0..5}, integer;


/* Restricciones */

# A partir de cada comercio "i" solo se puede ir a un solo comercio "j"
s.t. MAX_DESTINO{i in 0..5}: sum{j in 0..5: j <> i} Y[i,j] = 1;

# Cada comercio "j" se visitó desde un solo comercio "i"
s.t. MAX_ORIGEN{j in 0..5}: sum{i in 0..5: i <> j} Y[i,j] = 1;

# Restringir los numeros de secuencia
s.t. SEQ{i in 1..5, j in 1..5: i <> j}: U[i] - U[j] + 5 * Y[i,j] <= 4;

# Corredor no puede ir al comercio 4 sin pasar antes por el 3:
s.t. ORDEN_3_4: U[3] <= U[4];

# Antes de ir a 2, deberia ir al 3 y 5:
s.t. ORDEN_3_2: U[3] <= U[2];
s.t. ORDEN_5_2: U[5] <= U[2];


/* Funcional */

minimize z: sum{i in 0..5, j in 0..5: j <> i} Y[i,j] * C[i,j] * 10;


/* Valores de parametros */

data;
param C : 0  1  2  3  4  5 :=
      0   0  0  0  0  0  0
      1   0  0  7  7  5  8
      2   0  8  0  12 13 6
      3   0  6  10 0  9  5
      4   0  4  15 8  0  14
      5   0  9  7  7  12 0;