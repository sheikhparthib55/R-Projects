library(tidyverse)
View(starwars)
starwars %>%
  select(name,species,contains("color")) %>%
  head(10)

starwars %>%
  select(name,height,species,eye_color) %>%
  filter(species=="Human" &
           height<200,
         eye_color %in% c("blue","brown")) %>%
  head(10)

starwars %>%
  select(name,height,species,mass) %>%
  mutate(height=height/100) %>%
  head(10)

starwars %>%
  select(name,contains("color"),species) %>%
  mutate(species=recode(species,
                        "Droid"="Robot")) %>%
  head(10)

starwars %>%
  select(sex,height,mass) %>%
  filter(sex %in% c("male","female")) %>%
  mutate(height=height/100) %>%
  drop_na() %>%
  #na value gulo remove na korle mean ber kora jay na
  group_by(sex) %>%
  summarise("avg H"=mean(height),
            "avg mass"=mean(mass))
