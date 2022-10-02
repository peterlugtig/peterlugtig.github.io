# sampling some data for student grades
# Peter Lugtig, copyright 2017
# Questions: p.lugtig@uu.nl
# last update\: 02-10-2022

###################################################

#clean workspace, libraries
rm(list=ls(all=TRUE))
require(MASS) #for sampling multivariate normal distribution
require(sampling) # for sampling
require(survey) # for design weights and corrections
se <- function(x) sd(x)/sqrt(length(x)) # standard error function

######################################################

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
grades$id <- 1:20000
hist(grades$overall[grades$V2=="Bachelor"]) #just a graph to see it went ok
hist(grades$overall[grades$V2=="Master"])
require(ggplot2) # for a nice(r) plot
ggplot(grades, aes(overall,fill=grades$V2)) +
  geom_histogram(binwidth=.5)

# compute population means and variances
mean(grades$overall[grades$V2=="Bachelor"])   # 6.69
mean(grades$overall[grades$V2=="Master"])     # 7.41
var(grades$overall[grades$V2=="Bachelor"])    # 2.36
var(grades$overall[grades$V2=="Master"])      # 1.49
var(grades$overall)                           # 2.20
mean(grades$overall)                          # 6.91
se(grades$overall)                            # .01049

#####################################################################

# 1. First SRS sampling (always without replacement from now)
# this part can be skipped, this code is copied from week Simple Random Sampling

# Determine how many experiments? (nrep) and how large should sample be (nrows)

nrep <- 10000 # do X experiments
nrows <- 1000# each with n draws from the popuylation of students (we will use 1000)
popsize <- 20000

#################################
#1. simulation without replacement using SRS (this will serve as a benchmark to evaluate other survey designs)

# create  empty dataframe to store the results
datasim1 <- data.frame(matrix(ncol = nrep, nrow = popsize)) # for without replacement
# we want to indicate for every person in population whether he/she will be sampled
# NOTE: the study below takes about 2 min to run. Set nrep lower to be done quicker

set.seed(11) # starting position to make sure we use the same 'random' starting value 
for  (i in 1:ncol(datasim1)){ # loop over columns
  datasim1[i] <- srswor(nrows,popsize) * grades$overall  #srswor results in 0/1, so can be used by multiply
}
errorWO <- colSums(datasim1)/nrows - mean(grades$overall) # sum of sampled cases divided by sample size to get sample mean
# now some descriptives
hist(errorWO) 
mean(errorWO)*100 # multiplied by hundred because number is expected to be small # .022
var(errorWO) #.00213
se(errorWO)  #.000461

##########################################################################
# 1. First SRS sampling (always without replacement from now)
# this part can be skipped, this code is copied from week Simple Random Sampling

# Determine how many experiments? (nrep) and how large should sample be (nrows)

nrep <- 10000 # do X experiments
nrows <- 1000# each with n draws from the popuylation of students (we will use 1000)
popsize <- 20000

############################################
# 2. now use a stratified sample 

# first using the same setup as for SRS, implying samples sizes of 700 and 300
# This is a stratified sample "Proportional to size"

popsize1 <- 14000
popsize2 <- 6000
sample1 <- 700
sample2 <-300
nrep=10000

# stratified with equal prob
datasimstrat3 <- data.frame(matrix(ncol = nrep, nrow = popsize1)) # 
datasimstrat4 <- data.frame(matrix(ncol = nrep, nrow = popsize2)) # 

set.seed(11) # starting position to make sure we use the same 'random' starting value 
for  (i in 1:ncol(datasimstrat3)){ # loop over columns
  datasimstrat3[i] <- srswor(sample1,popsize1) * grades$overall[grades$V2=="Bachelor"]  # select only BA from populatioin
}
set.seed(11) # starting position to make sure we use the same 'random' starting value 
for  (i in 1:ncol(datasimstrat4)){ # loop over columns
  datasimstrat4[i] <- srswor(sample2,popsize2) * grades$overall[grades$V2=="Master"]  # select only master students
}

