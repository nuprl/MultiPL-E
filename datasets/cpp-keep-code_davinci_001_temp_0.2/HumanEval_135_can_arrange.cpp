#include<assert.h>
#include<bits/stdc++.h>
// Create a function which returns the largest index of an element which
// is not greater than or equal to the element immediately preceding it. If
// no such element exists then return -1. The given array will not contain
// duplicate values.
// Examples:
// can_arrange([1,2,4,3,5]) = 3
// can_arrange([1,2,3]) = -1
long can_arrange(std::vector<long> arr) {
  std::vector<long>::iterator it = std::adjacent_find(arr.begin(), arr.end());
  if (it == arr.end())
    return -1;
  return std::distance(arr.begin(), it);

}
int main() {
    auto candidate = can_arrange;
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)4, (long)3, (long)5}))) == (3));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)4, (long)5}))) == (-1));
    assert(candidate((std::vector<long>({(long)1, (long)4, (long)2, (long)5, (long)6, (long)7, (long)8, (long)9, (long)10}))) == (2));
    assert(candidate((std::vector<long>({(long)4, (long)8, (long)5, (long)7, (long)3}))) == (4));
    assert(candidate((std::vector<long>())) == (-1));
}
