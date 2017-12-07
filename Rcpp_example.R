## R function
t.test.me <- function(x1, x2) {
  n1 <- length(x1)
  n2 <- length(x2)
  # Generate numerator and denominator
  nume <- mean(x1) - mean(x2)
  denom <- sqrt(var(x1)/n1 + var(x2)/n2)
  return(nume/denom)
}


## RCpp function
// Compile the C++ code
library(Rcpp)
sourceCpp("t_test_cpp.cpp")

## Compare both
set.seed(1)
x1 <- rnorm(30)
x2 <- rnorm(50)

library(microbenchmark)
microbenchmark(t.test.me(x1, x2),
               t_test_cpp(x1, x2))
