# PEW exercise 

# lbraries and data
library(foreign)
library(survey)
library(dplyr)
library(MatchIt)
library(plyr)
library(cem)
library(mice)
library(sampling)


########################################################


#nonprob <- read.spss("nonprob_2015//nonprob_2015.sav",to.data.frame=T)
nonprob2 <-read.spss("For public release//df_labeled.sav",to.data.frame=T,us.missings=T)
table(nonprob2$vendor)

# names(nonprob2)
names(nonprob2)
names(popdata)

popdata <- read.spss("For public release//synthetic_population_dataset.sav",to.data.frame=T)

names(popdata)
head(popdata)
table(popdata$RACETHN)
table(popdata$DIVISION)
table(nonprob2$RACE_ACS_6)
table(nonprob2$MARITAL_ACS)
table(popdata$HHSIZECAT)
table(popdata$BORN_ACS)
table(nonprob2$BORN)
  table(nonprob2$IDEO3)

#### overlapping variables
  # make a codebook here


nonprob2$GENDER[nonprob2$GENDER=="Refused"] <-NA
nonprob2$FOLGOV[nonprob2$FOLGOV=="Refused"] <-NA  
nonprob2$TALK_CPS[nonprob2$TALK_CPS=="Refused"] <-NA
nonprob2$COMGRP_CPS[nonprob2$COMGRP_CPS=="Refused"] <-NA
nonprob2$OWNGUN_GSS[nonprob2$OWNGUN_GSS=="Refused"] <-NA
nonprob2$PUB_OFF_CPS[nonprob2$PUB_OFF_CPS=="Refused"] <-NA
nonprob2$TABLET_CPS[nonprob2$TABLET_CPS=="Refused"] <-NA
nonprob2$TEXTIM_CPS[nonprob2$TEXTIM_CPS=="Refused"] <-NA
nonprob2$SOCIAL_CPS[nonprob2$SOCIAL_CPS=="Refused"] <-NA
nonprob2$TALK_CPS[nonprob2$TALK_CPS=="Refused"] <-NA
nonprob2$MARITAL_ACS[nonprob2$MARITAL_ACS=="Refused"] <-NA
nonprob2$MIL_ACS_REC[nonprob2$MIL_ACS_REC=="Refused"] <-NA
nonprob2$BORN_ACS[nonprob2$BORN_ACS=="Refused"] <-NA
nonprob2$REGISTERED[nonprob2$REGISTERED=="Refused"] <-NA
nonprob2$VOTE14[nonprob2$VOTE14=="Refused"] <-NA
nonprob2$FAMINC5[nonprob2$MARITAL_ACS=="Refused"] <-NA
nonprob2$FAMINC5[nonprob2$FAMINC5=="Refused"] <-NA
nonprob2$EMPLOYED[nonprob2$EMPLOYES=="Refused"] <-NA
nonprob2$MARITAL_ACS[nonprob2$MARITAL_ACS=="Refused"] <-NA
nonprob2$HOME_ACS_REC[nonprob2$HOME_ACS_REC=="Refused"] <-NA
nonprob2$HHSIZECAT[nonprob2$HHSIZECAT=="Refused"] <-NA
nonprob2$RELIGCAT[nonprob2$RELIGCAT=="Refused"] <-NA
nonprob2$VOLSUM[nonprob2$VOLSUM=="Refused"] <-NA
nonprob2$TRUST_CPS[nonprob2$TRUST_CPS=="Refused"] <-NA
nonprob2$EDUCCAT5[nonprob2$EDUCCAT5=="Refused"] <-NA
nonprob2$CITIZEN_REC[nonprob2$CITIZEN_REC=="Refused"] <-NA
nonprob2$EMPLOYED[nonprob2$EMPLOYED=="Refused"] <-NA
nonprob2$IDEO3[nonprob2$IDEO3=="Refused"] <-NA


