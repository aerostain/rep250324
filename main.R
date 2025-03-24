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
file.create("rem.md")
file.create(".gitignore")

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

#
