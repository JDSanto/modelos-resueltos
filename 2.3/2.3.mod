set MAT;
set PROD;

var M{i in MAT, j in PROD} >= 0;
var P{j in PROD} >= 0;

s.t. LIMITE_AZUCAR: M['AZUCAR', 'CANDY'] + M['AZUCAR', 'SWEETY'] <= 100;
s.t. LIMITE_NUECES: M['NUECES', 'CANDY'] + M['NUECES', 'SWEETY'] <= 20;
s.t. LIMITE_CHOCOLATE: M['CHOCOLATE', 'CANDY'] + M['CHOCOLATE', 'SWEETY'] <= 30;

s.t. VINCULACION_PROD{j in PROD}: P[j] = sum{i in MAT} M[i, j];

s.t. PROP_NUECES_CANDY: P['CANDY'] * 0.2 <= M['NUECES', 'CANDY'];
s.t. PROP_NUECES_SWEETY: P['SWEETY'] * 0.1 <= M['NUECES', 'SWEETY'];
s.t. PROP_CHOCOLATE_SWEETY: P['SWEETY'] * 0.1 <= M['CHOCOLATE', 'SWEETY'];

maximize z: 25 * P['CANDY'] + 20 * P['SWEETY'];

data;

set MAT := 'AZUCAR' 'NUECES' 'CHOCOLATE';
set PROD := 'CANDY' 'SWEETY';