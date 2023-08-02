# For this simulation, we simulate a drunk student walking home. lets assume the following:
# 1. He continually walks forward as he knows where his house is (somewhat)
# 2. As he walks, he sways left or right with probability of 30/30
# 3. He manages to stay in the same line with probability 40
# 
# That is, from the previous step to the next, he either:
#             sways left          P(X=L)=0.3;
#             sways right         P(X=R)=0.3;
#             stays in the center P(X=C)=0.4;

#How would we simulate this, and plot his trajectory?

# Lets encode it: right: -1     left: 1     Center:0
# So now the problem boils down to simulating 0,1,-1


# lets initialise the steps he takes, say in total 50 of them

steps<-numeric(50)

for(i in 1:length(steps)){
  #simualte a random number between 0 and 1
  randNum<-runif(1)
  if(randNum < 0.3){        #that is, takes on first 30% of [0,1]
    steps[i]<- -1
  }
  
  if(randNum>=0.3 & randNum <0.6){      #takes on next 30% of [0,1]
    steps[i]<- 1
  }
  
  if(randNum >=0.6){              #takes on the remaining 40% of [0,1]
    steps[i]<-0
  }
}

# so now we know if he swayed left/right/center
# now we need to get his overall position. This is by taking his current position (say 0)
# and then adding next step (say -1). His new position would then be at 0 + -1 = -1. IF the 
# then takes another step to -1, his position would then be -2 (went right twice).

position<-numeric()
#assume starts at the center position
position[1]<-0

for(i in 2:length(steps)){
  #new position is previous one, plus step he took to left/right
  position[i]<-position[i-1]+steps[i]
}


#now lets plot the trajectory of this druken student. 

plot(x=position,y=1:length(steps),type="l")


# the type="l" argument above simply makes it a line plot



# FInally, putting it all together in a function, where n is the number of steps:


the_drunk_student<- function(n){
  steps<-numeric(n)
  for(i in 1:length(steps)){
    #simualte a random number
    randNum<-runif(1)
    if(randNum < 0.3){
      steps[i]<- -1
    }
    
    if(randNum>=0.3 & randNum <0.6){
      steps[i]<- 1
    }
    
    if(randNum >=0.6){
      steps[i]<-0
    }
  }
  
  position<-numeric()
  #assume starts at the center position
  position[1]<-0
  
  for(i in 2:length(steps)){
    #new position is previous one, plus step he took to left/right
    position[i]<-position[i-1]+steps[i]
  }
  plot(x=position,y=1:length(steps),type="l")
}
the_drunk_student(100)
the_drunk_student(200)