# keep cases where no missing
nonprob3 <- subset(nonprob2, select=c(rid,vendor,GENDER,
                                     AGE, EDUCCAT5, DIVISION,MARITAL_ACS,HHSIZECAT,CHILDRENCAT, CITIZEN_REC, 
                                     BORN_ACS, FAMINC5, EMPLOYED,MIL_ACS_REC,HOME_ACS_REC ,FDSTMP_CPS ,TENURE_ACS,
                                     PUB_OFF_CPS ,COMGRP_CPS,TALK_CPS ,TRUST_CPS,TABLET_CPS,TEXTIM_CPS,SOCIAL_CPS,
                                     VOLSUM,REGISTERED,VOTE14,PARTYSCALE5,RELIGCAT,IDEO3,OWNGUN_GSS,FOLGOV,VOTESUM))
summary(nonprob3)
nonprob4 <- nonprob2[complete.cases(nonprob3),] # ok, so we lose 1800 cases, fine.
nonprob5 <- nonprob3[complete.cases(nonprob3),] # ok, so we lose 1800 cases, fine.

# start of codebook
GENDER # make, female
AGE # age in years
EDUCCAT5
DIVISION # region
#RACETHN 
MARITAL_ACS # 5 cat marital
HHSIZECAT #1,2 3+
CHILDRENCAT
CITIZEN_REC # US citizen
BORN_ACS # born inside, or outside USA
FAMINC5 #income in5 bracks: <20k, 20-40,40-75,75-150, >150
EMPLOYED
MIL_ACS_REC # enever been on active military, has been in military
HOME_ACS_REC # 1. own, 2. rent 3. rent without pay
FDSTMP_CPS # 1. yes foodstamps, 2. no
TENURE_ACS # did you live on current address one year ago
PUB_OFF_CPS #?
COMGRP_CPS #
TALK_CPS #  talk to family 5 cat
TRUST_CPS # do you trust the people in your neighboorhood (5 cat)
TABLET_CPS # has a tablet
TEXTIM_CPS # has a device that can send texts (mobile)
SOCIAL_CPS # active on social media
VOLSUM # volunteering
REGISTERED # registered to vote: yes, no
VOTE14 # voted in 2014 miterm election 
PARTYSCALE5 #party attachment 5 categories
RELIGCAT #5 cat religious affiliation:  roman catholic, evangelical, main protestant, other, unaffiliated
IDEO3 # liberal, moderate, conservative
OWNGUN_GSS # owns a gun (yes, no)
FOLGOV # do you follow the government

popdata2 <- subset(popdata, select=c(GENDER,
AGE, EDUCCAT5, DIVISION,MARITAL_ACS,HHSIZECAT,CHILDRENCAT, CITIZEN_REC, 
BORN_ACS, FAMINC5, EMPLOYED,MIL_ACS_REC,HOME_ACS_REC ,FDSTMP_CPS ,TENURE_ACS,
PUB_OFF_CPS ,COMGRP_CPS,TALK_CPS ,TRUST_CPS,TABLET_CPS,TEXTIM_CPS,SOCIAL_CPS,
VOLSUM,REGISTERED,VOTE14,PARTYSCALE5,RELIGCAT,IDEO3,OWNGUN_GSS,FOLGOV))

# save the nonprob data
nonprob5$sample <- srswor(15000,nrow(nonprob5))
nonprob6 <- nonprob5[nonprob5$sample==1,]
nonprob7 <- nonprob5[nonprob5$sample==0,]

nonprob6$sample <- NULL
names(nonprob6)
saveRDS(nonprob6, "PEW nonprob samples.RDS")
saveRDS(nonprob7, "PEW nonprob samples HOLDOUT.RDS")

# and the poipulation data
saveRDS(popdata2, "PEW population data.RDS")
##################################################

#now, lets weight
# poststratification example
svy.unweighted <-svydesign(ids=~rid, data=nonprob4)

#gendervote<- as.data.frame(table(nonprob2$GENDER,nonprob2$VOTE14))
gendervote.dist <-xtabs(~GENDER+VOTE14, data=popdata2)
poststratdesign <- postStratify(design= svy.unweighted, strata =~GENDER+VOTE14, population=gendervote.dist) 

