#include<assert.h>
#include<bits/stdc++.h>
// Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
// Examples
// solution([5, 8, 7, 1]) ==> 12
// solution([3, 3, 3, 3, 3]) ==> 9
// solution([30, 13, 24, 321]) ==>0
long solution(std::vector<long> lst) {
    long sum = 0;
    for (int i = 0; i < lst.size(); i += 2) {
        if (i % 2 == 0) {
            sum += lst[i];
        }
    }
    return sum;

}
int main() {
    auto candidate = solution;
    assert(candidate((std::vector<long>({5, 8, 7, 1}))) == (12));
    assert(candidate((std::vector<long>({3, 3, 3, 3, 3}))) == (9));
    assert(candidate((std::vector<long>({30, 13, 24, 321}))) == (0));
    assert(candidate((std::vector<long>({5, 9}))) == (5));
    assert(candidate((std::vector<long>({2, 4, 8}))) == (0));
    assert(candidate((std::vector<long>({30, 13, 23, 32}))) == (23));
    assert(candidate((std::vector<long>({3, 13, 2, 9}))) == (3));
}
