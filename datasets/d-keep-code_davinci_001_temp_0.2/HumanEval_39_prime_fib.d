import std.typecons;
import std.math;
/*

    prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    >>> prime_fib(1)
    2
    >>> prime_fib(2)
    3
    >>> prime_fib(3)
    5
    >>> prime_fib(4)
    13
    >>> prime_fib(5)
    89
    
*/
long prime_fib(long n) 
{
    long a = 2, b = 3, c;
    while (n > 0) {
        c = a + b;
        if (is_prime(c)) {
            n--;
        }
        a = b;
        b = c;
    }
    return b;
}

unittest
{
    alias candidate = prime_fib;

    assert(candidate(1L) == 2L);
    assert(candidate(2L) == 3L);
    assert(candidate(3L) == 5L);
    assert(candidate(4L) == 13L);
    assert(candidate(5L) == 89L);
    assert(candidate(6L) == 233L);
    assert(candidate(7L) == 1597L);
    assert(candidate(8L) == 28657L);
    assert(candidate(9L) == 514229L);
    assert(candidate(10L) == 433494437L);
}
void main(){}