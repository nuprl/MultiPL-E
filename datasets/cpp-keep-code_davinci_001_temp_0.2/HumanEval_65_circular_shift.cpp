#include<assert.h>
#include<bits/stdc++.h>
// Circular shift the digits of the integer x, shift the digits right by shift
// and return the result as a string.
// If shift > number of digits, return digits reversed.
// >>> circular_shift(12, 1)
// "21"
// >>> circular_shift(12, 2)
// "12"
std::string circular_shift(long x, long shift) {
  std::string s = std::to_string(x);
  std::string result = "";
  if (shift > s.size()) {
    result = std::string(s.rbegin(), s.rend());
  } else {
    result = s.substr(s.size() - shift, s.size()) + s.substr(0, s.size() - shift);
  }
  return result;

}
int main() {
    auto candidate = circular_shift;
    assert(candidate((100), (2)) == ("001"));
    assert(candidate((12), (2)) == ("12"));
    assert(candidate((97), (8)) == ("79"));
    assert(candidate((12), (1)) == ("21"));
    assert(candidate((11), (101)) == ("11"));
}
