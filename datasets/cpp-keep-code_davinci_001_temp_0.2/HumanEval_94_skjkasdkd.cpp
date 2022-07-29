#include<assert.h>
#include<bits/stdc++.h>
// You are given a list of integers.
// You need to find the largest prime value and return the sum of its digits.
// Examples:
// For lst = [0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3] the output should be 10
// For lst = [1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1] the output should be 25
// For lst = [1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3] the output should be 13
// For lst = [0,724,32,71,99,32,6,0,5,91,83,0,5,6] the output should be 11
// For lst = [0,81,12,3,1,21] the output should be 3
// For lst = [0,8,1,2,1,7] the output should be 7
long skjkasdkd(std::vector<long> lst) {
    std::vector<long>::iterator it;
    long max = 0;
    long sum = 0;
    for (it = lst.begin(); it != lst.end(); it++) {
        if (*it > max) {
            max = *it;
        }
    }
    while (max > 0) {
        sum += max % 10;
        max /= 10;
    }
    return sum;

}
int main() {
    auto candidate = skjkasdkd;
    assert(candidate((std::vector<long>({0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3}))) == (10));
    assert(candidate((std::vector<long>({1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1}))) == (25));
    assert(candidate((std::vector<long>({1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3}))) == (13));
    assert(candidate((std::vector<long>({0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6}))) == (11));
    assert(candidate((std::vector<long>({0, 81, 12, 3, 1, 21}))) == (3));
    assert(candidate((std::vector<long>({0, 8, 1, 2, 1, 7}))) == (7));
    assert(candidate((std::vector<long>({8191}))) == (19));
    assert(candidate((std::vector<long>({8191, 123456, 127, 7}))) == (19));
    assert(candidate((std::vector<long>({127, 97, 8192}))) == (10));
}
