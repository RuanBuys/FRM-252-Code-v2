# MONTE CARLO SIMULATION

# this section considers simulation in a monte carlo setup.
# firs we consider some basics. R has many built in functions to draw random samples
# from well-known distributions:
# Normal:   rnorm()
# Uniform:  runif()
# Gamma:    rgamma()
# and so forth. in each of these functions you would need to specify at least:

# 1. Number of samples
# 2. Paramater values

# all of these functions have default values set, for example rnorm() assumes
# a mean of 0 and sd of 1


# Lets simulate a bunch of random observations where X~N(0,1):

x<-rnorm(n=1000)

#we can now investigate whether x is roughly normally distributed (which we know it is),
# by plotting a histogram thereof:

hist(x)

#notice, the graph roughly resembles a normal curve. lets investigate further:

mean(x)
sd(x)

# notice the above is close to the actual values of 0 and 1!


#------------------------- DRAWING RANDOM NUMBERS----------------

# to generate a random number between 0 and 1, you can use the runif() function with bounds
# of 0 and 1 (the default).

x<-runif(n=1000)

# Now lets simulate a coin being flipped! We have a random number between 0 and 1. So lets
# say if that value is <0.5, then it is heads, and if >0.5 then tails. and lets count them:

n_heads<-0
n_tails<-0

for( i in 1:length(x)){
  if(x[i]<=0.5){
    n_heads<- n_heads+1
  }
  if( x[i] >0.5){
    n_tails<-n_tails+1
  }
}

# notice in the above that the values are almost equal to another, that is because
# we allowed a 50/50 split between [0,1]

# suppose we want to simulate a biased coin, which gives head 70% of the time, and tails
# 30%

n_heads<-0
n_tails<-0

for( i in 1:length(x)){
  if(x[i]<=0.7){
    n_heads<- n_heads+1
  }
  if(x[i]>0.7){
    n_tails<-n_tails+1
  }
}

# Notcie now you have a roughly a 70/30 split between heads and tails