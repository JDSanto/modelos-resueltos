
/* Variables */
var P1 >= 0;
var P2 >= 0;
var V1 >= 0;
var V2 >= 0;

/* Constantes */

/* Funcional */
maximize z: (V1 + V2) * 30;

/* Restricciones */
s.t. VentasMes1Min: V1 >= 70;
s.t. VentasMes2Min: V2 >= 110;

s.t. StockMes1: V1 <= P1;
s.t. StockMes2: V2 <= P2 + (P1 - V1);

s.t. MateriaPrimaMes1: 150 >= 1.5 * P1;
s.t. MateriaPrimaMes2: 300 - 1.5 * P1 >= 1.5 * P2;
s.t. HorasMaquinaMes1: 180 >= 2 * P1;
s.t. HorasMaquinaMes2: 180 >= 2 * P2;
