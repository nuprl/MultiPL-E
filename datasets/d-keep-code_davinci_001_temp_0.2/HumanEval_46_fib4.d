import std.math;
import std.typecons;
/*
The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
    fib4(0) -> 0
    fib4(1) -> 0
    fib4(2) -> 2
    fib4(3) -> 0
    fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
    Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
    >>> fib4(5)
    4
    >>> fib4(6)
    8
    >>> fib4(7)
    14
    
*/
long fib4(long n) 
{
    if (n < 0)
        return 0;
    else if (n < 4)
        return n;
    else
        return fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4);
}

unittest
{
    alias candidate = fib4;

    assert(candidate(5L) == 4L);
    assert(candidate(8L) == 28L);
    assert(candidate(10L) == 104L);
    assert(candidate(12L) == 386L);
}
void main(){}