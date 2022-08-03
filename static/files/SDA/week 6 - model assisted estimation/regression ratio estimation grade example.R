# sampling some data for student grades
# Peter Lugtig, copyright 2017
# Questions: p.lugtig@uu.nl


#clean workspace
rm(list=ls(all=TRUE))
#install.packages("sampling")
#install.packages("ggplot2")
#install.packages("survey")

require(sampling) # for sampling
require(survey) # for design weights and corrections
require(ggplot2)
require(MASS)#for sampling multivariate normal distributio
se <- function(x) sd(x)/sqrt(length(x)) # standard error function

# Utrecht University - 200 programmes (lets assume two sizes (small and big))
# 20.000 students. 
# 50 BA-programmes with 280 students
# 150 MA programmes with 40 students

# generate  degrees
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
grades$overall[grades$overall>10] <- 8.5+mvrnorm(n=20000,0,0.2)

require(ggplot2) # for a nice plot
ggplot(grades, aes(overall,fill=grades$V2)) +
  geom_histogram(binwidth=.5)
# get ICC for the data for 3 vars (1. degree, 2. programme, 3. interaction)
aov.grades <- summary(aov(grades$overall ~ grades$V2, grades))
between <- aov.grades[[1]][["Sum Sq"]][[1]]
total <- aov.grades[[1]][["Sum Sq"]][[1]]+ aov.grades[[1]][["Sum Sq"]][[2]]
(150/149)*(between/total) # ICC = .1805 for BA/MA

aov.grades <- summary(aov(grades$overall ~ grades$V3, grades))
between <- aov.grades[[1]][["Sum Sq"]][[1]]
total <- aov.grades[[1]][["Sum Sq"]][[1]]+ aov.grades[[1]][["Sum Sq"]][[2]]
(150/149)*(between/total) # ICC = .214 for BA/MA

aov.grades <- summary(aov(grades$overall ~ grades$V3:grades$V2, grades))
aov.grades
between <- aov.grades[[1]][["Sum Sq"]][[1]]
total <- aov.grades[[1]][["Sum Sq"]][[1]]+ aov.grades[[1]][["Sum Sq"]][[2]]
(150/149)*(between/total) # ICC = .145 for BA/MA

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
# Take a two-stage cluster sample. 
# step 0: for comparison, take srs
set.seed(11)
grades[,4] <-srswor(1000,20000)                                    #srswor
mean(grades$overall[grades$V4==1])                                  #6.49
se(grades$overall[grades$V4==1])                                    #.0510
sesrs <- se(grades$overall[grades$V4==1])                          
table(grades$V2,grades$V4)
grades$V5 <- 20000
grades$V6[grades$V2=="Bachelor"] <- 280
grades$V6[grades$V2=="Master"] <- 40
grades[,7] <- 1:20000 #number for fpc
# now a two stage sample
# step 1, select 8 clusters from BA
clusterselection <- as.data.frame(1:200)
set.seed(11)
clusterselection[1:50,2] <- as.numeric(srswor(8,50)) # clusters 1,3,4,13,14,25,43,49 selected

# step 1 select 8 clusters from MA
set.seed(11)
clusterselection[51:200,2] <- as.numeric(srswor(8,150)) # clusters 51,53,60,63,92,126,189,200
table(clusterselection[,1])
dataclusters <- subset(grades, grades$V3==1|grades$V3==3|grades$V3==4|grades$V3==13|grades$V3==14|grades$V3==25|grades$V3==43|grades$V3==49|
                               grades$V3==51|grades$V3==53|grades$V3==60|grades$V3==63|grades$V3==92|grades$V3==126| grades$V3==189| grades$V3==200)
