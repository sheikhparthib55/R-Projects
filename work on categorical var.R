library(tidyverse)
library(forcats)
View(gss_cat)
glimpse(gss_cat)

unique(gss_cat$race)
#or use the below
gss_cat %>%
  pull(race) %>%
  unique()

count(gss_cat,race,sort=T)
#or use the below
gss_cat %>%
  count(race)

gss_cat %>%
  pull(race) %>%
  levels()

gss_cat %>%
  select(race) %>%
  table()

gss_cat %>%
  mutate(race=fct_drop(race)) %>%
  pull(race) %>%
  #pull use na korle null asto result e
  levels()

gss_cat %>%
  drop_na(tvhours) %>%
  group_by(relig) %>%
  summarise(mean_tv=mean(tvhours)) %>%
  ggplot(aes(mean_tv,relig))+
  geom_point()

gss_cat %>%
  drop_na(tvhours) %>%
  group_by(relig) %>%
  summarise(mean_tv=mean(tvhours)) %>%
  #fct_reorder(x,y) mane holo "x" ke sajao othoba reorder koro "y" er kromanujayi
  mutate(relig=fct_reorder(relig,mean_tv)) %>%
  ggplot(aes(mean_tv,relig))+
  geom_point(size=4)

gss_cat %>%
  drop_na(age) %>%
  filter(rincome != "Not applicable") %>%
  group_by(rincome) %>%
  summarise(mean_age=mean(age)) %>%
  ggplot(aes(mean_age,rincome))+
  geom_point()
  
gss_cat %>%
  drop_na(age) %>%
  filter(rincome != "Not applicable") %>%
  group_by(rincome) %>%
  summarise(mean_age=mean(age)) %>%
  #fct_rev() upor thke boro hoye niche choto sonkhya ane
  mutate(rincome=fct_rev(rincome)) %>%
  ggplot(aes(mean_age,rincome))+
  geom_point()

?forcats
count(gss_cat,marital)

gss_cat %>%
  ####
  mutate(marital=fct_infreq(marital)) %>%
  mutate(marital=fct_rev(marital)) %>% 
  ####
  ggplot(aes(marital))+
  geom_bar(size=8)
