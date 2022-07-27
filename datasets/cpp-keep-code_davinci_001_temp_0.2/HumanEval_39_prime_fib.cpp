#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// prime_fib returns n-th number that is a Fibonacci number and it's also prime.
// >>> prime_fib(1)
// 2
// >>> prime_fib(2)
// 3
// >>> prime_fib(3)
// 5
// >>> prime_fib(4)
// 13
// >>> prime_fib(5)
// 89
 prime_fib(long n) {
    long a = 0, b = 1, c = 0;
    for (long i = 0; i < n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return c;
}


int main() {
    auto candidate = prime_fib;
    assert(candidate((1)) == ((2)));
    assert(candidate((2)) == ((3)));
    assert(candidate((3)) == ((5)));
    assert(candidate((4)) == ((13)));
    assert(candidate((5)) == ((89)));
    assert(candidate((6)) == ((233)));
    assert(candidate((7)) == ((1597)));
    assert(candidate((8)) == ((28657)));
    assert(candidate((9)) == ((514229)));
    assert(candidate((10)) == ((433494437)));
}