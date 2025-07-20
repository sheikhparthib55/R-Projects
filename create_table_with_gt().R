library(tidyverse)
library(RColorBrewer)
library(gtExtras)
library(gapminder)
View(gapminder::gapminder)

plot_europe <- gapminder::gapminder %>%
  rename(Country=country) %>%
  filter(continent=="Europe") %>%
  group_by(Country) %>%
  summarise(
    'GDP pc'=round(mean(gdpPercap)),
    'Pop size'=round(mean(pop)),
    'Life expect'=list(lifeExp)
    ) %>%
  arrange(-'GDP pc') %>%
  head(10) %>%
  gt() %>%
  gt_plt_dist('Life expect') %>%
  tab_header(title="GDP and POP size of Europe") %>%
  cols_align(align="left")
plot_europe
  
  
  
  
  
  gapminder::gapminder %>%
    rename(Country = country) %>%
    filter(continent == "Europe") %>%
    group_by(Country) %>%
    summarise(
      "GDP pc" = round(mean(gdpPercap)),
      "Pop size" = round(mean(pop)),
      "Life expect" = list(lifeExp)
    ) %>%
    View()
  


  