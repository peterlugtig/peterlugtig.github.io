# sampling some data for student grades
# Peter Lugtig, copyright 2017
# Questions: p.lugtig@uu.nl


#clean workspace
rm(list=ls(all=TRUE))


require(MASS) #for sampling multivariate normal distribution
#install.packages("sampling")
require(sampling) # for sampling
library(tidyr)
library(dplyr)
require(survey) # for design weights and corrections
se <- function(x) sd(x)/sqrt(length(x)) # standard error function

# Utrecht University - 149 programmes (lets assume two sizes (small and big))
# 20.000 students. 
# 50 BA-programmes with 280 students
# 150 MA programmes with 40 students

# generate  degrees - Feel free to change this, to test for different distribtions
#?set.seed
set.seed(11)
overall <- as.numeric(4+rpois(n=14000,lambda=2.8)+mvrnorm(n=14000,0,0.3))
overall[overall>10] <- 8.5
overallBA <-as.data.frame(overall)
overallBA[,2] <- "Bachelor"
# generate MA degrees
set.seed(11)
overall <- as.numeric(5.5+rpois(n=6000,lambda=2.0)+mvrnorm(n=6000,0,0.1))
overallMA <-as.data.frame(overall)
overallMA[,2] <- "Master"
overallBA[,3] <- rep(1:50,each=280)
overallMA[,3] <- rep(51:200, each=40)
# now add some between-cluster variance
overallMA[,1] <- overallMA[,1]+(overallMA[,3]/100)- 1
overallBA[,1] <- overallBA[,1]+(overallBA[,3]/40)- 1.25


#merge
grades <- rbind(overallBA,overallMA)
hist(grades$overall[grades$V2=="Bachelor"])
hist(grades$overall[grades$V2=="Master"])
grades$overall[grades$overall>10] <- 8.5+mvrnorm(n=nrow(grades[grades$overall>10]),0,0.2)

require(ggplot2) # for a nice plot
ggplot(grades, aes(overall,fill=V2)) +
  geom_histogram(binwidth=.5)
# get ICC for the data for 3 vars (1. degree, 2. programme, 3. interaction)
aov.grades <- summary(aov(grades$overall ~ grades$V2, grades))
between <- aov.grades[[1]][["Sum Sq"]][[1]]
total <- aov.grades[[1]][["Sum Sq"]][[1]]+ aov.grades[[1]][["Sum Sq"]][[2]]
(150/149)*(between/total) # ICC = .1805 for BA/MA

aov.grades <- summary(aov(grades$overall ~ grades$V3, grades))
between <- aov.grades[[1]][["Sum Sq"]][[1]]
total <- aov.grades[[1]][["Sum Sq"]][[1]]+ aov.grades[[1]][["Sum Sq"]][[2]]
(150/149)*(between/total) # ICC = .215 for BA/MA

aov.grades <- summary(aov(grades$overall ~ grades$V3:grades$V2, grades))
aov.grades
between <- aov.grades[[1]][["Sum Sq"]][[1]]
total <- aov.grades[[1]][["Sum Sq"]][[1]]+ aov.grades[[1]][["Sum Sq"]][[2]]
(150/149)*(between/total) # ICC = .217 for BA/MA

#grades$V3
# stats for Ba/MA
mean(grades$overall[grades$V2=="Bachelor"])   # 6.08
mean(grades$overall[grades$V2=="Master"])     # 7.57
var(grades$overall[grades$V2=="Bachelor"])    # 2.48
var(grades$overall[grades$V2=="Master"])      # 1.41
var(grades$overall)                           # 2.64
mean(grades$overall)                          # 6.52
se(grades$overall)                            # .01147895
# stas for programmes
ggplot(grades, aes(y=grades$overall,x=factor(grades$V3), fill=grades$V2)) +
  geom_boxplot()


# now take a sample
# srs
set.seed(11)
grades[,4] <-srswor(1000,20000)                                    #srswor
mean(grades$overall[grades$V4==1])                                  #6.49
se(grades$overall[grades$V4==1])                                    #.0510
sesrs <- se(grades$overall[grades$V4==1])                          
table(grades$V2,grades$V4)
grades$V5 <- 20000
grades$V6[grades$V2=="Bachelor"] <- 280
grades$V6[grades$V2=="Master"] <- 440

