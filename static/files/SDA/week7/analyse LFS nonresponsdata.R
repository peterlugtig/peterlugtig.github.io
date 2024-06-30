# plaats nonresponse in LFS
# op basis van artikel van Luiten, de Leeuw en Hox (2018)
# p.lugtig@uu.nl

# download data uit data archive austria
################################################

library(haven) #reads .zsav
library(tidyr)
library(ggplot2)
#install.packages("gganimate")
#library(gganimate)
#install.packages("devtools")
#install.packages("rlang")
#devtools::install_github('thomasp85/gganimate')
library(gganimate)
#install.packages("magick")
library(magick)


#?read_sav
data <- read_sav("10034_da_en_v1_0.zsav")
data$Year <- data$YearCode+1998

#add the countries
LFSRR <- read.csv("Plot_data.csv", header=F,sep=";",dec=",")
LFSRR <- LFSRR[,c(1,2,5,6,7,8)]

colnames(LFSRR) <- c("Country", "Year", "PropResp",
                    "Frame", "Mode", "Survey")
LFSRR$Response <- as.numeric(LFSRR$Response)
LFSRR$Response <- round(LFSRR$Response, 4)
LFS <- subset(LFSRR, Survey=="LFS" & Year=="2014")
LFS <- LFS[,1:4]

data2 <- subset(data, Year=="2014") # create a subset so that they match on year
data3 <- merge(x=data2,y=LFS, by="PropResp",all=TRUE)
data$PropResp

# conclusion: they dont match. There are small differences between the reported numbers in database
# and in official reports. Perhaps Joop et al, used old releases, or did something with eligibility rules etc. 
# ah well. Just go along with the database of Joop only.


#####################################################

# get it into ggplot
# for all
 fit <- lm(PropResp ~ Year, data = data)

ggplot(data,aes(y=data$PropResp, x=data$Year, colour=as.factor(data$CountryID)))+
  geom_line()+ #adds the lines
   scale_colour_discrete(guide = FALSE) + # take out the legend
  ylab("Response rate")+
  xlab("year of survey")+
  geom_smooth(data=data, aes(group=1,y=data$PropResp,x=data$Year),
              method = "loess", se = FALSE,size=1.5, colour="black") #+adds a loess function
dev.print(pdf, "Nonresponse in LFS surveys in Europe.pdf")



# for nonmandatory only
table(data$mandatory)
data2 <- subset(data, mandatory==0)
ggplot(data2,aes(y=PropResp, x=Year, colour=as.factor(CountryID)))+
  geom_line()+
   scale_colour_discrete(guide = FALSE) + # take out the legend
  ylab("Response rate")+
  xlab("year of survey")+
  geom_smooth(data=data2, aes(group=1,y=PropResp, x=Year)
              ,method = "loess", se = FALSE,size=1.5, colour="black")
dev.print(pdf, "Nonresponse in LFS non-mandatory surveys in Europe.pdf")

# and  an animations
# first set the minimal theme
theme_set(theme_minimal())

animation <- ggplot(data2,aes(y=PropResp, x=Year,colour=factor(CountryID)))+
  geom_line()+
  geom_point() +
  theme(legend.position = "none") + 
  ylab("Response rate")+
  xlab("year of fieldwork")+
  labs(title = 'Year:{as.integer(frame_along)}')+
  transition_reveal(Year)

animate(animation, renderer=magick_renderer(), end_pause=30)
anim_save(file="animation.gif")
