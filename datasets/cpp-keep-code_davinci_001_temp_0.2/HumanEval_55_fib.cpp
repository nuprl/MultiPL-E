#include<assert.h>
#include<bits/stdc++.h>
// Return n-th Fibonacci number.
// >>> fib(10)
// 55
// >>> fib(1)
// 1
// >>> fib(8)
// 21
long fib(long n) {
    if (n <= 1) return n;
    long a = 0, b = 1;
    for (long i = 2; i <= n; i++) {
        long tmp = a;
        a = b;
        b = tmp + b;
    }
    return b;

}
int main() {
    auto candidate = fib;
    assert(candidate((10)) == (55));
    assert(candidate((1)) == (1));
    assert(candidate((8)) == (21));
    assert(candidate((11)) == (89));
    assert(candidate((12)) == (144));
}
