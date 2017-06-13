# Pregunta N°1.- Laboratorio Calificado #2 de Programación en R

# Hacemos uso de is.finite, is.infinite, is.nan, entre otros..., con
#  el fin de filtrar ciertos valores dentro de estructuras como vectores, 
#  matrices, etc.

# Ítem a)

#En primer lugar, asignamos a f1, el vector indicado
f1 <- c (13563, -14156, -14319, 16981, 12921, 11979, 9568, 8833, -12968, 8133)

# Deseamos imprimir solo los valores de f1
#  que cumplan con la condición f1^75 no es inf
f1 [c (is.finite (f1 ^ 75))]

# Asimismo, los valores de f1,
#  excluyendo aquellos en los que f1^75 es -inf
f1 [c (!(f1 < 0 & is.infinite (f1 ^ 75)))]

# Ítem b)

# Almacenamos la matriz varMatriz
#  con los valores indicados
varMatriz <- matrix (c (77875.4, -35466.25, -39803.81, 27551.45, -73333.85, 55976.34, 23764.3, 36599.69, 76694.82, -36478.88, -70585.69, 47032), nrow = 3, ncol = 4)

# Hacemos uso de la función which
#  que ha de devolvernos los índices
#  para los cuales se cumple la condición que indiquemos.
# El argumento arr.ind, toma en cuenta las dimensiones de la matriz,
#  mientras que prescindir de él, nos devolvería el orden absoluto
#  del índice.

# En este primer caso, los índices que queremos encontrar son de aquellas
#  entradas de varMatriz que son NaN cuando se eleva a 65 y se divide
#  entre infinito
which (is.nan ( (varMatriz ^ 65) / (1 / 0)), arr.ind = TRUE)

# En el segundo caso, pide devolver los valores de varMatriz que NO son
#  NaN cuando elevamos varMatriz a una potencia de 67 y le añadimos inf

#which (!is.nan (varMatriz ^ 67 + (1 / 0)), arr.ind = TRUE)
varMatriz[ !c (is.nan (varMatriz ^ 67 + (1 / 0)))]

# Además, nos piden confirmar que esto es idéntico a identificar
#  aquellos valores en varMatriz que, cuando se elevan a una potencia
#  de 67, no son iguales al infinito negativo
# Mediante el siguiente comando, encontramos dichos valores, y podemos
#  confirmar que son los mismos.
which (! (is.infinite (varMatriz ^ 67) & varMatriz < 0), arr.ind = TRUE)

# Finalmente, nos piden identificar aquellos valores en varMatriz
#  que son infinito negativo O finito cuando varMatriz se eleva
#  a una potencia de 67.
which ( (is.finite (varMatriz ^ 67) |(varMatriz < 0 & is.infinite (varMatriz ^ 67) ) ), arr.ind = TRUE)

# Ítem c)

# Consideremos la línea de código siguiente:
f2 <- c (4.3, 2.2, NULL, 2.4, NaN, 3.3, 3.1, NULL, 3.4, NA)


