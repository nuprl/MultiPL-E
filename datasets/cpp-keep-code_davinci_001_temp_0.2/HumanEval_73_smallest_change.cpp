#include<assert.h>
#include<bits/stdc++.h>
// Given an array arr of integers, find the minimum number of elements that
// need to be changed to make the array palindromic. A palindromic array is an array that
// is read the same backwards and forwards. In one change, you can change one element to any other element.
// For example:
// smallest_change([1,2,3,5,4,7,9,6]) == 4
// smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
// smallest_change([1, 2, 3, 2, 1]) == 0
long smallest_change(std::vector<long> arr) {
    // Write your code here
    long n = arr.size();
    std::vector<long> dp(n, n);
    std::vector<long> dp_back(n, n);
    std::vector<long> dp_back_back(n, n);
    std::vector<long> dp_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back_back_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back_back_back_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back_back_back_back_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back_back_back_back_back_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back_back_back_back_back_back_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back_back_back_back_back_back_back_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back_back_back_back_back_back_back_back_back_back_back(n, n);
    std::vector<long> dp_back_back_back_back_back_back_back_back_back_back_back_back_back_back_back(n, n);
    std::

}
int main() {
    auto candidate = smallest_change;
    assert(candidate((std::vector<long>({1, 2, 3, 5, 4, 7, 9, 6}))) == (4));
    assert(candidate((std::vector<long>({1, 2, 3, 4, 3, 2, 2}))) == (1));
    assert(candidate((std::vector<long>({1, 4, 2}))) == (1));
    assert(candidate((std::vector<long>({1, 4, 4, 2}))) == (1));
    assert(candidate((std::vector<long>({1, 2, 3, 2, 1}))) == (0));
    assert(candidate((std::vector<long>({3, 1, 1, 3}))) == (0));
    assert(candidate((std::vector<long>({1}))) == (0));
    assert(candidate((std::vector<long>({0, 1}))) == (1));
}
