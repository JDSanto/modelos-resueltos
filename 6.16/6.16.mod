
var X_1 >= 0;
var X_2 >= 0;
var X_3 >= 0;

s.t. MIN_PROD: X_2 >= 40;
s.t. R_1: X_1 + 2 * X_2 + X_3 <= 100;
s.t. R_2: 3 * X_1 + 2 * X_2 + X_3 <= 120;
s.t. R_3: 2 * X_1 + X_2 + 3 * X_3 <= 120;

maximize z: 10 * X_1 + 5 * X_2 + 2 * X_3;