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
    assert(candidate((std::vector<long>({(long)5, (long)6, (long)3, (long)4, (long)8, (long)9, (long)2}))) == (std::vector<long>({(long)2, (long)6, (long)3, (long)4, (long)8, (long)9, (long)5})));
    assert(candidate((std::vector<long>({(long)5, (long)8, (long)3, (long)4, (long)6, (long)9, (long)2}))) == (std::vector<long>({(long)2, (long)8, (long)3, (long)4, (long)6, (long)9, (long)5})));
    assert(candidate((std::vector<long>({(long)5, (long)6, (long)9, (long)4, (long)8, (long)3, (long)2}))) == (std::vector<long>({(long)2, (long)6, (long)9, (long)4, (long)8, (long)3, (long)5})));
    assert(candidate((std::vector<long>({(long)5, (long)6, (long)3, (long)4, (long)8, (long)9, (long)2, (long)1}))) == (std::vector<long>({(long)2, (long)6, (long)3, (long)4, (long)8, (long)9, (long)5, (long)1})));
}