# step 2 take an SRS from every cluster
set.seed(11)
dataclusters[1:280,4] <- srswor(112,280) 
dataclusters[281:560,4] <- srswor(112,280) 
dataclusters[561:840,4] <- srswor(112,280) 
dataclusters[841:1120,4] <- srswor(112,280) 
dataclusters[1121:1400,4] <- srswor(112,280) 
dataclusters[1401:1680,4] <- srswor(112,280) 
dataclusters[1681:1960,4] <- srswor(112,280) 
dataclusters[1961:2240,4] <- srswor(112,280) 
dataclusters[2241:2280,4] <- srswor(15,40) 
dataclusters[2281:2320,4] <- srswor(15,40)  
dataclusters[2321:2360,4] <- srswor(15,40) 
dataclusters[2361:2400,4] <- srswor(15,40) 
dataclusters[2401:2440,4] <-  srswor(15,40)  
dataclusters[2441:2480,4] <-  srswor(15,40) 
dataclusters[2481:2520,4] <-  srswor(15,40) 
dataclusters[2521:2560,4] <-  srswor(15,40)
dataclustersrs <- subset(dataclusters,V4==1)
# compute weights 
dataclustersrs[,8] <- 2.5 #srs weights
dataclustersrs[1:896,9] <- 6.25 #cluster weights BA
dataclustersrs[897:1016,9] <- 18.75 #cluster weights BA
dataclustersrs[,10] <- dataclustersrs[,8]*dataclustersrs[,9] # total weights
dataclustersrs[,11] <- dataclustersrs[,10]/mean(dataclustersrs[,10])

clus2 <- svydesign(ids=~dataclustersrs$V3+dataclustersrs$V7, # note: two ids. for programme, and respondent id
                   strata=~dataclustersrs$V2,
                   fpc = ~dataclustersrs$V5+dataclustersrs$V6, # note: two: for total sample, and size of cluster
                   data=dataclustersrs)

# or equivalent solution with weights
clus2a <- svydesign(ids=~dataclustersrs$V3+dataclustersrs$V7, # note: two ids. for programme, and respondent id
                    #  strata=~dataclustersrs$V2,
                    weights=~dataclustersrs$V11,
                    #   fpc = ~dataclustersrs$V5+dataclustersrs$V6, # note: two: for total sample, and size of cluster
                    data=dataclustersrs)
svymean(dataclustersrs$overall,design=clus2, deff=T) #s.e.= .15115
# to compute design effect
clus2b <- svydesign(ids=~1,
                   data=dataclustersrs)
svymean(dataclustersrs$overall,design=clus2b, deff=T) #s.e.= .051415
.15115^2/.051406^2 #correct:  design effect is 8.86 (we gain by spreading around more clusters)
# comparable design ignoring clustering
clus2c <- svydesign(ids=~1, strata=dataclustersrs$V2,data=dataclustersrs)
clus2d <- svydesign(ids=~dataclustersrs$V3+dataclustersrs$V7, fpc = ~dataclustersrs$V5+dataclustersrs$V6, 
                   data=dataclustersrs)
svymean(dataclustersrs$overall,design=clus2c, deff=T) #s.e.= .048572
svymean(dataclustersrs$overall,design=clus2d, deff=T) #s.e.= .15369
ggplot(dataclustersrs, aes(y=dataclustersrs$overall,x=factor(dataclustersrs$V3), fill=dataclustersrs$V2)) +
  geom_boxplot()

var(dataclustersrs$V11)


# plotting
# without weights 
ggplot(dataclustersrs, aes(dataclustersrs$overall)) +
  geom_histogram(binwidth=0.5)
# using weights
ggplot(dataclustersrs, aes(dataclustersrs$overall,weight=dataclustersrs$V11)) +
  geom_histogram(binwidth=0.5)

#################### ###########################

# add happiness to model
library(MASS)
grades[,8] <- grades$overall + mvrnorm(n=20000,-1.5,0.8)/1.3
grades$V8[grades$V8<0] <- 0
grades$V8[grades$V8>10] <- 10
qplot(grades[,1],grades[,8])
mean(grades$V8)


#take an srs for student happiness
set.seed(11)
grades[,4] <-srswor(1000,20000)  #                             #srswor
mean(grades$V8[grades$V4==1])                                  #5.32
se(grades$V8[grades$V4==1])                                    #.05477
sesrs <- se(grades$V8[grades$V4==1])                          
table(grades$V2,grades$V4)
grades$V5 <- 20000
grades$V6[grades$V2=="Bachelor"] <- 280
grades$V6[grades$V2=="Master"] <- 40
grades[,7] <- 1:20000 #number for fpc
#grades[,9] <- grades$overall/grades$V8
#grades$V9[grades$V9>5] <- 1

