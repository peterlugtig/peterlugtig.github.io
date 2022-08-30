# loading raw ESS data and making a two country file

data <- read.spss("ESS5_HU_SDDF.sav",to.data.frame=T)
data2 <-read.spss("ESS5HU.sav",to.data.frame=T)
data3 <- merge(data,data2,by.x="IDNO",by.y="idno")
HU <- subset(data3, select=c(IDNO,CNTRY,PSU,PROB,STRATIFY,dweight,pspwght,pweight,region,hhmmb,eduyrs,gndr,agea,netuse,health,hincfel))

# Hungary has weird PSU variable:
table(HU$PSU) # ignore it, lets see if students see it

data <- read.spss("ESS5_SK_SDDF.sav",to.data.frame=T)
data2 <-read.spss("ESS5SK.sav",to.data.frame=T)
data3 <- merge(data,data2,by.x="IDNO",by.y="idno")
SK <- subset(data3, select=c(IDNO,CNTRY,PSU,PROB,STRATIFY,dweight,pspwght,pweight,region,hhmmb,eduyrs,gndr,agea,netuse,health,hincfel))

data <- rbind(HU,SK)
data$DAILYINT <- 0
data$DAILYINT[data$netuse=="Every day"] <- 1
table(data$DAILYINT)
data$hhmmb <- as.numeric(data$hhmmb)
data$eduyrs <- as.numeric(data$eduyrs)
data$agea <- as.numeric(data$agea)
saveRDS(data,"ESSR5_HUSK.RDS")
