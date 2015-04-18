above10 <- function(x) {
    use <-x>10
    x[use] 
}

# by assigned n=10, we have a default value
# running above(x) and forgetting a value of n
# means this will default to 10
above <- function(x,n=10){
    use <- x> n
    x[use]
}