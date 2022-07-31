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
    assert(candidate((std::vector<long>({(long)5, (long)8, (long)7, (long)1}))) == (12));
    assert(candidate((std::vector<long>({(long)3, (long)3, (long)3, (long)3, (long)3}))) == (9));
    assert(candidate((std::vector<long>({(long)30, (long)13, (long)24, (long)321}))) == (0));
    assert(candidate((std::vector<long>({(long)5, (long)9}))) == (5));
    assert(candidate((std::vector<long>({(long)2, (long)4, (long)8}))) == (0));
    assert(candidate((std::vector<long>({(long)30, (long)13, (long)23, (long)32}))) == (23));
    assert(candidate((std::vector<long>({(long)3, (long)13, (long)2, (long)9}))) == (3));
}
