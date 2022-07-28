#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a positive integer n, return the count of the numbers of n-digit
// positive integers that start or end with 1.
long starts_one_ends(long n) {
    long count = 0;
    for (long i = 1; i <= n; i++) {
        long num = i;
        while (num) {
            if (num % 10 == 1) {
                count++;
            }
            num /= 10;
        }
    }
    return count;
}


int main() {
    auto candidate = starts_one_ends;
    assert(candidate((1)) == (1));
    assert(candidate((2)) == (18));
    assert(candidate((3)) == (180));
    assert(candidate((4)) == (1800));
    assert(candidate((5)) == (18000));
}