library(tidyverse)
install.packages("naniar")
library(naniar)

View(starwars)
View(airquality)
install.packages("gtExtras")
library(gtExtras)

miss_var_summary(airquality)
gg_miss_var(airquality)

airquality %>%
  filter(!complete.cases(.)) %>%
  head(10) 

vis_miss(airquality)
 starwars %>%
   select(name,hair_color,species) %>%
   filter(species=="Droid") %>%
   mutate(hair_color = case_when(
     is.na(hair_color) &
       species=="Droid"~"none",
     TRUE~hair_color
     ))
  
