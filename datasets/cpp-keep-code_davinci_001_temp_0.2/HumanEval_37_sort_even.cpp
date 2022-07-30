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
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3}))) == (std::vector<long>({(long)1, (long)2, (long)3})));
    assert(candidate((std::vector<long>({(long)5, (long)3, (long)-5, (long)2, (long)-3, (long)3, (long)9, (long)0, (long)123, (long)1, (long)-10}))) == (std::vector<long>({(long)-10, (long)3, (long)-5, (long)2, (long)-3, (long)3, (long)5, (long)0, (long)9, (long)1, (long)123})));
    assert(candidate((std::vector<long>({(long)5, (long)8, (long)-12, (long)4, (long)23, (long)2, (long)3, (long)11, (long)12, (long)-10}))) == (std::vector<long>({(long)-12, (long)8, (long)3, (long)4, (long)5, (long)2, (long)12, (long)11, (long)23, (long)-10})));
}
