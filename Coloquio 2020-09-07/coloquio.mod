var X1 >= 0;
var X2 >= 0;

s.t. R1: 2*X1 + 2*X2 <= 800;
s.t. R2: X1 - X2 <= 200;
s.t. R3: X2 >= 100;

maximize z: 19 * X1 + 20 * X2;