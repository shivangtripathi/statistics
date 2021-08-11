
all_marks <- matrix(nrow=750, ncol=6)
all_marks[1,] = c(89, 34, 99, 100, 78, 88)
z_val <- first
a <- 43
c <- 17
m <- 101
for(i in 2:750){
  new_z <- (all_marks[i-1,]*a + c)%%m
  all_marks[i,] = new_z
}

colnames(all_marks) <- c("Sub1", "Sub2", "Sub3", "Sub4", "Sub5", "Sub6")

hist(all_marks[,1],
     main="Subject 1",
     xlab="Marks 0-100",
     col="orange")

hist(all_marks[,2],
     main="Subject 2",
     xlab="Marks 0-100",
     col="green")

hist(all_marks[,3],
     main="Subject 3",
     xlab="Marks 0-100",
     col="red")

hist(all_marks[,4],
     main="Subject 4",
     xlab="Marks 0-100",
     col="blue")

hist(all_marks[,5],
     main="Subject 5",
     xlab="Marks 0-100",
     col="purple")

hist(all_marks[,6],
     main="Subject 6",
     xlab="Marks 0-100",
     col="yellow")

mean_subj <- matrix(nrow=1, ncol=6)
mean_subj[1,1] = mean(all_marks[,1])
mean_subj[1,2] = mean(all_marks[,2])
mean_subj[1,3] = mean(all_marks[,3])
mean_subj[1,4] = mean(all_marks[,4])
mean_subj[1,5] = mean(all_marks[,5])
mean_subj[1,6] = mean(all_marks[,6])

med_sub <- matrix(nrow=1, ncol=6)
med_sub[1,1] = median(all_marks[,1])
med_sub[1,2] = median(all_marks[,2])
med_sub[1,3] = median(all_marks[,3])
med_sub[1,4] = median(all_marks[,4])
med_sub[1,5] = median(all_marks[,5])
med_sub[1,6] = median(all_marks[,6])

std_sub <- matrix(nrow=1, ncol=6)
std_sub[1,1] = sd(all_marks[,1])
std_sub[1,2] = sd(all_marks[,2])
std_sub[1,3] = sd(all_marks[,3])
std_sub[1,4] = sd(all_marks[,4])
std_sub[1,5] = sd(all_marks[,5])
std_sub[1,6] = sd(all_marks[,6])

