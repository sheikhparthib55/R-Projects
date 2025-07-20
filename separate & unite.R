library(tidyverse)
library(gapminder)
View(gapminder::gapminder)
#let's separate
gapminder1 <- gapminder::gapminder %>%
  separate(col=year,
           into=c("century","year"),
           sep=2) %>%
  #sep=n use kora hoy koyta sonkhyar por number separate korbe to define it
  View()

#let's unite
gapminder1 %>%
  unite(col=date,
        century,year,
        sep="") 

