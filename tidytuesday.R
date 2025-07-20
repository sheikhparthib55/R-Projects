install.packages("tidytuesdayR")
library(tidytuesdayR)
tt_available()
tt_datasets(2021)

tuesday <- tt_load("2021-10-05")
names(tuesday)
df <- tuesday$nurses
