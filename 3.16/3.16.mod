/* Parametros */

param M := 10000;

# Costo de ir de una region "i" a otra region "j"
param D{i in 0..6, j in 0..6};

# Diferencia de temperatura al llegar a la región T.
param T{i in 0..6};

/* Variables */

# Se elije el camino de "i" a "j"
var Y{i in 0..6, j in 0..6}, binary;

# Numero de secuencia en la cual la region "i" es visitada
var U{i in 0..6}, integer;

# Temperatura cuando el contenedor pasa por la región "i"
var X{i in 0..6} >= 0;


/* Restricciones */

# A partir de cada región "i" solo se puede ir a una sola región "j"
s.t. MAX_DESTINO{i in 0..6}: sum{j in 0..6: j <> i} Y[i,j] = 1;

# Cada región "j" se visitó desde una sola región "i"
s.t. MAX_ORIGEN{j in 0..6}: sum{i in 0..6: i <> j} Y[i,j] = 1;

# Restringir los numeros de secuencia
s.t. SEQ{i in 1..6, j in 1..6: i <> j}: U[i] - U[j] + 6 * Y[i,j] <= 5;

# Vinculacion temperatura y orden de visita
s.t. VINC_TEMP_MIN{i in 0..6, j in 1..6: i <> j}: -M * (1 - Y[i,j]) + T[j] <= X[j] - X[i];
s.t. VINC_TEMP_MAX{i in 0..6, j in 1..6: i <> j}: X[j] - X[i] <= T[j] + M * (1 - Y[i,j]);

# Temperatura nunca puede bajar de cero grados
s.t. TEMP_INICIAL: X[0] = 0;

minimize z: sum{i in 0..6, j in 0..6: j <> i} Y[i,j] * D[i,j];


data;

param D:
		0	1	2	3	4	5	6 :=
	0	0	4	14	22	17	10	5
	1	4	0	25	14	22	23	4
	2	14	14	0	25	4	20	1
	3	22	4	4	0	21	19	12
	4	17	11	18	4	0	13	13
	5	10	10	14	4	11	0	4
	6	5	8	6	16	9	20	0;

param T :=
	0	0
	1	-1
	2	3
	3	6
	4	-8
	5	5
	6	9;