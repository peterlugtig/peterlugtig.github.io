# testing Probability
# THE week 2
# survey data analysis
# p.lugtig@uu.nl
# last update: 11 Sept 2023

# hash signs (#) create comments that are not run, and are just there so you can understand your own code (or results)

######
rm(list=ls(all=TRUE)) # empty R (there are better ways to do this - will come in R course)

####### step 1. Create a population ### 
# the code below creates a "population" called "y" with four types of cards, each with 13 cards (so 52 in total)
# the command "rep" repeats the vector (c(...)), each 13 times. We then save this new object as a dataset (as.data.frame)
y <- as.data.frame(rep(c("spades","clubs","hearts","diamonds"),each=13))
y$number <- rep(c("2","3","4","5","6","7","8","9","10","jack","queen","king","ace"))
colnames(y) <- c("suit","number")

####### step 2.Install and load libraries

# there are at least two packages in R that are often used for sampling. We will here use the 'sampling' package.
# packages are small pieces of code that contain pre-made functions (like "rep").
install.packages("sampling") # install the sampling package on your laptop
library(sampling) # loads the library 

# if you want to know what is in a package, type
help(package="sampling")
# this will get you a list of functions, and (often) a user guide

###### step 3. draw a sample of size 10

# drawing a sample of 10 without replacement.
# I am here adding this as a column to the dataset:
y$draw1 <- srswor(10,nrow(y))
# You can see the dataset along with the sampled elements with the command
View(y)
# if you want to know what the function "srswor"  does, simply type:
?srswor

# now, lets see how many spades we just drew.
# We do this by taking the sum of all cards which are "spades".

sum(y$draw1[y$suit=="spades"]) # what is the number of cards with spades?
# the codes here says: "take the sum of all the draws (0,1) for cards that are spades
# write down your number here: __

# drawing a sample of 40 without replacement
y$draw2 <- srswor(40,nrow(y))
sum(y$draw2[y$suit=="spades"]) # what is the number of cards with spades?
# write down your number here: __

# drawing a sample of 10 WITH replacement
y$draw3 <- srswr(10,nrow(y))
sum(y$draw3[y$suit=="spades"]) # what is the number of cards with spades?
# note that here we can have elements sampled more than once
# write down your answer here: __

 #draw 40 cards with replacement
y$draw4 <- srswr(40,nrow(y))
sum(y$draw4[y$suit=="spades"]) # what is the number of cards with spades?
# write down your number here:  __

# again, you can View the samples you just drew here. Do you notice many elements being sampled more than once in draw 4?
View(y)

##############################################

# repeat the steps once more, so you get 4 new estimates for the number of spades.

# done, save your syntax file: file -> save as.

# Bring the 8 numbers to class next week
##############################################

# optional:
# did you note that every time you re-run this syntax you get different results? 
# annoying! The reason for this is that R chooses a random starting value for determining the random draw of cars
# we call this a seed.

# you can set the seed yourself as well! This ensures that R will give you the same result when you re-run your syntax
set.seed(3514)

# you may pick any number for a seed (e.g. your date of birth, favorite number).
# try it!


###############################################


# want to do more?
# optionally, look at the code "simulation SRS cards.R" for code that actually
# draws many samples to simulate what would happen if you repeat the sampling process n times .