# add some error to the happiness data
grades[,9]<- NA
grades$V9[grades$V8<11] <- 5
grades$V9[grades$V8<8] <- 4
grades$V9[grades$V8<6.5] <- 3
grades$V9[grades$V8<5] <- 2
grades$V9[grades$V8<3.5] <-1

hist(grades$V9)
table(grades$V9)

################################################
# method 2. ratio estimation to two-stage cluster sample

# now ratio estimation
gradesrs <- subset(grades, V4==1)
  
ggplot(gradesrs,aes(gradesrs$V9))+
  geom_histogram() # goes wrong, strange ratios, due to low values
# using survey package
cluster.design <- svydesign(ids=~gradesrs$V7, # srs, so not necessaru
                    #  strata=~
                    #weights=~
                    #   fpc = ~, 
                    data=gradesrs)

############################################### get estimates #################################


svymean(gradesrs$V8,design=cluster.design) # 1. srs estimate: 
# mean=5.3406, se = .0548
svyratio(~gradesrs$V8, ~gradesrs$overall, design = cluster.design) 
predict(svyratio(~gradesrs$V8, ~gradesrs$overall, design = cluster.design),total= meangradesrs)#2. ratio estimate 
# mean= 5.3406, s.e = .023
svytotal(~gradesrs$V8, design = cluster.design)

# in regression, we can use different models, with/without intercepts
# here model without intercept to mimic ratio estimation (leads to somewhat biased estimates!)
srs.regression <- lm(gradesrs$V8~0+gradesrs$overall,data=gradesrs, subset=(V4==1)) #s.e. =.0036
summary(srs.regression)
srs.regression1 <- lm(gradesrs$V8~0+gradesrs$overall+gradesrs$V6,data=gradesrs, subset=(V4==1)) #s.e. =.0036
summary(srs.regression1)

# and get estimates without intercept 
mean(predict(srs.regression <- svyglm(V8 ~ 0+overall,design=cluster.design))) #mean= 5.40
se(predict(srs.regression <- svyglm(V8~ 0+overall,design=cluster.design))) #s.e. =.042
mean(predict(srs.regression1 <- svyglm(V8 ~ 0+overall+V6,design=cluster.design))) #mean= 5.37
se(predict(srs.regression1 <- svyglm(V8~0+overall+V6,design=cluster.design))) #s.e. =.0457
# now using intercept (as in Lohr - for comparison
mean(predict(srs.regression <- svyglm(V8 ~ overall,design=cluster.design))) #mean= 5.34
se(predict(srs.regression <- svyglm(V8~ overall,design=cluster.design))) #s.e. =.05029124
mean(predict(srs.regression1 <- svyglm(V8 ~ overall+V6,design=cluster.design))) #mean= 5.37
se(predict(srs.regression1 <- svyglm(V8~overall+V6,design=cluster.design))) #s.e. =.05029332
# lets say we use last model

srs.regression1 <- svyglm(V8 ~ overall+V6,design=cluster.design)
# predict out-of-sample (the proof of the pudding)
grades$pred <- predict(srs.regression1,newdata=gradesrs, mean=mean(gradesrs$V8))
mean(grades$pred) #mean= 5.34
se(grades$pred) #se .01124

################################# now oversample good students#####################################

table(grades$V9)
# sample: 10 - 85 - 190 - 360- 355
grades$V4[grades$V9==1] <- srswor(110,3113)
grades$V4[grades$V9==2] <- srswor(185,5094)
grades$V4[grades$V9==3] <- srswor(190,6134)
grades$V4[grades$V9==4] <- srswor(260,4401)
grades$V4[grades$V9==5] <- srswor(255,1258)
grades$V10[grades$V9==1] <- 3112 # fpc
grades$V10[grades$V9==2] <- 5094
grades$V10[grades$V9==3] <- 6134
grades$V10[grades$V9==4] <- 4401
grades$V10[grades$V9==5] <- 1258
table(grades$V4,grades$V9)
ggplot(grades,aes(y=grades$V8,x=grades$overall, colour=factor(grades$V4)))+
  geom_point()

gradesstrata <-subset(grades,V4==1)

