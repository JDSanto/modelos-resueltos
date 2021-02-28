# 1. Enunciado

A partir del enunciado del 6.2, responder.

# 2. Inciso A

> ¿Cuál sería el valor del Z y el plan de producción en la solución óptima si el beneficio del producto 1 ahora fuera de 5,50 pesos? Indique de dónde salen sus cálculos.

Es posible que el óptimo cambie, por lo que es necesario analizar el rango de variación del coeficiente del producto (C1) en el funcional.

\begin{table}[H]
\centering
\begin{tabular}{|c|c|c|c|c|c|c|c|c|}
\hline
\multicolumn{3}{|c|}{}                 & C1 & 3  & 2    &          &    &             \\ \hline
Ck          & Xk         & Bk          & A1 & A2 & A3   & A4       & A5 & A6          \\ \hline
C1          & X1         & 10/3        & 1  & 0  & 1/3  & -1/3     & 0  & 1/3         \\ \hline
3           & X2         & 10/3        & 0  & 1  & 1/3  & 2/3      & 0  & -1/6        \\ \hline
0           & X5         & 4/3         & 0  & 0  & 1/3  & 2/3      & 1  & -1/6        \\ \hline
\multicolumn{3}{|c|}{Z = 10 + C1*10/3} & 0  & 0  & C1/3 & 2 - C1/3 & 0  & -1/2 + C1/3 \\ \hline
\end{tabular}
\end{table}

Por ser un problema de maximización, todo $Z_j - C_j$ debe ser mayor o igual a cero:
$$C_1 / 3 \ge 0 \quad \Rightarrow \quad C_1 \ge 0$$
$$2 - C_1 / 3 \ge 0 \quad \Rightarrow \quad C_1 \le 6$$
$$-1/2 + C_1 / 3 \ge 0 \quad \Rightarrow \quad C_1 \ge 3/2$$

El rango de variación es de $[3/2, 6]$. Se puede modificar el coeficiente a 5.50 sin que cambie el óptimo.

El nuevo valor de Z será de 85/3 y el plan de producción es el mismo que el original

# 3. Inciso B

> ¿Cuánto debería aumentar como mínimo el beneficio del producto 3 para que conviniera empezar a fabricarlo?  Justifique

De la misma forma que en el inciso anterior, se deja constante el coeficiente correspondiente al producto 3 (C3) y se analiza su rango de variación. En este caso, solo $Z_3 - C_3$ depende de este coeficiente.
$$7/3 - C_3 \ge 0 \quad \Rightarrow \quad C_3 \le 7/3$$

Cuando $C_3$ es igual a $7/3$, existe una solución óptima alternativa donde se produce el producto 3. Para llegar a dicha tabla entraría a la base la variable X3.

Entonces para que sea conveniente empezar a fabricar el producto 3, su ganancia debe aumentar al menos $1/3$. O en otras palabras, su coeficiente debería ser de al menos $7/3$

**Alternativamente, y más rápido**: Se analiza el costo de oportunidad del producto 3 ($Z_3 - C_3$). Este indica en cuanto empeoraría el funcional si tenemos la obligación de fabricar una unidad de ese producto. Con un $Z_3 - C_3 = 1/3$, será necesario que el coeficiente $C_3$ aumente al menos 1/3 para que sea conveniente fabricarlo.

# 4. Inciso C

> Si nos ofrecen la oportunidad de pagar para disminuir la demanda mínima del producto 2 de dos unidades a una unidad ¿sería conveniente?   Si lo fuera ¿cuánto pagaríamos para disminuir  la demanda   mínima de  producto  2 de  dos unidades  a  una unidad  (que  la restricción ahora sea X2 >= 1)?  Si no es conveniente disminuir de esa manera la demanda mínima ¿por qué?

El valor marginal de la demanda mínima del producto 2 corresponde a $Z_5 - C_5 = 0$. Inmediatamente, el funcional no cambiaría al disminuir una unidad de la demanda mínima del producto 2.

No es conveniente pagar para reducir la demanda mínima del producto 2 para que pase de dos unidades a una unidad.

# 5. Inciso D

> Analizar la chance de fabricar un cuarto producto. Para obtener una unidad de este producto se necesitan 4 kilos de materia prima y 5 horas de la máquina. El beneficio unitario de este nuevo producto es de $5,50. Indicar, utilizando el método del lucro cesante si se puede descartar esta alternativa o podría llegar a ser conveniente.

Primero se analiza el lucro cesante. Al ser una estimación, solo va a indicar cuando _no_ es conveniente producir el producto. Recordando que el lucro cesante se calcula de la siguiente forma:
$$LucroCesante = \sum_{i \in RECURSOS}Uso_i \cdot VM_i$$

Recordando que el nuevo producto usa 4kg de materia prima y 5 horas de horas máquina:
$$LucroCesante = 4 \cdot \frac{2}{3} + 5 \cdot \frac{5}{6} = 41/6$$

Si el lucro cesante de un nuevo producto es mayor que el beneficio obtenido por ese producto, entonces _no_ conviene producirlo. Si es menor o igual, _puede o no_ que sea conveniente.

Resulta que $LucroCesante = 41/6 = 6.83 \ge 5.50 = C_4$, entonces no es conveniente agregar el nuevo producto al plan de producción.
