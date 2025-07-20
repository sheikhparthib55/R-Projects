library(tidyverse)
##mutate() use kora hoy notun ekta variable create korte or existing variable ei kichu change korte
glimpse(mpg)
View(mpg)
mpg %>%
  #mutate() use kora hoyeche karon ekhane variable change kora hoyeche
  mutate(across(where(is.character),
              as.factor)) %>%
  glimpse() %>%
  View()

#across() use kora hoy criteria onujayi variable select korte
mpg %>%
  group_by(manufacturer) %>%
  #ekhane mutate() use kora hoy nai, karon ekhave variable change kora hoy nai
  summarise(across(where(is.numeric)
                          & contains("y"),
                          mean))
