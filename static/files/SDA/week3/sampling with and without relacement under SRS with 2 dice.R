# sampling with and without replacement
# with two dices 
# Peter Lugtig
# last update: 12-09-2019

##################################

N <- 6 # six numbers
n <- 2 # two dice
Y<- c(1:6)
nr <- choose(N,n)

#install.packages("sampling")
require(sampling)

# sampling wotuout replacement
Design1 <-matrix(t(combn(N,n,FUn=NULL,simplify=T)),ncol=n,nrow=nr)
samples <- matrix(Y[Design1],ncol=n,nrow=nr)
D1S1 <- matrix(0,ncol=1,nrow=nr)

for (ii in 1:nr){
  D1S1[ii] <- mean(samples[ii,])
}

EM1 <- mean(DIS1)
bias1 <- EM1-Y
s1 <-apply(samples,1,var)
Var1 <-mean((1-n/N)*s1/n) # 7/6 = 1.17

# sampling with replacement
#install.packages("gtools")
library(gtools)
nr2 <- N*N
Design2 <-permutations(n=N,r=n,v=1:N,set=T,repeats.allowed=T)
samples2 <-matrix(Y[Design2],ncol=n,nrow=nr2)
D2S2 <- matrix(0,ncol=1,nrow=nr2)

for (ii in 1:nr){
  D2S2[ii] <- mean(samples2[ii,])
}

EM2 <- mean(D2S2)
bias2 <- EM2-Y
s2 <-apply(samples2,1,var)
Var2 <-mean(s2/n) #1.46
(Var2/Var1) # equal to 1.25 (=6/4)

# EOF
#################################################

