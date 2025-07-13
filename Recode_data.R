library(tidyverse)
str <- starwars %>%
  select(name,mass,height,gender) %>%
  rename(weight=mass) %>%
  mutate(height=height/100) %>%
  na.omit() %>%
  filter(gender== "masculine" |
           gender== "feminin") %>%
  mutate(gender=recode(gender,
                       masculine="m",
                       feminin="f")) %>%
  mutate(size= if_else(height>1 & weight>75,"big","small"))
  

rlang::last_trace()

