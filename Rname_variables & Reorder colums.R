library(tidyverse)
str <- starwars %>%
  select(name,mass,height) %>%
  rename(weight=mass)

