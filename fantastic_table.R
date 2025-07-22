library(tidyverse)
library(gtExtras)
View(iris)
install.packages("svglite")

iris %>%
  gt_plt_summary()

View(mtcars)

mtcars %>%
  group_by(cyl) %>%
  #summarize() er vitor argument deoar por ',' diye jei number lekhaa hoyeche oita diye doshomiker por koyta number print hobe seta thik kore dey
  summarize(Median=round(median(mpg),1),
            Mean=round(mean(mpg),2),
            Distribution=list(mpg)) %>%
  gt() %>%
  gt_plt_dist(Distribution) %>%
  gt_theme_nytimes() %>%
  tab_header(title="Created Table")
  
