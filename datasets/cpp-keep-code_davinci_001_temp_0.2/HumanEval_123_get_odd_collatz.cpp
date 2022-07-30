#include<assert.h>
#include<bits/stdc++.h>
// Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
// as follows: start with any positive integer n. Then each term is obtained from the 
// previous term as follows: if the previous term is even, the next term is one half of 
// the previous term. If the previous term is odd, the next term is 3 times the previous
// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
// Note: 
// 1. Collatz(1) is [1].
// 2. returned list sorted in increasing order.
// For example:
// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
std::vector<long> get_odd_collatz(long n) {
    std::vector<long> result;
    while(n != 1) {
        if(n % 2 == 0) {
            n /= 2;
        } else {
            n = 3 * n + 1;
        }
        result.push_back(n);
    }
    result.push_back(1);
    std::sort(result.begin(), result.end());
    return result;

}
int main() {
    auto candidate = get_odd_collatz;
    assert(candidate((14)) == (std::vector<long>({(long)1, (long)5, (long)7, (long)11, (long)13, (long)17})));
    assert(candidate((5)) == (std::vector<long>({(long)1, (long)5})));
    assert(candidate((12)) == (std::vector<long>({(long)1, (long)3, (long)5})));
    assert(candidate((1)) == (std::vector<long>({(long)1})));
}
