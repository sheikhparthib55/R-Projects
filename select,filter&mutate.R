library(tidyverse)
data()
view(starwars)
starwars %>%
  select(gender,mass,height,species) %>%
  filter(species=="Human") %>%
  na.omit() %>%
  mutate(height=height/100) %>%
  mutate(BMI=mass/height^2) %>%
  group_by(gender) %>%
  summarise(Avg=mean(BMI))

