#include<assert.h>
#include<bits/stdc++.h>
// Implement a function that takes an non-negative integer and returns an array of the first n
// integers that are prime numbers and less than n.
// for example:
// count_up_to(5) => [2,3]
// count_up_to(11) => [2,3,5,7]
// count_up_to(0) => []
// count_up_to(20) => [2,3,5,7,11,13,17,19]
// count_up_to(1) => []
// count_up_to(18) => [2,3,5,7,11,13,17]
std::vector<long> count_up_to(long n) {
  std::vector<long> result;
  if (n == 0) {
    return result;
  }
  if (n == 1) {
    result.push_back(2);
    return result;
  }
  result.push_back(2);
  for (long i = 3; i < n; i += 2) {
    bool is_prime = true;
    for (long j = 2; j < i; j++) {
      if (i % j == 0) {
        is_prime = false;
        break;
      }
    }
    if (is_prime) {
      result.push_back(i);
    }
  }
  return result;

}
int main() {
    auto candidate = count_up_to;
    assert(candidate((5)) == (std::vector<long>({(long)2, (long)3})));
    assert(candidate((6)) == (std::vector<long>({(long)2, (long)3, (long)5})));
    assert(candidate((7)) == (std::vector<long>({(long)2, (long)3, (long)5})));
    assert(candidate((10)) == (std::vector<long>({(long)2, (long)3, (long)5, (long)7})));
    assert(candidate((0)) == (std::vector<long>()));
    assert(candidate((22)) == (std::vector<long>({(long)2, (long)3, (long)5, (long)7, (long)11, (long)13, (long)17, (long)19})));
    assert(candidate((1)) == (std::vector<long>()));
    assert(candidate((18)) == (std::vector<long>({(long)2, (long)3, (long)5, (long)7, (long)11, (long)13, (long)17})));
    assert(candidate((47)) == (std::vector<long>({(long)2, (long)3, (long)5, (long)7, (long)11, (long)13, (long)17, (long)19, (long)23, (long)29, (long)31, (long)37, (long)41, (long)43})));
    assert(candidate((101)) == (std::vector<long>({(long)2, (long)3, (long)5, (long)7, (long)11, (long)13, (long)17, (long)19, (long)23, (long)29, (long)31, (long)37, (long)41, (long)43, (long)47, (long)53, (long)59, (long)61, (long)67, (long)71, (long)73, (long)79, (long)83, (long)89, (long)97})));
}
