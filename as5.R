sam = vector(length=250);
prob = 0;
for(i in 1:5000){
  sam = rbinom(250,c(0,1),prob=0.5)
  for(i in rle(sam)$lengths){
    if(i==16)
    {
      prob = prob+1;
    }
  }
}

print(prob/5000);


#Q2
sam = vector(length=8);
prob = 0;
kprob = 0;
prob_change = vector(length=2000)
for(i in 1:2000){
  kprob = 0;
  sam = rbinom(8,c(0,1),prob=0.5)
  for(k in rle(sam)$lengths){
    if(k==1)
    {
      prob = prob+1;
      kprob = kprob+1;
    }
  }
  prob_change[i] <- (kprob/2000);
  
}
print(prob/2000);

hist(prob_change/(prob/2000));
