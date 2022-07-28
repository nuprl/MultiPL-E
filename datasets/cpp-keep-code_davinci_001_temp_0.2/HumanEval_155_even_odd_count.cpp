#include<assert.h>
#include<bits/stdc++.h>
// Given an integer. return a tuple that has the number of even and odd digits respectively.
// Example:
// even_odd_count(-12) ==> (1, 1)
// even_odd_count(123) ==> (1, 2)
std::tuple<long, long> even_odd_count(long num) {
    long even = 0, odd = 0;
    while (num) {
        if (num & 1) odd++;
        else even++;
        num >>= 1;
    }
    return std::make_tuple(even, odd);

}
int main() {
    auto candidate = even_odd_count;
    assert(candidate((7)) == (std::make_tuple(0, 1)));
    assert(candidate((-78)) == (std::make_tuple(1, 1)));
    assert(candidate((3452)) == (std::make_tuple(2, 2)));
    assert(candidate((346211)) == (std::make_tuple(3, 3)));
    assert(candidate((-345821)) == (std::make_tuple(3, 3)));
    assert(candidate((-2)) == (std::make_tuple(1, 0)));
    assert(candidate((-45347)) == (std::make_tuple(2, 3)));
    assert(candidate((0)) == (std::make_tuple(1, 0)));
}
