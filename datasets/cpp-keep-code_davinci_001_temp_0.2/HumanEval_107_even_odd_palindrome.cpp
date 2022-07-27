#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a positive integer n, return a tuple that has the number of even and odd
// integer palindromes that fall within the range(1, n), inclusive.
// Example 1:
// Input: 3
// Output: (1, 2)
// Explanation:
// Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
// Example 2:
// Input: 12
// Output: (4, 6)
// Explanation:
// Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
// Note:
// 1. 1 <= n <= 10^3
// 2. returned tuple has the number of even and odd integer palindromes respectively.
std::tuple<long, long> even_odd_palindrome(long n) {
    long even = 0, odd = 0;
    for (long i = 1; i <= n; i++) {
        if (is_palindrome(i)) {
            if (i % 2 == 0) {
                even++;
            } else {
                odd++;
            }
        }
    }
    return std::make_tuple(even, odd);
}


int main() {
    auto candidate = even_odd_palindrome;
    assert(candidate((123)) == (std::make_tuple(long(8), long(13))));
    assert(candidate((12)) == (std::make_tuple(long(4), long(6))));
    assert(candidate((3)) == (std::make_tuple(long(1), long(2))));
    assert(candidate((63)) == (std::make_tuple(long(6), long(8))));
    assert(candidate((25)) == (std::make_tuple(long(5), long(6))));
    assert(candidate((19)) == (std::make_tuple(long(4), long(6))));
    assert(candidate((9)) == (std::make_tuple(long(4), long(5))));
    assert(candidate((1)) == (std::make_tuple(long(0), long(1))));
}