#include<assert.h>
#include<bits/stdc++.h>
// Given an array arr of integers and a positive integer k, return a sorted list 
// of length k with the maximum k numbers in arr.
// Example 1:
// Input: arr = [-3, -4, 5], k = 3
// Output: [-4, -3, 5]
// Example 2:
// Input: arr = [4, -4, 4], k = 2
// Output: [4, 4]
// Example 3:
// Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
// Output: [2]
// Note:
// 1. The length of the array will be in the range of [1, 1000].
// 2. The elements in the array will be in the range of [-1000, 1000].
// 3. 0 <= k <= len(arr)
std::vector<long> maximum(std::vector<long> arr, long k) {
    std::vector<long> res;
    std::priority_queue<long, std::vector<long>, std::greater<long>> pq;
    for (long i = 0; i < arr.size(); i++) {
        if (pq.size() < k) {
            pq.push(arr[i]);
        } else {
            if (arr[i] > pq.top()) {
                pq.pop();
                pq.push(arr[i]);
            }
        }
    }
    while (!pq.empty()) {
        res.push_back(pq.top());
        pq.pop();
    }
    return res;

}
int main() {
    auto candidate = maximum;
    assert(candidate((std::vector<long>({(long)-3, (long)-4, (long)5})), (3)) == (std::vector<long>({(long)-4, (long)-3, (long)5})));
    assert(candidate((std::vector<long>({(long)4, (long)-4, (long)4})), (2)) == (std::vector<long>({(long)4, (long)4})));
    assert(candidate((std::vector<long>({(long)-3, (long)2, (long)1, (long)2, (long)-1, (long)-2, (long)1})), (1)) == (std::vector<long>({(long)2})));
    assert(candidate((std::vector<long>({(long)123, (long)-123, (long)20, (long)0, (long)1, (long)2, (long)-3})), (3)) == (std::vector<long>({(long)2, (long)20, (long)123})));
    assert(candidate((std::vector<long>({(long)-123, (long)20, (long)0, (long)1, (long)2, (long)-3})), (4)) == (std::vector<long>({(long)0, (long)1, (long)2, (long)20})));
    assert(candidate((std::vector<long>({(long)5, (long)15, (long)0, (long)3, (long)-13, (long)-8, (long)0})), (7)) == (std::vector<long>({(long)-13, (long)-8, (long)0, (long)0, (long)3, (long)5, (long)15})));
    assert(candidate((std::vector<long>({(long)-1, (long)0, (long)2, (long)5, (long)3, (long)-10})), (2)) == (std::vector<long>({(long)3, (long)5})));
    assert(candidate((std::vector<long>({(long)1, (long)0, (long)5, (long)-7})), (1)) == (std::vector<long>({(long)5})));
    assert(candidate((std::vector<long>({(long)4, (long)-4})), (2)) == (std::vector<long>({(long)-4, (long)4})));
    assert(candidate((std::vector<long>({(long)-10, (long)10})), (2)) == (std::vector<long>({(long)-10, (long)10})));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)-23, (long)243, (long)-400, (long)0})), (0)) == (std::vector<long>()));
}
