var X_1 >= 0;
var X_2 >= 0;
var X_3 >= 0;


maximize z: 4 * X_1 + 3 * X_2 + 2 * X_3;

s.t. MP: 1 * X_1 + 2 * X_2 + 1 * X_3 <= 36;
s.t. HM: 4 * X_1 + 2 * X_2 + 2 * X_3 <= 20;
s.t. DM: X_2 >= 2;