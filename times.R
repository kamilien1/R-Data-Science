#POSIXct stores dates/times as a very large integer

#POSIXlt is a list of dates

#generic functions for dates/times
# weekdays, months, quarters

x <- Sys.time()
x
p <- as.POSIXlt(x)
names(unclass(p))

# access attributes of class posixlt with the $ controller

p$sec
p$year


# strptime helps with dates in different formats

datestring <- c("January 10, 2015 10:44", "December 15, 2014 5:15")
# parses out (should read up on format)
x<- strptime(datestring,"%B %d, %Y %H:%M")
x


# operations on date/time can + or - 

x <- as.Date("2015-04-1")
y <- strptime("January 10,2015 10:44","%d %b %Y %H:%M:%S")
x-y
#this is an error because we must format it as a list POSIXlt
x <- as.POSIXlt(x)
x-y
# now it works (however my example is not working...)


# even tracks leap years

x<-asDate("2013-10-5")
y<-asDate("2012-11-1")
x-y