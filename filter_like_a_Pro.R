library(tidyverse)
view(msleep)
my_data02 <- msleep %>%
  select(name,order,bodywt,sleep_total) %>%
  ##filter(order=="Primates",bodywt> 20)
  #filter(order=="Primates"|bodywt> 20)
  #filter (name %in% c("Cow","Dog","Goat"))
  filter(between(sleep_total,16,18))


