#include<assert.h>
#include<bits/stdc++.h>
// This function takes a list l and returns a list l' such that
// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
// to the values of the corresponding indicies of l, but sorted.
// >>> sort_third([1, 2, 3])
// [1, 2, 3]
// >>> sort_third([5, 6, 3, 4, 8, 9, 2])
// [2, 6, 3, 4, 8, 9, 5]
std::vector<long> sort_third(std::vector<long> l) {
  std::vector<long> l_prime;
  for (int i = 0; i < l.size(); i++) {
    if (i % 3 == 0) {
      l_prime.push_back(l[i]);
    } else {
      l_prime.push_back(l[i]);
      std::sort(l_prime.begin(), l_prime.end());
    }
  }
  return l_prime;

}
int main() {
    auto candidate = sort_third;
    assert(candidate((std::vector<long>({5, 6, 3, 4, 8, 9, 2}))) == (std::vector<long>({2, 6, 3, 4, 8, 9, 5})));
    assert(candidate((std::vector<long>({5, 8, 3, 4, 6, 9, 2}))) == (std::vector<long>({2, 8, 3, 4, 6, 9, 5})));
    assert(candidate((std::vector<long>({5, 6, 9, 4, 8, 3, 2}))) == (std::vector<long>({2, 6, 9, 4, 8, 3, 5})));
    assert(candidate((std::vector<long>({5, 6, 3, 4, 8, 9, 2, 1}))) == (std::vector<long>({2, 6, 3, 4, 8, 9, 5, 1})));
}
