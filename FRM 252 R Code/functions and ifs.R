# WRITING FUNCTIONS IN R

# the following serves as a guide to write functions in R:
# the syntax looks as follow:

function_name <- function (paramater1, parameter2,paramater3){
  # some code to maniplulate the paramaters...
  value<- paramater1+parameter2+paramater3
  
  #specify what the function must return
  return(value)
}

# Note in the above, we have defined a function called "function_name". this function
# takes as input three paramaters called paramater1... parameter3. It then excecutes code in the
# middle and returns some value through the return statement




#---------------------CONDITIONAL PROCESSING-------------------

# you can also control the flow of a program/function using conditional
# statements with IF and ELSE statements combined with AND (&) and OR (|)

#for example:

x<-6
y<-0
if(x == 6){
  y<- y+1
}else{
  y<-y-1
}

#note in the above you test for equality using ==
# x==6 evaluates to TRUE, and hence the if is executed

# using the and/or operators:

TRUE & FALSE #-----> evaluates to FALSE
TRUE | FALSE #-----> evaluates to TRUE

if(x==6 & y==0){
  y<-y+1
  x<-x-1
}else{
  y<-y-1
  x<-x+1
}


# EXAMPLE: a function that checks whether a number is in a certain interval:

is_inside<-function(number,interval){
  #note that number is simply a number, while interval is a vector!
  
  #get bounds of the interval:
  lower_bound<-min(interval)
  upper_bound<-max(interval)
  
  #check if number is inside the interval:
  
  if(number < lower_bound){
    return(FALSE)
  }
  
  if(number> upper_bound){
    return(FALSE)
  }
  
  return(TRUE)
}

x<-7
int<-c(10,20)

is_inside(number=x,interval=int)




#---------------------- DEFAULT VALUES----------------------

# most functions in R provide default values to certain arguments. The user can 
# override these arguments if wished, but if they are not specified then the defaut
# values are utilised. say in our function above we would like the interval to be a
# default of [10,20], you can then specify:



is_inside<-function(number,interval=c(10,20)){
  #get bounds of the interval:
  lower_bound<-min(interval)
  upper_bound<-max(interval)
  #check if number is inside the interval:
  if(number < lower_bound){
    return(FALSE)
  }
  
  if(number> upper_bound){
    return(FALSE)
  }
  
  return(TRUE)
}

is_inside(number=7)


# note the paramater INTERVAL is not specified, hence the default value is used
# of c(10,20)