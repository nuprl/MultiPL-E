#include<assert.h>
#include<bits/stdc++.h>
// "Given an array representing a branch of a tree that has non-negative integer nodes
// your task is to pluck one of the nodes and return it.
// The plucked node should be the node with the smallest even value.
// If multiple nodes with the same smallest even value are found return the node that has smallest index.
// The plucked node should be returned in a list, [ smalest_value, its index ],
// If there are no even values or the given array is empty, return [].
// Example 1:
// Input: [4,2,3]
// Output: [2, 1]
// Explanation: 2 has the smallest even value, and 2 has the smallest index.
// Example 2:
// Input: [1,2,3]
// Output: [2, 1]
// Explanation: 2 has the smallest even value, and 2 has the smallest index. 
// Example 3:
// Input: []
// Output: []
// Example 4:
// Input: [5, 0, 3, 0, 4, 2]
// Output: [0, 1]
// Explanation: 0 is the smallest value, but  there are two zeros,
// so we will choose the first zero, which has the smallest index.
// Constraints:
// * 1 <= nodes.length <= 10000
// * 0 <= node.value
std::vector<long> pluck(std::vector<long> arr) {
    std::vector<long> result;
    if (arr.size() == 0) return result;
    std::sort(arr.begin(), arr.end());
    for (int i = 0; i < arr.size(); i++) {
        if (arr[i] % 2 == 0) {
            result.push_back(arr[i]);
            result.push_back(i);
            return result;
        }
    }
    return result;

}
int main() {
    auto candidate = pluck;
    assert(candidate((std::vector<long>({4, 2, 3}))) == (std::vector<long>({2, 1})));
    assert(candidate((std::vector<long>({1, 2, 3}))) == (std::vector<long>({2, 1})));
    assert(candidate((std::vector<long>())) == (std::vector<long>()));
    assert(candidate((std::vector<long>({5, 0, 3, 0, 4, 2}))) == (std::vector<long>({0, 1})));
    assert(candidate((std::vector<long>({1, 2, 3, 0, 5, 3}))) == (std::vector<long>({0, 3})));
    assert(candidate((std::vector<long>({5, 4, 8, 4, 8}))) == (std::vector<long>({4, 1})));
    assert(candidate((std::vector<long>({7, 6, 7, 1}))) == (std::vector<long>({6, 1})));
    assert(candidate((std::vector<long>({7, 9, 7, 1}))) == (std::vector<long>()));
}
