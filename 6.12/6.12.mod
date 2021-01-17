
var X_1 >= 0;
var X_2 >= 0;
var X_3 >= 0;

s.t. RECURSO_1: 2 * X_1 + 1 * X_2 + 3 * X_3 <= 13;
s.t. RECURSO_2: 1 * X_1 + 2 * X_2 + 3 * X_3 <= 26;
s.t. RECURSO_3: 1 * X_1 - 2 * X_2 + 3 * X_3 <= 4;


maximize z: 4 * X_1 + 5 * X_2 + 6 * X_3;