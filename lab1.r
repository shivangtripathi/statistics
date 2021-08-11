a<-2
b<-10
x0<-10
num<-750
m<-101
marks<- c(0)
for(i in 1:num)
{
  marks[i]<-((a*i)+b)%%m
  if(i%%2 == 0){
    a=a+i;
  }
}  
print(mean(marks))
print(median(marks))
print(sd(marks))
hist(marks)