
# all four below will produce the same output 
x<-c('a','b','c','d')

for(i in 1:4) {
    print(x[i])
}

for(i in seq_along(x)) {
    print(x[i])
}

for(letter in x) {
    print(letter)
}

for(i in 1:4) print(x[i])

# Matrix 2 rows, 3 columns
mat <- matrix(1:6,2,3)

for(i in seq_len(nrow(mat))) {
  for(j in seq_len(ncol(mat))) {
    print(mat[i,j])
  }
}
