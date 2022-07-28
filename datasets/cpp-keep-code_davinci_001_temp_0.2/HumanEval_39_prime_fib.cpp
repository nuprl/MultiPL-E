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
long prime_fib(long n) {
    assert(n >= 1);
    long a = 1, b = 1, c = 1;
    while (n > 2) {
        c = a + b;
        a = b;
        b = c;
        n--;
    }
    return c;

}
int main() {
    auto candidate = prime_fib;
    assert(candidate((1)) == (2));
    assert(candidate((2)) == (3));
    assert(candidate((3)) == (5));
    assert(candidate((4)) == (13));
    assert(candidate((5)) == (89));
    assert(candidate((6)) == (233));
    assert(candidate((7)) == (1597));
    assert(candidate((8)) == (28657));
    assert(candidate((9)) == (514229));
    assert(candidate((10)) == (433494437));
}
