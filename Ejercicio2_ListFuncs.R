# Ejercicio 2.- Laboratorio Calificado N°2 de Programación en R

# Dada una lista
f3 <- list ("a", c ("b", "c", "d", "e"), "f", c ("g", "h", "i"))
#  nos piden usar la función lapply para pegar un signo de exclamación
#  al final de cada elemento de cada miembro, con una cadena vacía como
#  caracter de separación.

lapply (f3, paste, "!", sep = "")

# Asimismo, nos piden crear la función geolista, según las
#  características especificadas. Esta sería según sigue:
geolista <- function  (l) {
   g <- function (n) {
      return (prod (n) ^ (1 / length (n)))
   }
   #  La función ha de devolver la media geométrica del argumento vectorial

   for (i in 1 : length (l)) {
      if (!is.matrix (l [[i]])) {
         l[[i]] <- g (l [[i]])
      } else {
         l [[i]] <- apply (l [[i]], 1, g)
      }
   }
   # Tendremos el bucle que, dependiendo de si es una matriz o no, aplica la función g de manera distinta usando la notación [[]]

   return (l)
   # Devolvemos la lista final al usuario
}

f4 <- list (1 : 3, matrix (c (3.3, 3.2, 2.8, 2.1, 4.6, 4.5, 3.1, 9.4), 4, 2), matrix (c (3.3, 3.2, 2.8, 2.1, 4.6, 4.5, 3.1, 9.4), 2, 4))
geolista (f4)

f5 <- list (1 : 9, matrix (1 : 9, 1, 9), matrix (1 : 9, 9, 1), matrix (1 : 9, 3, 3))
geolista (f5)

# Finalmente, nos piden escribir dos funciones de R: una que tome una función como argumento, y otra que devuelva una función como salida.
foo <- function (x) {sin (x) + cos (x)}

# La primera función puede ser integrate
integrate (f = foo, lower = 0, upper = 1)

# El segundo caso puede ser 

