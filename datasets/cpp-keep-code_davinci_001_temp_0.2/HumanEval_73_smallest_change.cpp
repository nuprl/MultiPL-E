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
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)5, (long)4, (long)7, (long)9, (long)6}))) == (4));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4, (long)3, (long)2, (long)2}))) == (1));
    assert(candidate((std::vector<long>({(long)1, (long)4, (long)2}))) == (1));
    assert(candidate((std::vector<long>({(long)1, (long)4, (long)4, (long)2}))) == (1));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)2, (long)1}))) == (0));
    assert(candidate((std::vector<long>({(long)3, (long)1, (long)1, (long)3}))) == (0));
    assert(candidate((std::vector<long>({(long)1}))) == (0));
    assert(candidate((std::vector<long>({(long)0, (long)1}))) == (1));
}
