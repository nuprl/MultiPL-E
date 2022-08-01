import std.typecons;
import std.math;
/*
The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
    fibfib(0) == 0
    fibfib(1) == 0
    fibfib(2) == 1
    fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
    Please write a function to efficiently compute the n-th element of the fibfib number sequence.
    >>> fibfib(1)
    0
    >>> fibfib(5)
    4
    >>> fibfib(8)
    24
    
*/
long fibfib(long n) 
{
    if (n == 0)
        return 0;
    if (n == 1)
        return 0;
    if (n == 2)
        return 1;
    return fibfib(n-1) + fibfib(n-2) + fibfib(n-3);
}

unittest
{
    alias candidate = fibfib;

    assert(candidate(2L) == 1L);
    assert(candidate(1L) == 0L);
    assert(candidate(5L) == 4L);
    assert(candidate(8L) == 24L);
    assert(candidate(10L) == 81L);
    assert(candidate(12L) == 274L);
    assert(candidate(14L) == 927L);
}
void main(){}