# for Calibration (linear weighting)
gender.dist <- as.data.frame(table(popdata2$GENDER))
colnames(gender.dist) <- c("GENDER", "Freq")
vote.dist <- as.data.frame(table(popdata2$VOTE14))
colnames(vote.dist) <- c("VOTE14", "Freq")
rakeddesign  <- rake(design=svy.unweighted,sample.margins=list(~GENDER,~VOTE14), population.margins=list(gender.dist,vote.dist)) #raking

# add the weights if you want to do diagnostics
nonprob4$PSweights <- poststratdesign$prob
nonprob4$rakeweights <- rakeddesign$prob

# now merge with rid.
names(nonprob4)

# mass imputation
summary(nonprob2)
# first expand the popualtion data.
population <- popdata2 %>% 
  slice(rep(row_number(), 4))
population$treat <- 0
nonprob6$treat <- 1

# first match
total <- rbind.fill(population,nonprob6)
m.out <- matchit(treat ~ GENDER+
                 AGE+ EDUCCAT5+ DIVISION+MARITAL_ACS+HHSIZECAT+CHILDRENCAT+ CITIZEN_REC+ 
                 BORN_ACS+ FAMINC5+ EMPLOYED+MIL_ACS_REC+HOME_ACS_REC +FDSTMP_CPS +TENURE_ACS+
                 PUB_OFF_CPS +COMGRP_CPS+TALK_CPS +TRUST_CPS+TABLET_CPS+TEXTIM_CPS+SOCIAL_CPS+
                 VOLSUM+REGISTERED+VOTE14+PARTYSCALE5+RELIGCAT+IDEO3+OWNGUN_GSS+FOLGOV, method="nearest",data=total)

m.data <- match.data(m.out, data = total,distance = "prop.score")

populationdata1 <- subset(m.data, select=c(GENDER,
AGE, EDUCCAT5, DIVISION,MARITAL_ACS,HHSIZECAT,CHILDRENCAT, CITIZEN_REC, 
BORN_ACS, FAMINC5, EMPLOYED,MIL_ACS_REC,HOME_ACS_REC ,FDSTMP_CPS ,TENURE_ACS,
PUB_OFF_CPS ,COMGRP_CPS,TALK_CPS ,TRUST_CPS,TABLET_CPS,TEXTIM_CPS,SOCIAL_CPS,
VOLSUM,REGISTERED,VOTE14,PARTYSCALE5,RELIGCAT,IDEO3,OWNGUN_GSS,FOLGOV,VOTESUM),subset=c(treat==1))

population <- popdata2 %>% 
  slice(rep(row_number(), 50))
total <- rbind.fill(populationdata1,population)
saveRDS(total, file="complete USA population data with matched survey results.RDS")

# now we can impute the votesum Variable!
# imputation is slow!


tempData <- mice(total,m=5,maxit=50,meth='pmm',seed=500)
vote <- with(tempData,mean(VOTESUM))

####### and the outcomes
svyby(~VOTESUM,~vendor, design=svy.unweighted,svymean)[2]# p(Trump) across vendors.
svyby(~VOTESUM,~vendor, design=poststratdesign,svymean)[2]
svyby(~VOTESUM,~vendor, design=rak eddesign,svymean)[2]
print(vote) # imputation



# import the weights
weights <- readRDS("weight_matrices//n02000_rake_demos.RDS")




















####### old bits

gender <- nonprob$Q0042
age <- nonprob$
  racethn <- nonprob$racethn
educat5 <- nonprob$Q0050
division <- nonprob$
  marital <- nonprob$Q0048
hhsizecat <- nonprob$Q0051+nonprob$Q0052
childrencat <- nonprob$Q0052
metro <- nonprob$
  born <- nonprob$
  faminc <- nonprob$Q0056
employed <- nonprob$Q0049_0001
worker_class <- nonprob$
  usual_hrs_per_wee <- nonprob$k
hours_vary <- nonprob$
  mil <- nonprob$
  home <- nonprob$
  tabletown <- nonprob$
  textim <- nonprob$
  social <- nonprob$
  volsum <- nonprob$
  registered <- nonprob$
  vote14 <- nonprob$
  partyscale5 <- nonprob$
  relicat <- nonprob$
  ide03 <- nonprob$
  folgov <- nonprob$
  owngun <- nonprob$
  survey <- <- nonprob$Survey
