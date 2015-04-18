
# ... in custom functions implies inheritance 
# of other functions that have optional inputs
# ... 'absorbs' additional arguments
myplot <- function(x,y,type="1",...){
  plot(x,y,type=type,...)
}

# myplot(4,5)

# if you want to view the arguments,
# try args(function)
# for example
# args(cat)
# returns
#function (..., file = "", sep = " ", fill = FALSE, labels = NULL, 
#          append = FALSE) 
#  NULL

# which includes the ... function


# any arguments appearing AFTER ... must be named EXPLICITELY (arg=val)
# one can have function(...,arg1,arg2,etc) and not name args before arg1 explicity

# EXAMPLE, built in function paste() 

args(paste)
# explicit stating of arg name
paste('a','b',sep=':')

# explicit FAIL
paste('a','b',weirdoArgName=':')

# note the different outputs