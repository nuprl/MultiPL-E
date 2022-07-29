#include<assert.h>
#include<bits/stdc++.h>
// This function takes a list l and returns a list l' such that
// l' is identical to l in the odd indicies, while its values at the even indicies are equal
// to the values of the even indicies of l, but sorted.
// >>> sort_even([1, 2, 3])
// [1, 2, 3]
// >>> sort_even([5, 6, 3, 4])
// [3, 6, 5, 4]
std::vector<long> sort_even(std::vector<long> l) {
  std::vector<long> l_prime;
  for (int i = 0; i < l.size(); i++) {
    if (i % 2 == 0) {
      l_prime.push_back(l[i]);
    } else {
      std::vector<long> l_prime_even;
      for (int j = 0; j < l.size(); j++) {
        if (j % 2 == 0) {
          l_prime_even.push_back(l[j]);
        }
      }
      std::sort(l_prime_even.begin(), l_prime_even.end());
      l_prime.push_back(l_prime_even[i / 2]);
    }
  }
  return l_prime;

}
int main() {
    auto candidate = sort_even;
    assert(candidate((std::vector<long>({1, 2, 3}))) == (std::vector<long>({1, 2, 3})));
    assert(candidate((std::vector<long>({5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10}))) == (std::vector<long>({-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123})));
    assert(candidate((std::vector<long>({5, 8, -12, 4, 23, 2, 3, 11, 12, -10}))) == (std::vector<long>({-12, 8, 3, 4, 5, 2, 12, 11, 23, -10})));
}
