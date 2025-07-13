my_data <- read.csv("machine-readable-business-employment-data-mar-2025-quarter.csv")
head(my_data)
tail(my_data)
view(my_data)
library(tidyverse)

my_data[1,3]
my_data$Series_title_2

my_data %>%
  select(Series_reference,Series_title_1, Series_title_2)

str(my_data)
