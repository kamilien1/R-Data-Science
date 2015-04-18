#taken from lecture https://class.coursera.org/rprog-013/lecture/73

make.NegLogLik <- function(data, fixed=c(FALSE,FALSE)){
    params <- fixed
    function(p) {
        params[!fixed] <- p
        mu <- params[l]
        sigma <- params[2]
        a<- -0.5*length(data)*log(2*pi*sigma^2)
        b<- -0.5*sum((data-mu)^2)/(sigma^2)
        -(a+b)
    }
}

set.seed(1); normals <- rnorm(100,1,2)
nLL <- make.NegLogLik(normals)
nLL 
ls(environment(nLL))

# below doesn't work
# optim(c(mu=0,sigma=1),nLL)$par

nLL <- make.NegLogLik(normals,c(1,F))
optimize(nLL,c(1e-6,10))$minimum