productos = [
    [0.1, 4, 'Arroz'],
    [0.07, 5, 'Polenta'],
    [0.25, 10, 'Almidón'],
    [0.09, 3, 'Harina'],
    [0.15, 0, 'Agua Mineral'],
    [0.04, 2, 'Conservas'],
    [0.55, 7, 'Leche en Polvo']
]

for prod in productos:
    prod += [prod[1] / prod[0], 5]

volumen_restante = 1
personas_alimentadas = 0
botellas_agua = 0
caja = []

productos = sorted(productos, key=lambda x: x[3], reverse=True)

while True:

    prox_producto = None
    agua_necesaria = 0
    for prod in productos:

        if prod[4] == 0:
            continue

        agua_necesaria = (prod[1] + personas_alimentadas) // 5 - botellas_agua

        if prod[0] + agua_necesaria * 0.15 <= volumen_restante:
            prox_producto = prod
            break

    
    if prox_producto == None:
        break

    caja += [prox_producto[2]]
    botellas_agua += agua_necesaria
    volumen_restante -= agua_necesaria * 0.15 + prox_producto[0]
    personas_alimentadas += prox_producto[1]
    prod[4] -= 1
    caja += ['Agua Mineral'] * agua_necesaria

print('Volumen restante', volumen_restante)
print('Personas alimentadas', personas_alimentadas)
print(caja)