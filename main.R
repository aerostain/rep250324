# LoadLibrary
library(tidyverse)
library(magrittr)
library(ggdark)
library(expss)
library(lubridate)
library(pacman)

# .lintr
text <- c(
  "linters: linters_with_defaults(",
  "  assignment_linter(allow_pipe_assign = TRUE)",
  "  )"
)

pathfile <- file.path(getwd(), ".lintr")

writeLines(text, pathfile)

options("width" = 10000)
getOption("width")

# Directorios
dir.create("Rdownloads")
file.create("test.R")
file.create("notes.md")
file.create("readme.md")
file.create(".gitignore")
dir()
file.remove("rem.md")

# Procesamiento

p_load(palmerpenguins)
p_load(
  tidyverse,
  magrittr,
  expss,
  ggdark,
  palmerpenguins
)

# Modelamiento

mpg %>% str()

mpg %>%
  ggplot(aes(displ, cty)) +
  geom_jitter(aes(col = factor(year))) +
  geom_smooth(method = "lm") +
  dark_theme_grey()

penguins %>% head()

mpg %>%
  filter(displ == 1.6)

# Usar R y C++
install.packages("Rcpp")
library(Rcpp)

## Escribiendo una funcion C++
cppFunction("
int sumaC(int a, int b) {
  return a + b;
}
")

sumaC(7, 7)

## Usando una función C++ desde archivo externo
file.create("funCpp.cpp")
### Cargar y Compilar archivo .cpp en R
sourceCpp("funCpp.cpp")
sumaCPP(7, 7)

# Usando Armadillo
install.packages("RcppArmadillo")
library(RcppArmadillo)
file.create("funMat.cpp")
sourceCpp("funMat.cpp")

m_a <- matrix(c(1, 2, 3, 4), nrow = 2)
m_b <- matrix(c(5, 6, 7, 8), nrow = 2)
resultado <- multiplicar_matrices(m_a, m_b)
print(resultado)
