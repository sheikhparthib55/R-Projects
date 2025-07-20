library(tidyverse)
library(forcats)
View(gss_cat)
head(gss_cat)
names(gss_cat)
str(gss_cat)
my_data <- gss_cat %>%
  select(marital) %>%
  filter(marital %in% c("Married",
                        "Never married","Divorced")) %>%
  mutate(marital=fct_drop(marital))
my_table <- table(my_data)
View(my_table)
 
chisq.test(my_table)
