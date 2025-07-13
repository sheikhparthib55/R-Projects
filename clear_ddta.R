library(tidyverse)
view(starwars)
class(starwars$gender)
starwars$gender <- as.factor(starwars$gender)
class(starwars$gender)
levels(starwars$gender)
starwars %>%
  select(name,height,ends_with("color")) %>%
  #names()
  filter(hair_color %in% c("blond","brown") & height<180)

#missing data remove
mean(starwars$height,na.rm=TRUE)
#na.rm means "not available. remove"

# To find where the missingness is -
starwars %>%
  select(name,gender,hair_color,height) %>%
  #filter(complete.cases(.))
  #drop_na use when you need to remove na from a specific variable
  filter(!complete.cases(.)) %>%
  drop_na(height) %>%
  View()

starwars %>%
  #filter(!complete.cases(.)) %>%
  #mutate(hair_color=replace_na(hair_color,"none"))
  # add new variable
  mutate(hair_color2=replace_na(hair_color,"none"))

#Duplicates
Name <- c("Saiham","Kasem","Parthib")
Age <- c(22,24,26)
friends <- data.frame(Name,Age)

starwars %>%
select(name,gender) %>%
  mutate(gender2=recode(gender,
                       "masculine"=1,
                       "feminine"=2)) %>%
  View()

  


