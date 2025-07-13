library(tidyverse)
?msleep
View(msleep)
names(msleep)
#rename
msleep %>%
 # rename("conserve"="conservation")
#reorder
   select(vore,name,everything())

class(msleep$vore)
#change a variable type
msleep$vore <- as.factor(msleep$vore)
glimpse(msleep)

msleep %>%
  select(2:4,
         awake,
         starts_with("sleep"),
         contains("wt")) %>%
  names()
unique(msleep$order)

#msleep %>%
  #filter((order=="Carnivora" |
          # order=="Primates") &
  #filter(msleep %in% c("Carnivora","Primates") &
  #sleep_total>8) %>%
  #select(name,order,sleep_total) %>%
  #arrange(-sleep_total) %>%
  #View()

msleep$brainwt
msleep$brainwt>0.01
size_of_brain <- msleep %>%
  select(name,brainwt) %>%
  drop_na(brainwt) %>%
  mutate(brain_size= if_else(brainwt>0.01,"large","small")) %>%
  View()

library(gapminder)
View(gapminder)
data <- select(gapminder,country,year,lifeExp)
View(data)

wide_data <- gapminder::data %>%
  pivot_wider(names_from = year, values_from = lifeExp)
View(wide_data)
