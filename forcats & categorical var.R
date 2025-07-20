library(tidyverse)
View(gss_cat)
levels(gss_cat$race)
#make a table on a colum
gss_cat %>%
  select(race) %>%
  table()
#remove missing or na(not available) values
gss_cat %>%
  mutate(race=fct_drop(race)) %>%
  select(race) %>%
  table()
#level the categorical variables of your own 
gss_cat %>%
  mutate(race=fct_drop(race)) %>%
  mutate(race=fct_relevel(race,
                          c("White","Black","Other"))) %>%
           select(race) %>%
           table()

gss_cat %>%
  #fct_infreq() use hoy boro theke choto korte
  mutate(marital=fct_infreq(marital)) %>%
  #fct_rev() use hoy choto theke boro korte
  mutate(marital=fct_rev(marital)) %>%
  ggplot(aes(marital))+
  geom_bar(fill="steelblue")
         
         