# cluster sampling
set.seed(11)
clusterselection <- as.data.frame(1:200)
clusterselection[,2] <- as.numeric(srswor(7,200)) # clusters 1,3,13,17,56,102,187 selected
datacluster1 <- subset(grades, grades$V3==1|grades$V3==3|grades$V3==13|grades$V3==17|grades$V3==56|grades$V3==102|grades$V3==187)
# or
#grades[,7] <- cluster(grades,clustername=c("V3"),size=7, method="srswor") # gives an error
grades[,7] <- 1:20000 #number for fpc

table(clusterselection)
# ?svydesign # for how to specify a cluster sample
clus1 <- svydesign(ids=~datacluster1$V3,
                   strata=NULL,
                   fpc = ~datacluster1$V5,
                   data=datacluster1)
svymean(datacluster1$overall,design=clus1, deff=T)# s.e.= .17397
# design effect by hand
clus1b <- svydesign(ids=~1,
                  data=datacluster1,
                  fpc = ~datacluster1$V5,)
svymean(datacluster1$overall,design=clus1b, deff=T) #s.e.=.040091
.17397/.04413 # design effect = 15.54 !massive!
# compute design effect using ICC as check
# get ICC
aov.grades <- summary(aov(datacluster1$overall ~ datacluster1$V3, datacluster1))
between <- aov.grades[[1]][["Sum Sq"]][[1]]
total <- aov.grades[[1]][["Sum Sq"]][[1]]+ aov.grades[[1]][["Sum Sq"]][[2]]
(150/149)*(between/total) # ICC = .066 for programme
(150/149)*(between/total) * 143 # (M-1) # ICC = 20  for programme
require(ggplot2)
ggplot(datacluster1, aes(y=datacluster1$overall,x=factor(datacluster1$V3), fill=datacluster1$V2)) +
  geom_boxplot()

# now a two stage sample
# step 1, select more clusters (15)
set.seed(11)
clusterselection[,3] <- as.numeric(srswor(15,200)) # clusters 1,3,13,17,24,34,56,84,102,137,160,,170,171,187,200 selected
table(clusterselection[,1],clusterselection[,3])
datacluster2a <- subset(grades, grades$V3==1|grades$V3==3|grades$V3==13|grades$V3==17|grades$V3==24|grades$V3==34|grades$V3==56|
                       grades$V3==84|grades$V3==102|grades$V3==137|grades$V3==160|grades$V3==170|grades$V3==171|grades$V3==187| grades$V3==200)
# step 2 take an SRS
set.seed(11)
datacluster2a[,4] <- srswor(750,2040)
datacluster2b <- subset(datacluster2a,V4==1)
clus2 <- svydesign(ids=~datacluster2b$V3+datacluster2b$V7, # note: two ids. for programme, and respondent id
                   fpc = ~datacluster2b$V5+datacluster2b$V6, # note: two: for total sample, and size of cluster
                   data=datacluster2b)
svymean(datacluster2b$overall,design=clus2, deff=T) #s.e.=.18019
# to compute design effect
clus2b <- svydesign(ids=~1,
                   data=datacluster2b)
svymean(datacluster2b$overall,design=clus2b, deff=T) #s.e.=..059009
.18019/.059009 # design effect is 9.32 (we gain by spreading around more clusters)

ggplot(datacluster2b, aes(y=overall,x=factor(V3), fill=V2)) +
  geom_boxplot()




########################################################################################

#### simulation study #######
# first, do it for one datasets, and then use lapply
# for one sample
set.seed(11)
s=sample(length(table(grades$V3)),14, replace=F) #select 14 clusters
grades2 <- grades %>% 
  filter_at(vars(V3), any_vars(. %in% s)) %>%
  as.data.frame()
# now select cases within clusters (if need be)
grades2$V8 <- 1:nrow(grades2)
grades2$V9<- srswor(0.5*nrow(grades2), nrow(grades2))
  grades3 <- subset(grades2, V9==1)
clus3 <- svydesign(ids=~grades3$V3+grades3$V8, # note: two ids. for programme, and respondent id
                   fpc = ~grades3$V5+grades3$V6, # note: two: for total sample, and size of cluster
                   data=grades3)
svymean(grades3$overall,design=clus3, deff=T)

