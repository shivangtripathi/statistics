all_marks <- matrix(nrow=750, ncol=6)
#generate scores for each student based on seed using LCM method
for(i in 1:750){
  #generate 6 random numbers for each student
  #stu_marks <- runif(6, min=0, max=100)
  stu_marks <- rnorm(n=6, m=82.2, sd=10)
  #set.seed(i*5)
  #stu_marks <- sample.int(6)
  all_marks[i,] <- stu_marks
}

#add all subject of each student and find mean, median, standard deviation
print(mean(all_marks[,1]))
print(mean(all_marks[,2]))
print(mean(all_marks[,3]))
print(mean(all_marks[,4]))
print(mean(all_marks[,5]))
print(mean(all_marks[,6]))

print(median(all_marks[,1]))
print(median(all_marks[,2]))
print(median(all_marks[,3]))
print(median(all_marks[,4]))
print(median(all_marks[,5]))
print(median(all_marks[,6]))

summary(all_marks[,1])
hist(all_marks[,1],
     main="Subject 1",
     xlab="Marks 0-100",
     col="orange")

ct = matrix(nrow=5,ncol=6)
for(i in 1:6)
{
  ct[1,i] = mean(all_marks[,i])
  ct[2,i] = median(all_marks[,i])
  ct[3,i] = max(all_marks[,i])-min(all_marks[,i])
  ct[4,i] = mad(all_marks[,i])
  ct[5,i] = sd(all_marks[,i])
}

for(i in 1:6)
{
  x = all_marks[,i]
  y = dnorm(all_marks[,i],ct[1,i],ct[5,i])
  png(file=paste("dnorm",i,".png"))
  plot(x,y)
  dev.off()
}
}