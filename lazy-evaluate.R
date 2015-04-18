lazySquare <-function(x,y){
  x^2
  # Note that y is not evaluated
  # there is no error because
  # R does "lazy" evaluation
}


lazyPrint <-function(x,y){
  #lazy evaluation allows for printing x
  print(x)
  # lazy evaluation results in an error because y is not defined
  print(y)
}