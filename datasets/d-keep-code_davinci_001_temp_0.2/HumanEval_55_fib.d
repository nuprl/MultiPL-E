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
int fib(int n) 
{
    if (n < 2) {
        return n;
    }
    else {
        return fib(n-1) + fib(n-2);
    }
}

unittest
{
    alias candidate = fib;

    assert(candidate(10) == 55);
    assert(candidate(1) == 1);
    assert(candidate(8) == 21);
    assert(candidate(11) == 89);
    assert(candidate(12) == 144);
}
void main(){}