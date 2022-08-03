import std.math;
import std.typecons;
/*
Return 2^n modulo p (be aware of numerics).
    >>> modp(3, 5)
    3
    >>> modp(1101, 101)
    2
    >>> modp(0, 101)
    1
    >>> modp(3, 11)
    8
    >>> modp(100, 101)
    1
    
*/
long modp(long n, long p) 
{
    if (n == 0)
        return 1;
    else
        return (modp(n - 1, p) * 2) % p;
}

unittest
{
    alias candidate = modp;

    assert(candidate(3L, 5L) == 3L);
    assert(candidate(1101L, 101L) == 2L);
    assert(candidate(0L, 101L) == 1L);
    assert(candidate(3L, 11L) == 8L);
    assert(candidate(100L, 101L) == 1L);
    assert(candidate(30L, 5L) == 4L);
    assert(candidate(31L, 5L) == 3L);
}
void main(){}