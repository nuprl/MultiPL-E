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
    assert(candidate((std::vector<long>({(long)2, (long)3, (long)4, (long)1, (long)2, (long)4}))) == (1));
    assert(candidate((std::vector<long>({(long)-1, (long)-2, (long)-3}))) == (-6));
    assert(candidate((std::vector<long>({(long)-1, (long)-2, (long)-3, (long)2, (long)-10}))) == (-14));
    assert(candidate((std::vector<long>({(long)-9999999999999999}))) == (-9999999999999999));
    assert(candidate((std::vector<long>({(long)0, (long)10, (long)20, (long)1000000}))) == (0));
    assert(candidate((std::vector<long>({(long)-1, (long)-2, (long)-3, (long)10, (long)-5}))) == (-6));
    assert(candidate((std::vector<long>({(long)100, (long)-1, (long)-2, (long)-3, (long)10, (long)-5}))) == (-6));
    assert(candidate((std::vector<long>({(long)10, (long)11, (long)13, (long)8, (long)3, (long)4}))) == (3));
    assert(candidate((std::vector<long>({(long)100, (long)-33, (long)32, (long)-1, (long)0, (long)-2}))) == (-33));
    assert(candidate((std::vector<long>({(long)-10}))) == (-10));
    assert(candidate((std::vector<long>({(long)7}))) == (7));
    assert(candidate((std::vector<long>({(long)1, (long)-1}))) == (-1));
}
