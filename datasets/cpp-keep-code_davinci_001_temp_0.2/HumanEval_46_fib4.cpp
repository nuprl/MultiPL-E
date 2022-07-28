#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fib4(0) -> 0
// fib4(1) -> 0
// fib4(2) -> 2
// fib4(3) -> 0
// fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
// Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
// >>> fib4(5)
// 4
// >>> fib4(6)
// 8
// >>> fib4(7)
// 14
long fib4(long n) {
    if (n == 0) {
        return 0;
    }
    if (n == 1) {
        return 0;
    }
    if (n == 2) {
        return 2;
    }
    if (n == 3) {
        return 0;
    }
    long a = 0;
    long b = 0;
    long c = 2;
    long d = 0;
    for (long i = 4; i <= n; i++) {
        d = a + b + c + d;
        a = b;
        b = c;
        c = d;
    }
    return d;
}


int main() {
    auto candidate = fib4;
    assert(candidate((5)) == (4));
    assert(candidate((8)) == (28));
    assert(candidate((10)) == (104));
    assert(candidate((12)) == (386));
}