library(tidyverse)
View(msleep)

msleep %>%
  #select(name,vore,sleep_total) %>%
#select function er vitor colum select korte hole $ sign use korte hoy na
  select(sleep_rem:bodywt) %>%
# chaile column er range use koreo select kora jay
  View()

# Let's filter
msleep %>%
  filter(vore=="herbi") %>%
  View()

# chaile ekadhikk shorto onusre o row select kora jay
msleep %>%
  filter(vore=="carni" | sleep_total>15)

#multiple row select korte hole
msleep %>%
  filter(vore=="carni" | vore=="herbi")
# or can use,
  filter(vore %in% c("carni","herbi"))
  
#let's practice
  msleep %>%
    filter(vore=="carni", sleep_total>15) %>%
    select(name,sleep_total) %>%
    View()
  