#Dataframe in R
df=data.frame(col1=1:4,col2=4:7,col3=7:10)
colnames(df)
rownames(df)

#check dimension
dim(df)

#check structure
str(df)

#summary
summary(df)
df2=df[,2:3]
df3=df[1:3,]
df[,1]
df[1,]
df$col3
