#include <RcppArmadillo.h>
    // [[Rcpp::depends(RcppArmadillo)]]
    // [[Rcpp::export]]
    arma::mat multiplicar_matrices(arma::mat A, arma::mat B) {
    return A * B;
    }