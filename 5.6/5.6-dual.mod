
var Y_1 >= 0;
var Y_2 >= 0;
var Y_3 >= 0;
var Y_4 >= 0;
var Y_5 >= 0;

s.t. COND1: 5 * Y_1 + 1.6 * Y_3 >= 10;
s.t. COND2: 6 * Y_1 + 1.8 * Y_4 - Y_5 >= 15;
s.t. COND3: 4 * Y_2 + 1.8 * Y_4 - Y_5 >= 15;
s.t. COND4: 4 * Y_2 + 1.2 * Y_3 >= 18;

minimize z: 80 * Y_1 + 80 * Y_2 + 20 * Y_3 + 36 * Y_4 - 10 * Y_5;