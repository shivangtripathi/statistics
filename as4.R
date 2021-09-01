n <- 100
s = 1
probability = vector(length = n)
for(i in 1:n){
  s = (s*(366-i))/365
  p = 1-s
  probability[i] = p
}

#Q4.1.1
plot(probability)
print(paste("Probability that atleast 2 have birthday on same day",sum(probability)/n))
#Q4.1.2
for (i in 1:n) {
  if (probability[i] >= 0.5)
  {
    print(paste("Smallest number of n for which probability is greater than 0.5 is ",i))
    break
  }
}


#Q4.2.1
n2 <- 10
val = vector(length=n2)
heads = vector(length=20)
for(i in 1:20){
  x = sample(c(0,1),size=10,replace=TRUE,prob=c(0.4,0.6))
  heads[i] = sum(x)
  val[i] = (heads[i]*heads[i] - 7*heads[i])
}
hist(val)
summary(val)
