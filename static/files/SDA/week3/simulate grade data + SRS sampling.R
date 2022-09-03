# sampling some data for student grades
# Peter Lugtig, copyright 2017
# Questions: p.lugtig@uu.nl
# last update: 12-09-2019


#clean workspace
rm(list=ls(all=TRUE))
require(MASS) #for sampling multivariate normal distribution
require(sampling) # for sampling
require(survey) # for design weights and corrections
se <- function(x) sd(x)/sqrt(length(x-1)) # standard error function


#####################################################################

# build some population data

# generate BA degrees
#?set.seed
set.seed(11) # to make sure results are consistent in population
overall <- as.numeric(4+rpois(n=14000,lambda=2.8)+mvrnorm(n=14000,0,0.3))
overall[overall>10] <- 8.5
overallBA <-as.data.frame(overall)
overallBA[,2] <- "Bachelor"
# generate MA degrees
set.seed(11)
overall <- as.numeric(5.5+rpois(n=6000,lambda=2.0)+mvrnorm(n=6000,0,0.1))
overall[overall>10] <- 9
overallMA <-as.data.frame(overall)
overallMA[,2] <- "Master"

#merge the BAchelor and master numbers
grades <- rbind(overallBA,overallMA)
hist(grades$overall[grades$V2=="Bachelor"]) #just a graph to see it went ok
hist(grades$overall[grades$V2=="Master"])
require(ggplot2) # for a nice(r) plot
ggplot(grades, aes(overall,fill=grades$V2)) +
  geom_histogram(binwidth=.5)

# compute population means and variances
mean(grades$overall[grades$V2=="Bachelor"])   # 6.70
mean(grades$overall[grades$V2=="Master"])     # 7.41
var(grades$overall[grades$V2=="Bachelor"])    # 2.42
var(grades$overall[grades$V2=="Master"])      # 1.49
var(grades$overall)                           # 2.25
mean(grades$overall)                          # 6.92
se(grades$overall)                            # .01059



#################################################################################
# now take some samples

# srs without replacement once
set.seed(11)
grades[,3] <-srswor(1000,20000) #srswor
mean(grades$overall[grades$V3==1])              #6.91



# from here, we ignore fpc for simplicity, and because fraction=.05
sesrs <- se(grades$overall[grades$V3==1])                           #.04612
sesrs1<- se(grades$overall[grades$V3==1 & grades$V2=="Bachelor"])   #.05697
sesrs2<-se(grades$overall[grades$V3==1 & grades$V2=="Master"])      #.04628
table(grades$V2,grades$V3)

# now in a function
# see "exercise week 2 -> for a simpler example sampling from a deck of cards

# first, how many experiments? (nrep) and how large should sample be (nrows)

nrep <- 10000 # do X experiments
nrows <- 1000 # each with n draws from the popuylation of students (we will use 1000)
popsize <-nrow(grades) #20000

#################################
#1. simulation without replacement

# create  empty dataframe to store the results
datasim1 <- data.frame(matrix(ncol = nrep, nrow = popsize)) # for without replacement
# we want to indicate for every person in population whether he/she will be sampled
# NOTE: the study below takes about 20 min to run. Set nrep lower to be done quicker

set.seed(11) # starting position to make sure we use the same 'random' starting value 
for  (i in 1:ncol(datasim1)){ # loop over columns
  datasim1[i] <- srswor(nrows,popsize) * grades$overall  #srswor results in 0/1, so can be used by multiply
}
errorWO <- colSums(datasim1)/nrows - mean(grades$overall) # sum of sampled cases divided by sample size to get sample mean
# now some descriptives
hist(errorWO) 
mean(errorWO)*100 # multiplied by hundred because number is expected to be small #-.025
var(errorWO) #.00206


se(errorWO)  #.000454

# 2. simulation study with replacement
# note the only difference here is in the srswor/srswr statement!

# create  empty dataframe to store the results
datasim2 <- data.frame(matrix(ncol = nrep, nrow = popsize)) # for without replacement
set.seed(3514) # starting position to make sure we use the same 'random' starting value 
for  (i in 1:ncol(datasim2)){ # loop over columns
  datasim2[i] <- srswr(nrows,popsize) * grades$overall  #srswr results in number of draws, so can also be used by multiply
}

errorWR <- (colSums(datasim2)/nrows) - mean(grades$overall) #

hist(errorWR) 
mean(errorWR)*100 #-.07
var(errorWR) #.0022
se(errorWR) #.000476

# conclusion: 
#variance = larger in sampling with replacement 

# extra (week 5 more): design effect - how much more (or less) efficient is sample design compared to SRSWOR
var(errorWR)/var(errorWO) # 1.098 
# and variance inflation (how much less efficient)
sqrt(var(errorWR)/var(errorWO)) #1.048 or
se(errorWR)/se(errorWO) #same


# EOF

