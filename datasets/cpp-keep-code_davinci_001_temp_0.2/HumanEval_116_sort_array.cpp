#include<assert.h>
#include<bits/stdc++.h>
// In this Kata, you have to sort an array of non-negative integers according to
// number of ones in their binary representation in ascending order.
// For similar number of ones, sort based on decimal value.
// It must be implemented like this:
// >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
// >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
// >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
std::vector<long> sort_array(std::vector<long> arr) {
  std::vector<long> result;
  std::vector<long>::iterator it;
  for (it = arr.begin(); it != arr.end(); it++) {
    long temp = *it;
    long count = 0;
    while (temp != 0) {
      if (temp % 2 == 1) {
        count++;
      }
      temp = temp / 2;
    }
    result.push_back(count);
  }
  std::sort(result.begin(), result.end());
  for (it = arr.begin(); it != arr.end(); it++) {
    long temp = *it;
    long count = 0;
    while (temp != 0) {
      if (temp % 2 == 1) {
        count++;
      }
      temp = temp / 2;
    }
    std::vector<long>::iterator it2 = std::lower_bound(result.begin(), result.end(), count);
    result.insert(it2, count);
  }
  for (it = arr.begin(); it != arr.end(); it++) {
    long temp = *it;
    long count = 0;
    while (temp != 0) {
      if (temp % 2 == 1) {
        count++;
      }
      temp = temp / 2;
    }
    std::vector<long>::iterator it2 = std::lower_bound(result.begin(), result.end(), count);
    it2++;
    result.insert(it2, *it);
  }
  return result;

}
int main() {
    auto candidate = sort_array;
    assert(candidate((std::vector<long>({1, 5, 2, 3, 4}))) == (std::vector<long>({1, 2, 4, 3, 5})));
    assert(candidate((std::vector<long>({-2, -3, -4, -5, -6}))) == (std::vector<long>({-4, -2, -6, -5, -3})));
    assert(candidate((std::vector<long>({1, 0, 2, 3, 4}))) == (std::vector<long>({0, 1, 2, 4, 3})));
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4}))) == (std::vector<long>({2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77})));
    assert(candidate((std::vector<long>({3, 6, 44, 12, 32, 5}))) == (std::vector<long>({32, 3, 5, 6, 12, 44})));
    assert(candidate((std::vector<long>({2, 4, 8, 16, 32}))) == (std::vector<long>({2, 4, 8, 16, 32})));
    assert(candidate((std::vector<long>({2, 4, 8, 16, 32}))) == (std::vector<long>({2, 4, 8, 16, 32})));
}
