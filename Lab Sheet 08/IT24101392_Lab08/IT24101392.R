setwd("C:\\Users\\it24101392\\Desktop\\IT24101392_Lab08")
data <- read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)
#question 01
popmn <- mean(Weight)
popmn
popvar <- var(Weight)
popvar
#question 02
samples <- c()
n <- c()
for(i in 1:25){
  s <- sample(Weight,6,replace=TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('s',i))
}
samples
n 

colnames(samples)=n
samples

s.means <- apply(samples,2,mean)
s.means

s.vars <- apply(samples,2,var)
s.vars

#question 03
samplemean <- mean(s.means)
samplemean
samplevars <- var(s.means)
samplevars
popmn
samplemean
truevar=popvar/5
truevar
samplevars
