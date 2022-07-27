#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given an integer. return a tuple that has the number of even and odd digits respectively.
// Example:
// even_odd_count(-12) ==> (1, 1)
// even_odd_count(123) ==> (1, 2)
std::tuple<long, long> even_odd_count(long num) {
    long even = 0;
    long odd = 0;
    while (num > 0) {
        if (num % 2 == 0) {
            even++;
        } else {
            odd++;
        }
        num /= 10;
    }
    return std::make_tuple(even, odd);
}


int main() {
    auto candidate = even_odd_count;
    assert(candidate((7)) == (std::make_tuple(long(0), long(1))));
    assert(candidate((-78)) == (std::make_tuple(long(1), long(1))));
    assert(candidate((3452)) == (std::make_tuple(long(2), long(2))));
    assert(candidate((346211)) == (std::make_tuple(long(3), long(3))));
    assert(candidate((-345821)) == (std::make_tuple(long(3), long(3))));
    assert(candidate((-2)) == (std::make_tuple(long(1), long(0))));
    assert(candidate((-45347)) == (std::make_tuple(long(2), long(3))));
    assert(candidate((0)) == (std::make_tuple(long(1), long(0))));
}