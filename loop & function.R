#for loop
for (i in 1:10){
  print(i)
}

#multiply loop
for (index in 1:10)
{
  print(1*index)
}
for (index in 1:10){
  print(3*index)
}
#use of fuction
multiplication_table=function(inputNumber)
  for (index in 1:10){
    print(inputNumber*index)
  }
multiplication_table(10)
