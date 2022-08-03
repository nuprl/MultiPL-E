import std.typecons;
import std.math;
/*
Return n-th Fibonacci number.
    >>> fib(10)
    55
    >>> fib(1)
    1
    >>> fib(8)
    21
    
*/
long fib(long n) 
{
    if (n < 2) return n;
    return fib(n-1) + fib(n-2);
}

unittest
{
    alias candidate = fib;

    assert(candidate(10L) == 55L);
    assert(candidate(1L) == 1L);
    assert(candidate(8L) == 21L);
    assert(candidate(11L) == 89L);
    assert(candidate(12L) == 144L);
}
void main(){}