#include<assert.h>
#include<bits/stdc++.h>
// Given an array of integers nums, find the minimum sum of any non-empty sub-array
// of nums.
// Example
// minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
// minSubArraySum([-1, -2, -3]) == -6
long minSubArraySum(std::vector<long> nums) {
    long sum = 0;
    long minSum = LONG_MAX;
    for (long i = 0; i < nums.size(); i++) {
        sum += nums[i];
        minSum = std::min(minSum, sum);
        sum = std::min(sum, 0);
    }
    return minSum;

}
int main() {
    auto candidate = minSubArraySum;
    assert(candidate((std::vector<long>({2, 3, 4, 1, 2, 4}))) == (1));
    assert(candidate((std::vector<long>({-1, -2, -3}))) == (-6));
    assert(candidate((std::vector<long>({-1, -2, -3, 2, -10}))) == (-14));
    assert(candidate((std::vector<long>({-9999999999999999}))) == (-9999999999999999));
    assert(candidate((std::vector<long>({0, 10, 20, 1000000}))) == (0));
    assert(candidate((std::vector<long>({-1, -2, -3, 10, -5}))) == (-6));
    assert(candidate((std::vector<long>({100, -1, -2, -3, 10, -5}))) == (-6));
    assert(candidate((std::vector<long>({10, 11, 13, 8, 3, 4}))) == (3));
    assert(candidate((std::vector<long>({100, -33, 32, -1, 0, -2}))) == (-33));
    assert(candidate((std::vector<long>({-10}))) == (-10));
    assert(candidate((std::vector<long>({7}))) == (7));
    assert(candidate((std::vector<long>({1, -1}))) == (-1));
}
