# Introduction to R basics

#-------------------------VECTORS--------------------------

# R is a vectorised programming language, and is optimised in vector calculations.
# you can create a simple NUMERICAL vector as follow:

some_vector <- c(9,3,1,7,5)

# note in the above, the <- assigns the value on the RHS to the object on the LHS
# Vectors can then easily be manipulated and transformed:

vect_2<- some_vector *10 -5

vect_3<- vect_2 + some_vector

#note when adding two vectors to one another, they must have the same length.
# you can get the length of a vector using the length function:

length(vect_3)

# you can access a entry in the vector using square brackets as follow:

vect_3[4]

#and also change a single value in the vector

vect_3[1]<-1000

# once an abject is created in R, such as the above, it receives a certain class.
# you can access the class of an object using the class() function:

class(vect_3)

#in this case it will return "numeric" --> indicating it is a numeric vector. 
# you can also create CHARACTER vectors as follow:

char_vec<- c("a","b","c","d")

class(char_vec)

#---------------------------Matrices-------------------------


# matrices are often useful in R. It stores data in tabular format, allowing you
# to group together data. It also allows you to utilise matrix multiplication fairly easy.

X<-matrix(data=c(0,2,3,4,5,6),nrow=3,ncol=2,bycol=TRUE)

# in the above you create a 3x2 matrix, with the data entered columnwise
# this object now has a class of "matrix":

class(X)

# since the data is effectively in 2-D, you can access a element in the matrix using [,]
# where you first specify the row, then the column:

X[2,3]

# althernatively, if you want to return an entire colum you can do that as follows:

X[,1]

# note we have not specified which row, hence it takes all rows. The above would then return
# a VECTOR corresponding to the data in the first column.

# For matrix multiplication, use the %*% operator:

mat_2<-matric(c(1,0,0,2),nrow=2,byrow=TRUE)

X %*% mat_2



#----------------------- BASIC FUNCTIONS----------------------------

#you can access the help documentation of a function by typing a ? followed by the function name:

?mean

#the above would then open up the mean() function's documentation.
# Some common functions are illustrated below.

x<-c(1,2,3,4,6,10,4.9)
mean(x)
sd(x)
min(x)
max(x)
range(x)
median(x)
abs(x)
sqrt(x)
sum(x)
class(x)

# when working with matrices:

nrow(X)
ncol(X)
dim(X)
rank(X)

#---------------------- FOR LOOPS-----------------------

#the syntax for a for loop in R is as follow:

for(i in 1:10){
  #code
}

# the i is incremented by one each time. 1:10 returns a sequence: 1,2,...,9,10
# so say for example we would like to calculate the sum of x using a for loop
# instead of the sum() function:

#create a variable and initialse it to zero
sum_x <- 0

for (i in 1:lenght(x)){
  sum_x<- sum_x + x[i]
}

#note the above! the range of i should run from 1 to the total number of entries in x!!


