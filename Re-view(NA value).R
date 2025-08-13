library(tidyverse
View(msleep)
 #1
msleep_no_na <- msleep[!is.na(msleep$sleep_rem),]
#2  ekta column er na value bad dite hole
msleep %>%
  filter(!is.na(sleep_rem)) %>%
  View()
#3 ekadhik column er na bad dite hole
msleep %>%
  filter(!is.na(sleep_rem), !is.na(vore)) %>%
  View()

#4 sob column er na value bad deoar jonno
msleep %>%
  na.omit() %>%
  View()
#5 !is.na er poriborte amra drop_na() use korte pari
msleep %>%
  drop_na(sleep_rem,vore)
#6 sob column er jonno
msleep %>%
  drop_na()
#7 na.rm use hoy kono ekta column er hisab korar somoy na value gulo bad deoar jonno, jate pore jhamela na hoy
#jemon mean(msleep$sleep_rem) korle na value gulor jonno mean value dekhabe na
#tai -
mean(msleep$sleep_rem,na.rm=TRUE)
