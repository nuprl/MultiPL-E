#include<assert.h>
#include<bits/stdc++.h>
// pairs_sum_to_zero takes a list of integers as an input.
// it returns True if there are two distinct elements in the list that
// sum to zero, and False otherwise.
// >>> pairs_sum_to_zero([1, 3, 5, 0])
// False
// >>> pairs_sum_to_zero([1, 3, -2, 1])
// False
// >>> pairs_sum_to_zero([1, 2, 3, 7])
// False
// >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
// True
// >>> pairs_sum_to_zero([1])
// False
bool pairs_sum_to_zero(std::vector<long> l) {
  std::unordered_map<long, long> m;
  for (long i : l) {
    if (m.find(i) != m.end()) {
      return true;
    }
    m[-i] = i;
  }
  return false;

}
int main() {
    auto candidate = pairs_sum_to_zero;
    assert(candidate((std::vector<long>({1, 3, 5, 0}))) == (false));
    assert(candidate((std::vector<long>({1, 3, -2, 1}))) == (false));
    assert(candidate((std::vector<long>({1, 2, 3, 7}))) == (false));
    assert(candidate((std::vector<long>({2, 4, -5, 3, 5, 7}))) == (true));
    assert(candidate((std::vector<long>({1}))) == (false));
    assert(candidate((std::vector<long>({-3, 9, -1, 3, 2, 30}))) == (true));
    assert(candidate((std::vector<long>({-3, 9, -1, 3, 2, 31}))) == (true));
    assert(candidate((std::vector<long>({-3, 9, -1, 4, 2, 30}))) == (false));
    assert(candidate((std::vector<long>({-3, 9, -1, 4, 2, 31}))) == (false));
}
