#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Return 2^n modulo p (be aware of numerics).
// >>> modp(3, 5)
// 3
// >>> modp(1101, 101)
// 2
// >>> modp(0, 101)
// 1
// >>> modp(3, 11)
// 8
// >>> modp(100, 101)
// 1
long modp(long n, long p) {
    long res = 1;
    while (n > 0) {
        if (n & 1) {
            res = res * 2 % p;
        }
        n = n >> 1;
        res = res * 2 % p;
    }
    return res;
}


int main() {
    auto candidate = modp;
    assert(candidate((3), (5)) == (3));
    assert(candidate((1101), (101)) == (2));
    assert(candidate((0), (101)) == (1));
    assert(candidate((3), (11)) == (8));
    assert(candidate((100), (101)) == (1));
    assert(candidate((30), (5)) == (4));
    assert(candidate((31), (5)) == (3));
}