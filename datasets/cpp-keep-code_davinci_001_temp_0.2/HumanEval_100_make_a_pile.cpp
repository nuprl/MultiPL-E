#include<assert.h>
#include<bits/stdc++.h>
// Given a positive integer n, you have to make a pile of n levels of stones.
// The first level has n stones.
// The number of stones in the next level is:
// - the next odd number if n is odd.
// - the next even number if n is even.
// Return the number of stones in each level in a list, where element at index
// i represents the number of stones in the level (i+1).
// Examples:
// >>> make_a_pile(3)
// [3, 5, 7]
std::vector<long> make_a_pile(long n) {
  std::vector<long> result;
  for (long i = 0; i < n; i++) {
    result.push_back(i * 2 + 1);
  }
  return result;

}
int main() {
    auto candidate = make_a_pile;
    assert(candidate((3)) == (std::vector<long>({3, 5, 7})));
    assert(candidate((4)) == (std::vector<long>({4, 6, 8, 10})));
    assert(candidate((5)) == (std::vector<long>({5, 7, 9, 11, 13})));
    assert(candidate((6)) == (std::vector<long>({6, 8, 10, 12, 14, 16})));
    assert(candidate((8)) == (std::vector<long>({8, 10, 12, 14, 16, 18, 20, 22})));
}
