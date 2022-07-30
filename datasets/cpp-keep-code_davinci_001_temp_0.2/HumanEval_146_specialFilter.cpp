#include<assert.h>
#include<bits/stdc++.h>
// Write a function that takes an array of numbers as input and returns 
// the number of elements in the array that are greater than 10 and both 
// first and last digits of a number are odd (1, 3, 5, 7, 9).
// For example:
// specialFilter([15, -73, 14, -15]) => 1 
// specialFilter([33, -2, -3, 45, 21, 109]) => 2
long specialFilter(std::vector<long> nums) {
    long count = 0;
    for (int i = 0; i < nums.size(); i++) {
        if (nums[i] > 10 && (nums[i] % 10) % 2 != 0 && (nums[i] / 10) % 2 != 0) {
            count++;
        }
    }
    return count;

}
int main() {
    auto candidate = specialFilter;
    assert(candidate((std::vector<long>({(long)5, (long)-2, (long)1, (long)-5}))) == (0));
    assert(candidate((std::vector<long>({(long)15, (long)-73, (long)14, (long)-15}))) == (1));
    assert(candidate((std::vector<long>({(long)33, (long)-2, (long)-3, (long)45, (long)21, (long)109}))) == (2));
    assert(candidate((std::vector<long>({(long)43, (long)-12, (long)93, (long)125, (long)121, (long)109}))) == (4));
    assert(candidate((std::vector<long>({(long)71, (long)-2, (long)-33, (long)75, (long)21, (long)19}))) == (3));
    assert(candidate((std::vector<long>({(long)1}))) == (0));
    assert(candidate((std::vector<long>())) == (0));
}
