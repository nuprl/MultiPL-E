#include<assert.h>
#include<bits/stdc++.h>
// Given a positive integer n, return the product of the odd digits.
// Return 0 if all digits are even.
// For example:
// digits(1)  == 1
// digits(4)  == 0
// digits(235) == 15
long digits(long n) {
  long result = 1;
  while (n > 0) {
    long digit = n % 10;
    n /= 10;
    if (digit % 2 == 1) {
      result *= digit;
    }
  }
  return result;

}
int main() {
    auto candidate = digits;
    assert(candidate((5)) == (5));
    assert(candidate((54)) == (5));
    assert(candidate((120)) == (1));
    assert(candidate((5014)) == (5));
    assert(candidate((98765)) == (315));
    assert(candidate((5576543)) == (2625));
    assert(candidate((2468)) == (0));
}
