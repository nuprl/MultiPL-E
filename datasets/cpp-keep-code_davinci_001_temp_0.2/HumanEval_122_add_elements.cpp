#include<assert.h>
#include<bits/stdc++.h>
// Given a non-empty array of integers arr and an integer k, return
// the sum of the elements with at most two digits from the first k elements of arr.
// Example:
// Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
// Output: 24 # sum of 21 + 3
// Constraints:
// 1. 1 <= len(arr) <= 100
// 2. 1 <= k <= len(arr)
long add_elements(std::vector<long> arr, long k) {
    long sum = 0;
    for (long i = 0; i < k; i++) {
        sum += arr[i];
    }
    return sum;

}
int main() {
    auto candidate = add_elements;
    assert(candidate((std::vector<long>({(long)1, (long)-2, (long)-3, (long)41, (long)57, (long)76, (long)87, (long)88, (long)99})), (3)) == (-4));
    assert(candidate((std::vector<long>({(long)111, (long)121, (long)3, (long)4000, (long)5, (long)6})), (2)) == (0));
    assert(candidate((std::vector<long>({(long)11, (long)21, (long)3, (long)90, (long)5, (long)6, (long)7, (long)8, (long)9})), (4)) == (125));
    assert(candidate((std::vector<long>({(long)111, (long)21, (long)3, (long)4000, (long)5, (long)6, (long)7, (long)8, (long)9})), (4)) == (24));
    assert(candidate((std::vector<long>({(long)1})), (1)) == (1));
}