######################################
# now within an apply function (see week stratified example for more elaborate example)

nrep <-1000
datasimclus <- rep(list(grades), times=nrep) #10000 times the grade dataframe 

cluster <- function(data,clustervar,ncluster,fraction) {
  s=sample(200,ncluster, replace=F) #select n clusters
  data2 <- data %>% 
     filter_at(vars(clustervar), any_vars(. %in% s)) %>%
     as.data.frame()
  data2$V8 <- 1:nrow(data2)
  data2$V9<- srswor(fraction*nrow(data2), nrow(data2)) # srs across whole sample, not in every cluster (not exact!)
  data3 <- subset(data2, V9==1)
  clus <- svydesign(ids=~data3$V3+data3$V8, # note: two ids. for programme, and respondent id
     fpc = ~data3$V5+data3$V6, # note: two: for total sample, and size of cluster
    data=data3)
  options(survey.lonely.psu = "certainty")
  clusmean <- svymean(~data3$overall, design=clus,deff=T) 
  print(list(clusmean,SE(clusmean),deff(clusmean))) # overall mean, and subgroup means
}

# now apply it and do simulation with different clusters and fractions

result10cl <- lapply(datasimclus,cluster,clustervar="V3",ncluster=10, fraction=1) 
result20cl <- lapply(datasimclus,cluster,clustervar="V3",ncluster=20, fraction=0.5) 
result50cl <- lapply(datasimclus,cluster,clustervar="V3",ncluster=50, fraction=0.2) 
result100cl <- lapply(datasimclus,cluster,clustervar="V3",ncluster=100, fraction=0.1) 
result200cl <- lapply(datasimclus,cluster,clustervar="V3",ncluster=200, fraction=0.05) 

# and do analyses
result10 <- data.frame(matrix(unlist(result10cl), nrow=length(result10cl), byrow=T))
result10[,4] <- result10[,1] - mean(grades$overall) 
colnames(result10) <- c("mean","se", "DEFF", "error")
hist(result10[,4])
mean(result10[,4])*100 # 879(!)
var(result10[,4])  #0.11
se(result10[,4])
# design effect
hist(result10[,3])
mean(result10[,3]) #DEFF = 23.13

# for 20 clusters
result20 <- data.frame(matrix(unlist(result20cl), nrow=length(result20cl), byrow=T))
result20[,4] <- result20[,1] - mean(grades$overall) 
colnames(result20) <- c("mean","se", "DEFF", "error")
hist(result20[,4])
mean(result20[,4])*100 # bias =-.34
var(result20[,4])  #
se(result20[,4])
# design effect
hist(result20[,3])
mean(result20[,3]) #DEFF = 11.7

# and 50 clusters
result50 <- data.frame(matrix(unlist(result50cl), nrow=length(result50cl), byrow=T))
result50[,4] <- result50[,1] - mean(grades$overall) 
colnames(result50) <- c("mean","se", "DEFF", "error")
hist(result50[,4])
mean(result50[,4])*100 # bias =
var(result50[,4]) 
se(result50[,4])
# design effect
hist(result50[,3])
mean(result50[,3]) #DEFF = 5.8

# and 100 clusters
result100 <- data.frame(matrix(unlist(result100cl), nrow=length(result100cl), byrow=T))
result100[,4] <- result100[,1] - mean(grades$overall) 
colnames(result100) <- c("mean","se", "DEFF", "error")
hist(result100[,4])
mean(result100[,4])*100 # bias =
var(result100[,4]) 
se(result100[,4])
# design effect
hist(result100[,3])
mean(result100[,3]) #DEFF = 4.2

# and 200 clusters(i.e., all of them!)
result200 <- data.frame(matrix(unlist(result200cl), nrow=length(result200cl), byrow=T))
result200[,4] <- result200[,1] - mean(grades$overall) 
colnames(result200) <- c("mean","se", "DEFF", "error")
hist(result200[,4])
mean(result200[,4])*100 # bias = -9%
var(result200[,4]) 
se(result200[,4])
# design effect
hist(result200[,3])
mean(result200[,3]) #DEFF = 3.25

# Now, why does this not work? some master clusters are quite small, and we sample too many cases from those programmes.

# conclusion: design effect is very large with 7 clusters. gets smaller if we sample more
# overall, not a very efficient way to sample though.

save.image()
