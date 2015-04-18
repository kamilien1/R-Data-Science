# returns the function pow(x), created in the function make.power

make.power <- function(n){
  pow <- function(x){
    x^n
  }
  pow
}

# to properly call this function
# first you assign a varable to the function pow
cube <- make.power(3)
# then you call that variable to run pow
cube(3)
# returns 27

# another example, creating a squaring function instead
square <- make.power(2)
square(3)
#returns 3^2 = 9


# LEXICAL VS DYNAMIC SCOPING
# pay attention to scoping of variables

y <- 10
f <- function(x){
  y<-2
  y^2 + g(x)
}

g <- function(x){
  x*y
}

# what is returned for f(3)?

f(3)

# step by step breakdown
# 2^2 + g(x)
# 4 + x*10

# why does this happen?
# y is local to function f
# globally, y is still 10
# in function g, with lack of an initialized y variable
# R searches for y values defined in the environment