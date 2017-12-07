---
title: "Rcpp primer"
author: "Miguel Conde"
date: "7 de diciembre de 2017"
output: html_document
---


https://github.com/adw96/biostat561

## Setup

* R (>= 3.1)
* The R package Rcpp.
* You’ll also need a working C++ compiler:
  * For Windows users, install `Rtools`.
  * For Mac users, install Xcode from the app store.

## How to Rcpp
1. Write C++ code using Rcpp. Annotate your function with
```
// [[Rcpp::export]]
```

2. Compile the C++ code using ‘`Rcpp::sourceCpp`‘.
3. Use your C++ function in R.


## RcppArmadillo
`RcppArmadillo` is a C++ linear algebra library that balances
speed and ease of use.

* To use it, add this to the top of your C++ file:
```
#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]
```
* Now you have access to a [long list of Matrix/Vector
operations](http://arma.sourceforge.net/docs.html#part_fns)

  + Element-wise functions: exp, log, sqrt, ...
  + Matrix decompositions: Cholesky, SVD ...
  + Sparse matrices
  + Higher-dimensional arrays
  
## Resources

* [Hadley Wickham’s site: a nice intro](http://adv-r.had.co.nz/Rcpp.html)
    + To get a handle on Rcpp, try out the simple exercises.
* [Dirk Eddelbuettel’s site: links to all things Rcpp](http://dirk.eddelbuettel.com/code/rcpp.html)
* ”Seamless R and C++ Integration with Rcpp” book on
SpringerLink, a comprehensive resource on Rcpp
