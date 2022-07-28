#include<assert.h>
#include<bits/stdc++.h>
// Given a positive integer N, return the total sum of its digits in binary.
// Example
// For N = 1000, the sum of digits will be 1 the output should be "1".
// For N = 150, the sum of digits will be 6 the output should be "110".
// For N = 147, the sum of digits will be 12 the output should be "1100".
// Variables:
// @N integer
// Constraints: 0 ≤ N ≤ 10000.
// Output:
// a string of binary number
std::string solve(long N) {
    std::string result;
    while (N > 0) {
        result = std::to_string(N % 2) + result;
        N /= 2;
    }
    return result;

}
int main() {
    auto candidate = solve;
    assert(candidate((1000)) == ("1"));
    assert(candidate((150)) == ("110"));
    assert(candidate((147)) == ("1100"));
    assert(candidate((333)) == ("1001"));
    assert(candidate((963)) == ("10010"));
}
