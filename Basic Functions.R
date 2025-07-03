#print letters
letters[1:20]
LETTERS[1:10]

#print repeated elements
rep(1,5)
rep("a",3)

#create dataframe

df=data.frame(col1=letters[1:20],col2=rep("a",20),col3=1:20)
class(df)
str(df)
dim(df)

head(df)

tail(df)

#check duplicates
duplicated(df$col1)
table(duplicated(df$col1))

duplicated(df$col2)
table(duplicated(df$col2))

!duplicated(df$col2)
table(!duplicated(df$col2))

#check uniques
unique(df$col2)
unique(df$col1)

#number of elements
length(df$col1)

#set operations
intersect(df$col1,df$col2)
union(df$col1,df$col2)
setdiff(df$col1,df$col2)
