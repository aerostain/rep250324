#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
int sumaCPP(int a, int b) {
  return a + b*7;
}