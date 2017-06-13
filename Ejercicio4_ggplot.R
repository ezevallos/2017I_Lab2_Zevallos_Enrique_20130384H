require (ggplot2)
# (a)
ggplot (data = mpg)

# (b)
nrow (mpg)

ncol (mpg)

# (c)
?mpg

# Según la ayuda ?mpg, la variable drv nos indica el tipo de tracción
#  posterior, delantera o 4x4.

# (d)

e <- ggplot (mpg, aes (cyl, hwy))

e + geom_point ()

# (e)
p <- ggplot (mpg, aes (class, drv))

p + geom_point ()

# (f)
ggplot (data = mpg) + geom_point (mapping = aes (x = displ, y = hwy, color = "blue"))

ggplot (data = mpg) + geom_point (mapping = aes (x = displ, y = hwy), color = "blue")

# (g)
mpg

# (h)
# ... leer README ...

# (k)
ggplot(data = mpg) + geom_point(aes(x = cty, y = hwy, color = displ < 5))

# (l)
ggplot (data = mpg) + geom_point (mapping = aes (x = displ, y = hwy)) + facet_wrap (~ class, nrow = 2)

ggplot (data = mpg) + geom_point (mapping = aes (x = displ, y = hwy)) + facet_grid (drv ~ cyl)

ggplot (data = mpg) + geom_point (mapping = aes (x = drv, y = cyl))

ggplot (data = mpg) + geom_point (mapping = aes (x = displ, y = hwy)) + facet_grid (drv ~ .)

ggplot (data = mpg) + geom_point (mapping = aes (x = displ, y = hwy)) + facet_grid (. ~ cyl)

# (m)
# ... leer README ...

