# (a)
f1 <- factor (letters)

f1

levels (f1) <- rev (levels (f1))

f1

# (b)
f2 <- rev (factor (letters))

f3 <- factor (letters, levels = rev (letters))

# ... leer README ...

# (g)
n_diag <- function (m){

  require(dplyr)

  require(magrittr)



  m %>%

    ncol %>%

    seq_len %>%

    l(x -> cbind(x,x)) %>%

    m[.]

  }

# (h)


#Cambiar aleatoriamente las columnas

df [sample (ncol (df))]



#Permutar aleatoriamente las columnas

df [, sample (ncol (df))]



#Permutar las filas y las columnas simultáneamente en un solo paso

df [sample (nrow (df)), sample (ncol (df))]

# (i)
contig_samp <- function (df, m) {

  df %>%

    nrow %>%

    subtract (m) %>%

    sample (1) %>%

    add (seq_len (m)) %>%

    df [.,]

}

# (j)
mpg [order (names (mpg))]


