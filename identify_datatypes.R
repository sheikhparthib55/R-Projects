my_data_01 <- read.csv("C:/Users/User/Downloads/Practice_datasets/Indian_Kids_Screen_Time.csv")
str(my_data_01)
my_data_01$Avg_Daily_Screen_Time_hr <- as.factor(my_data_01$Avg_Daily_Screen_Time_hr)
levels(my_data_01$Avg_Daily_Screen_Time_hr)                                              
my_data_01$Age>10
class(my_data_01)
