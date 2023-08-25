
library(readr)
library(MASS)
library(sampling)
library(ggplot2)
pop <- read_delim("covid-19-germany-landkreise.csv", 
               delim = ";", escape_double = FALSE, trim_ws = TRUE)

pop$whatsappfraud <- pop$Population * .0056 + round(rnorm(n=nrow(pop),mean=0,sd=400))

set.seed(99871)
pop$sample<- srswor(50,nrow(pop))
pop2 <- subset(pop,sample==1)
plot(pop2$Population,pop2$whatsappfraud)
pop2$whatsappfraud[pop2$whatsappfraud<0] <- 0

mean(pop2$whatsappfraud)/
mean(pop2$Population)

ggplot(pop2,aes(y=whatsappfraud, x=Population))+
  geom_point()+
  geom_smooth(method="lm")