datasimstratequal <- rbind(datasimstrat3,datasimstrat4) # putting the simulations back together
errorstratequal <- colSums(datasimstratequal)/(sample1+sample2) - mean(grades$overall) # sum of sampled cases divided by sample size to get sample mean
# now some descriptives
hist(errorstratequal) 
mean(errorstratequal)*100 # bias = .018 (so fine!)
var(errorstratequal)  #.00199 (.000182)
se(errorstratequal)   # .000446



############################################
# 3. now a simulation where things go wrong

# We will oversample students from the Master group. We can do this if we want to have a sufifcient sample size 
# for master students for example. But there will be adverse effects on the s.e. of the total estimate

popsize1 <- 14000
popsize2 <- 6000
sample1 <- 500 # same precision in both strata
sample2 <-500 # same precision in both strata
nrep=10000

# stratified with equal prob
datasimstrat5 <- data.frame(matrix(ncol = nrep, nrow = popsize1)) # 
datasimstrat6 <- data.frame(matrix(ncol = nrep, nrow = popsize2)) # 

set.seed(11) # starting position to make sure we use the same 'random' starting value 
for  (i in 1:ncol(datasimstrat5)){ # loop over columns
  datasimstrat5[i] <- srswor(sample1,popsize1) * grades$overall[grades$V2=="Bachelor"]  # select only BA from populatioin
}
set.seed(11) # starting position to make sure we use the same 'random' starting value 
for  (i in 1:ncol(datasimstrat6)){ # loop over columns
  datasimstrat6[i] <- srswor(sample2,popsize2) * grades$overall[grades$V2=="Master"]  # select only master students
}

datasimstrat500 <- rbind(datasimstrat5,datasimstrat6) # putting the simulations back together
errorstrat500 <- colSums(datasimstratequal)/(sample1+sample2) - mean(grades$overall) # sum of sampled cases divided by sample size to get sample mean
# now some descriptives
hist(errorstrat500) 
mean(errorstrat500)*100 # bias = .018 (so fine!)
var(errorstrat500)  #.00199 (.000182)
se(errorstrat500)   # .000446

# why the bias here? We need to correct with weights ;-) (see syntax below)
# but we will need to weight every of the 1000 samples we generate, and combine results of the weighted samples.

# now, we need more information in every data frame 
# I therefore store the simulation as a list (a list of dataframes), and aggregate across the list
# I use the apply function to create a function, and then apply the function (lapply) to every element (=dataframe) on the lisyt

############################################################################################################################
grades[,4] <- NA

#  SIMULATION USING A LIST
nrep <-10000
# stratified with equal prob
datasimstrat <- rep(list(grades), times=nrep) #10000 times the grade dataframe 

stratify <- function(data, sample1,sample2, popsize1,popsize2) {
  data1 <- subset(data, V2=="Bachelor")
  data2 <- subset(data, V2=="Master")
  data1[,5] <- NA
  data1[,5] <- srswor(sample1,popsize1) # srs among BA students
  data2[,5] <- NA
  data2[,5] <- srswor(sample2,popsize2) # srs among BA students
   # total weights
  data1[,6] <- (1/(sample1/popsize1))
  data2[,6] <- (1/(sample2/popsize2))
  data1[,7] <- popsize1 #popsize1
  data2[,7] <- popsize2
  data <- rbind(data1,data2)
  # sampling (design) weights
  data[,8] <- data[,6]/20 # mean weight (1 in 20 students gets selected)
  data[,9] <- rep(1:20000)
  data[,10] <- popsize1+popsize2
  gradesequal <- subset(data, V5==1)
  stra1 <- svydesign(ids=gradesequal$V9,strata=~gradesequal$V2, fpc = ~gradesequal$V7,data=gradesequal)
  #stratmean <- svymean(~gradesequal$overall, design=stra1,deff=T) 
  stratmean <- svymean(~gradesequal$overall, design=stra1,deff=T) 
  stratmeanB <- svymean(~overall, subset(stra1, V2=="Bachelor")) 
  stratmeanM <- svymean(~overall, subset(stra1, V2=="Master")) 
  print(list(stratmean,SE(stratmean),deff(stratmean),stratmeanB,stratmeanM)) # overall mean, and subgroup means
}

# now use three scenarios
# 1. using equal probabilities (700/300 in sample)

