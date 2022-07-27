#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fibfib(0) == 0
// fibfib(1) == 0
// fibfib(2) == 1
// fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
// Please write a function to efficiently compute the n-th element of the fibfib number sequence.
// >>> fibfib(1)
// 0
// >>> fibfib(5)
// 4
// >>> fibfib(8)
// 24
long fibfib(long n) {
    if (n <= 1) return 0;
    if (n == 2) return 1;
    return fibfib(n-1) + fibfib(n-2) + fibfib(n-3);
}


int main() {
    auto candidate = fibfib;
    assert(candidate((2)) == (1));
    assert(candidate((1)) == (0));
    assert(candidate((5)) == (4));
    assert(candidate((8)) == (24));
    assert(candidate((10)) == (81));
    assert(candidate((12)) == (274));
    assert(candidate((14)) == (927));
}