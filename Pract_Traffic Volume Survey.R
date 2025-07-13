df <- data.frame(col1=c("Total_Rickshaws","Pedestrians","Auto","CNG","Bus","Truck","Private Car"),
                 col2=c(1209,523,796,798,79,54,16))
?hist()
hist(df$col2,labels = df$col1)
?plot()
plot(df$col2)

# Pie chart
pie(df$col2,
   labels = df$col1,
    main = "Traffic Volume Distribution",
  col = rainbow(length(df$col1)))


df1 <- data.frame(col2=c("Total_Rickshaws","Pedestrians","Auto","CNG","Bus","Truck","Private Car"),
                 col3=c(1035,960,837,735,93,64,38))
pie(df1$col3,
    labels=df1$col2,
    main="Traffic Volume Distribution1",
    col = rainbow(length(df1$col2)))




                        
                       
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        