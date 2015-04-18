# in case NA is in our data, default True to ignore NAs
columnmean <- function(y,removeNA=TRUE){
    nc <- ncol(y)
    means <- numeric(nc)
    for (i in 1:nc){
      means[i] <- mean(y[,i], na.rm=removeNA)
    }
    # returns means bc last expression in function
    means
}