result <- lapply(datasimstrat,stratify,sample1=700,sample2=300,popsize1=14000,popsize2=6000) 
# or save the list and do analyses
resulteq <- data.frame(matrix(unlist(result), nrow=length(result), byrow=T))
resulteq[,6] <- resulteq[,1] - mean(grades$overall) 
colnames(resulteq) <- c("mean","se", "DEFF","meanS1","meanS2", "error")
hist(resulteq[,6])
mean(resulteq[,6])*100 # bias =.035 so unbiased
var(resulteq[,6])  #.00198
se(resulteq[,6])
# design effect
hist(resulteq[,3])
mean(resulteq[,3]) #DEFF = .95

# variances errors for subsamples
var(resulteq[,4]) # bachelor: .0031
var(resulteq[,5]) # master:   .0047

# 2. using 500 in each stratum (500/500)
result <- lapply(datasimstrat,stratify,sample1=500,sample2=500,popsize1=14000,popsize2=6000) 
# ow do analyses
resultsame <- data.frame(matrix(unlist(result), nrow=length(result), byrow=T))
resultsame[,6] <- resultsame[,1] - mean(grades$overall) 
colnames(resulteq) <- c("mean","se", "DEFF","meanS1","meanS2", "error")
hist(resultsame[,6])
mean(resultsame[,6])*100 # bias =.0028 so unbiased
var(resultsame[,6])  #.00248
se(resultsame[,6]) #.00498

# design effect
hist(resultsame[,3])
mean(resultsame[,3]) #DEFF = 1.18

# variances errors for subsamples
var(resultsame[,4]) # bachelor:
var(resultsame[,5]) # master:

# 3. using Neyman allocation (753/247)
result <- lapply(datasimstrat,stratify,sample1=746,sample2=254,popsize1=14000,popsize2=6000) 
# ow do analyses
resultney <- data.frame(matrix(unlist(result), nrow=length(result), byrow=T))
resultney[,6] <- resultney[,1] - mean(grades$overall) 
colnames(resulteq) <- c("mean","se", "DEFF","meanS1","meanS2", "error")
hist(resultney[,6])
mean(resultney[,6])*100 # bias =.04
var(resultney[,6])  #.001971
se(resultney[,6])

# design effect
hist(resultney[,3])
mean(resultney[,3]) #DEFF = .95

# variances errors for subsamples
var(resultney[,4]) # bachelor:
var(resultney[,5]) # master:


##############################################
# compute design effects  by hand

# 1. normal strat vs SRS
(se(resulteq[,6])^2)/(se(errorWO)^2) # design effect = .95
# 2.same group sizes vs SRS
se(resultsame[,6])^2/se(errorWO)^2 # design effect = 1.20
# 1. normal strat vs SRS
se(resultney[,6])^2/se(errorWO)^2 # design effect = .96 #hmm, small difference here due to ouliers in Neyman allocation

################################################################################################


# you can also compute this by hand (if you are like sado-masochistic) as follows:
# First the survey package (just with one sample) and 500/500

gradesBA <- grades[grades$V2=="Bachelor",]
gradesMA <- grades[grades$V2=="Master",]
gradesBA[,5] <- srswor(500,nrow(gradesBA))
gradesMA[,5] <- srswor(500,nrow(gradesMA))
stra1 <- grades[gradesBA$V5==1,]
stra2 <- grades[gradesMA$V5==1,]
stra1$fpc <- nrow(gradesBA)
stra2$fpc <- nrow(gradesMA)
stra2 <- grades[gradesMA$V6==1,]
datastra1 <- rbind(stra1,stra2)

# now verufy this with hand caalculations
## use formulas:
## estimate mean
meanstrat <- 14000/(14000+6000)*mean(datastra1$overall[datastra1$V2=="Bachelor"]) +
  6000/(14000+6000)*mean(datastra1$overall[datastra1$V2=="Master"])
meanstrat-mean(grades$overall) ## 0.011 (correct)

## standard error
varstrat <- (14000/(14000+6000))**2*(1-500/14000)*var(datastra1$overall[datastra1$V2=="Bachelor"])/(500) +
  (6000/(14000+6000))**2*(1-500/6000)*var(datastra1$overall[datastra1$V2=="Master"])/(500)
sqrt(varstrat) ## 0.0510
