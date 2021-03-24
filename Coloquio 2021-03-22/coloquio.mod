var X1 >= 0;
var X2 >= 0;

s.t. R1: 2 * X1 + 2 * X2 <= 80;
s.t. R2: X1 + 2 * X2 <= 50;
s.t. R3: X2 >= 10;

maximize z: 70*X1 + 60*X2;