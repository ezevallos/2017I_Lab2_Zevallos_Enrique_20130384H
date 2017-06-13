# Deseamos representar el triángulo de Pascal como una lista,
#  donde el elemento n es la n-ésima fila del triángulo.
#  Por ejemplo, el triángulo de Pascal a la profundidad cuatro
#  sería dado por:

list (c (1), c (1, 1), c (1, 2, 1), c (1, 3, 3, 1))

# La fila n puede obtenerse a partir de la fila n - 1

pascalTriangle <- function (h) {

  lapply(0:h, function (i) choose (i, 0:i))

}

pascalTriangle (10)

# Como podemos comprobar, en la undécima fila, los valores son
#  aquellos obtenidos según el coeficiente binomial de 10 en i, cuando
#  i va de 0 a 10

for (i in 0:10) print (choose (10,i))

# Supongamos que necesitamos todas las 2^n secuencias binarias de 
#  longitud n. Una forma de generarlas sería con bucles anidados. #
#  Por ejemplo, el siguiente código genera una matriz binseq, donde
#  cada fila es una secuencia binaria diferente de longitud tres.

binseq <- matrix (nrow = 8, ncol = 3)

r <- 0

for (i in 0:1) {

  for (j in 0:1) {

    for (k in 0:1) {

      r <- r + 1

      binseq [r,] <- c (i, j, k)

    }

  }

}

binseq

# Sin embargo este enfoque resulta tedioso para grandes valores de n.
#  Una alternativa es usar recursión. Con el fin de escribir una
#  función binseq que tome como entrada un entero n y devuelva
#  una matriz que contenga todas las secuencias binarias de longitud
#  n, como filas de la matriz. 

binseq <- function (n) {

   if (n == 1) {

   A <- matrix (0 : 1, nrow = 2, ncol = 1)

   return (A)

}else{

  A <- binseq (n-1)

  B <- rbind (cbind (0, A), cbind (1, A))

  return (B)

   }

}



binseq (3)
