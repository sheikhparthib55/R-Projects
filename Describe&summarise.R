library(tidyverse)
data()
View(msleep)
glimpse(msleep)
min(msleep$awake)
max(msleep$awake)
range(msleep$awake)
IQR(msleep$awake)
mean(msleep$awake)
median(msleep$awake)
var(msleep$awake)

msleep %>%
  drop_na(vore) %>%
  group_by(vore) %>%
  summarise(lower=min(sleep_total),
          Average=mean(sleep_total),
          Upper=max(sleep_total),
          Diff=
            max(sleep_total)-min(sleep_total)
          ) %>%
  #minus(-) use kora hoy descending onusare sajanor jonno
  arrange(-Average) %>%
  View()

library(MASS)
attach(Cars93)
#attach() function use korle $ sign diye colum ke dataset er sathe add korte hoy na, shudhu variable er nam likhlei hoy
glimpse(Cars93)
View(Cars93)

table(Origin)
table(AirBags,Origin)
#addmargins() use kora hoy row & colum er sum soho notun row &colum create korte
addmargins(table(AirBags,Origin))
#prop.table() use kora hoy % e hisab janar jonno
prop.table(table(AirBags,Origin))
round(prop.table(table(AirBags,Origin)))

Cars93 %>%
  group_by(AirBags,Origin) %>%
  summarise(number=n()) %>%
  pivot_wider(names_from=Origin,
              values_from=number)
      
      