ggplot(gradesstrata,aes(gradesstrata$V8))+
  geom_histogram()
ggplot(gradesstrata,aes(y=gradesstrata$V8,x=gradesstrata$overall))+
  geom_point()
ggplot(gradesstrata,aes(y=gradesstrata$V8,x=gradesstrata$overall,colour=gradesstrata$V6))+
  geom_point()
summary(gradesstrata)
strata.design <- svydesign(ids=~gradesstrata$V7, 
                            strata=gradesstrata$V9,
                          #weights=~
                           fpc = gradesstrata$V10, 
                          data=gradesstrata)

# get estimates
svymean(gradesstrata$V8,design=strata.design) # 5.3365, se.=.0163

svyratio(~gradesstrata$V8, ~gradesstrata$overall, design = strata.design) # s.e = .0037
predict(svyratio(~grades$V8, ~grades$overall, design = strata.design),total= meangradesrs)

#2. ratio estimate 
# mean = 5.32, s.e. = .026
svytotal(~gradesstrata$V8, design = strata.design)

# now, regression model witout intercept
strata.regression <- svyglm(V8~0+overall+V6,design=strata.design)
summary(strata.regression)
resid.strata <- resid(strata.regression)
plot(gradesstrata$V8,resid.strata)

mean(predict(strata.regression <- svyglm(V8 ~ 0 +overall+V6,design=strata.design))) 
se(predict(strata.regression <- svyglm(V8~0 +overall+V6,design=strata.design)))

strata.regression1 <- svyglm(V8 ~ overall+V6,design=strata.design)
# predict out-of-sample
grades$pred2 <- predict(strata.regression1,newdata=grades, mean=mean(grades$V8))
mean(grades$pred2) #mean= 5.365331
se(grades$pred2) #se .01106978

ggplot(grades,aes(y=gradesrs$V8,x=gradesrs$overall))+
  geom_point()

############################# now 1000 from most extreme values based on grade ############################

summary(grades)
grades$V4[grades$V9==1] <- srswor(200,3160)
grades$V4[grades$V9==5] <- srswor(800,1283)
grades$V10[grades$V9==1] <- 3160 # fpc
grades$V10[grades$V9==5] <- 1283
ggplot(grades,aes(y=grades$V8,x=grades$overall, colour=factor(grades$V4)))+
  geom_point()

gradesweird <-subset(grades,V4==1)
ggplot(gradesweird,aes(gradesweird$V8))+
  geom_histogram()
weird.design <- svydesign(ids=~gradesweird$V7, 
                           strata=gradesweird$V9,
                           #weights=~
                           fpc = gradesweird$V10, 
                           data=gradesweird)

# 1. design-based estimation
svymean(gradesweird$V8,design=weird.design) 
# mean= 5.39, se=.0152

# 2. ratio estimation
svyratio(~gradesweird$V8, ~gradesweird$overall, design = weird.design)
predict(svyratio(~gradesweird$V8, ~gradesweird$overall, design = weird.design),total= meangradeweird[[1]])
# mean = 5.369, s.e. = .01915657

# 3. regression estimation
svytotal(~gradesweird$V8, design = weird.design)
weird.regression <- svyglm(V8~0+overall+V6,design=weird.design)
resid.weird <- resid(weird.regression)
plot(gradesweird$V8,resid.weird)
ggplot(gradesweird,aes(y=gradesweird$V8, x=gradesweird$overall))+
  geom_point()

weird.regression1 <- svyglm(V8 ~ overall+V6,design=weird.design)
# predict out-of-sample
grades$pred3 <- predict(weird.regression1,newdata=gradesrs, mean=mean(gradesrs$V8))

mean(grades$pred3) #mean= 5.3666097
se(grades$pred3) #se .01108622


###################################################

# ffollow-ups to show difference in predictions
# they are all rather small.

# plot predictedsrs, predictedstrata
ggplot(grades,aes(y=grades$pred,x=grades$pred2))+
  geom_point()
# plot predictedsrs, predictedextremes
ggplot(grades,aes(y=grades$pred,x=grades$pred3))+
  geom_point()
# plot predictedstrata, predictedextremes
ggplot(grades,aes(y=grades$pred2,x=grades$pred3))+
  geom_point()



