
##########################################################

# LOOKING FORWARD TO WEEK 39? - see below

###########################################################


# in the lecture of week 39 we will discuss doing a simulation
# in the Take Home Exercise for week 39, we did the experiment only once, 
# and every time we get slightly different results.
# How would the results be if we repeat the experiment many times?

# Answer: we can do a simulation study
# the idea of a simulation study is the following:
# rather than drawing a sample once, why don't we pretend like we will repeat sampling X times.
# If our sampling procedure is correct, we should find that over the X samples, the mean averaged over
# all our samples should be about equal to our population value (which for the pack of cards is easy to know).
# We can also by averaging out all samples see what variation we get (for example in the number of spades) to 
# investigate the amount of error.
# The course " programming in R", will cover simulation studies in later weeks.

# First, I will create the population (called "y"). A deck of 52 cards, 13 of each suit.
y <- rep(c("spades","clubs","hearts","diamonds"),each=13)

# first, run a sample code to select 1 sample, and see whether the population works ok
sim1 <-as.data.frame(sample(y,40, replace=F)) #without replacement, simulating 0 and 1 (as in Spades is 1) 
sim2 <-as.data.frame(sample(y,40, replace=T)) #with replacement
sum(sim1=="spades")
sum(sim2=="spades")

# now, repeat the experiment a certain number of times
# first without replacement

nrep <- 10000 # do X experiments
nrows <- 40 # each with n draws from the deck of cards (we used 10 or 40 in the Take home exercise)

# create an empty dataframe to store the results
datasim1 <- data.frame(matrix(ncol = nrep, nrow = nrows))
# repeat the experiment, and put results in separate columns

set.seed(3514) # starting position to make sure we use the same 'random' starting value. 
# I choose 3514, but you can pick any number 
for  (i in 1:ncol(datasim1)){ # loop over rows
  datasim1[i] <- sample(y,40,replace=F) #
}
# now with replacement
set.seed(3514) # starting position
datasim2 <- data.frame(matrix(ncol = nrep, nrow = nrows))
for  (i in 1:ncol(datasim2)){ # loop over rows
  datasim2[i] <- sample(y,40,replace=T)
}

# now compute the proportion of Spades in each and save to a new object
# SPADES == 1 here
Wreplacesim <-  colSums(datasim2=="spades")/nrow(datasim2)
WOreplacesim <-  colSums(datasim1=="spades")/nrow(datasim1)

# get summary stats
summary(WOreplacesim) # .2502 
summary(Wreplacesim) # .2498 (again, quite close)
# plot the data
hist(WOreplacesim)
hist(Wreplacesim)

# compute mean across simulations (more precise than summary  function)
mean(WOreplacesim) #bias = .00016
mean(Wreplacesim) # bias = -.00024
# the estimator is unbiased, as the mean proportion should be 0.25 analytically

# compute variance
var(WOreplacesim) #.0011
var(Wreplacesim) # .0048

#################################

# to get difference in variance estimation clearer:
# redo the analysis, but select 52 out of 52 cards (all!)

# before running code below, what is effect on variance, when we select 52 cards from 
# a deck of 52, WITH, or WITHOUT replacement?

nrep <- 10000 # do X experiments
nrows <- 52 # each with n draws from the deck of cards.
# create an empty dataframe
datasim3 <- data.frame(matrix(ncol = nrep, nrow = nrows))
# repeat the experiment, and put results in separate columns

#library(prob)
set.seed(3514) # starting position
for  (i in 1:ncol(datasim3)){ # loop over rows
  datasim3[i] <- sample(y,52,replace=F)
}
# now with replacement
set.seed(3514) # starting position
datasim4 <- data.frame(matrix(ncol = nrep, nrow = nrows))
for  (i in 1:ncol(datasim4)) { # loop over rows
  datasim4[i] <- sample(y,52,replace=T)
}


# now compute the proportion of Spades in each and save to a new object
Wreplacesim <-  colSums(datasim4=="spades")
WOreplacesim <-  colSums(datasim3=="spades")

# get summary stats
summary(WOreplacesim)
summary(Wreplacesim)
# plot the data
hist(WOreplacesim)
hist(Wreplacesim)

# compute mean across simulations
mean(WOreplacesim) # exactly 13 (why is this not a surprise?)
mean(Wreplacesim) # almost 13
# the estimator is unbiased, as the mean proportion should be 13 analytically

# compute variance
var(WOreplacesim) # 0
var(Wreplacesim) # 9.82


# done!
save.image() 
