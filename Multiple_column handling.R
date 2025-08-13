#multiple column er mean eksathe ber kivabe korte hoy?
#R er khetre : dataframe[rows , columns]
library(tidyverse)
#1
#colMeans use kora hoy
colMeans(msleep[,c("sleep_total","sleep_rem","awake")],na.rm=TRUE) #na.rm na dile mean asto na

#another way-
msleep %>%
  #across() use kore eksthe ekadhik column e function proyog kora hoy
  # ekadhik column er khetre ei niyom tai beshi preferable
  summarise(across(c(sleep_total,sleep_rem,awake),mean,na.rm=TRUE))

#ekhon cholo Standard Deviaation dekhi
#1
sapply(msleep[,c("sleep_total","sleep_rem","awake")],sd,na.rm=TRUE)
#another way-
msleep %>%
  summarise(across(c(sleep_total,sleep_rem,awake),sd,na.rm=TRUE))
  
#Let's practice-
msleep %>%
  summarise(across(starts_with("sleep"),sd,na.rm=TRUE))
