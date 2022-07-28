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
    assert(candidate((std::vector<long>({-3, -4, 5})), (3)) == (std::vector<long>({-4, -3, 5})));
    assert(candidate((std::vector<long>({4, -4, 4})), (2)) == (std::vector<long>({4, 4})));
    assert(candidate((std::vector<long>({-3, 2, 1, 2, -1, -2, 1})), (1)) == (std::vector<long>({2})));
    assert(candidate((std::vector<long>({123, -123, 20, 0, 1, 2, -3})), (3)) == (std::vector<long>({2, 20, 123})));
    assert(candidate((std::vector<long>({-123, 20, 0, 1, 2, -3})), (4)) == (std::vector<long>({0, 1, 2, 20})));
    assert(candidate((std::vector<long>({5, 15, 0, 3, -13, -8, 0})), (7)) == (std::vector<long>({-13, -8, 0, 0, 3, 5, 15})));
    assert(candidate((std::vector<long>({-1, 0, 2, 5, 3, -10})), (2)) == (std::vector<long>({3, 5})));
    assert(candidate((std::vector<long>({1, 0, 5, -7})), (1)) == (std::vector<long>({5})));
    assert(candidate((std::vector<long>({4, -4})), (2)) == (std::vector<long>({-4, 4})));
    assert(candidate((std::vector<long>({-10, 10})), (2)) == (std::vector<long>({-10, 10})));
    assert(candidate((std::vector<long>({1, 2, 3, -23, 243, -400, 0})), (0)) == (std::vector<long>()));
}
