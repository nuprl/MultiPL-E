#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
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
    std::vector<long> res;
    if(n == 1) {
        res.push_back(1);
        return res;
    }
    std::vector<long> collatz = get_collatz(n);
    for(long i = 0; i < collatz.size(); i++) {
        if(collatz[i] % 2 == 1) {
            res.push_back(collatz[i]);
        }
    }
    return res;
}
// Given a positive integer n, return a sorted list that has the even numbers in collatz sequence.
// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
// as follows: start with any positive integer n. Then each term is obtained from the 
// previous term as follows: if the previous term is even, the next term is one half of 
// the previous term. If the previous term is odd, the next term is 3 times the previous
// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
// Note: 
// 1. Collatz(1) is [1].
// 2. returned list sorted in increasing order.
// For example:
// get_even_collatz(5) returns [2, 4] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the even numbers are only 2, 4.
std::vector<long> get_even_collatz(long n) {
    std::vector<long> res;
    if(n == 1) {
        res.push_back(1);
        return res;
    }
    std::vector<long> collatz = get_collatz(n);
    for(long i = 0; i < collatz.size(); i++) {
        if(collatz[i] % 2 == 0) {
            res.push_back(collatz[i]);
        }
    }
    return res;
}
// Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
// as follows: start with


int main() {
    auto candidate = get_odd_collatz;
    assert(candidate((14)) == (std::vector<long>({1, 5, 7, 11, 13, 17})));
    assert(candidate((5)) == (std::vector<long>({1, 5})));
    assert(candidate((12)) == (std::vector<long>({1, 3, 5})));
    assert(candidate((1)) == (std::vector<long>({1})));
}