import std.math;
import std.typecons;
/*
A simple program which should return the value of x if n is 
    a prime number and should return the value of y otherwise.

    Examples:
    for x_or_y(7, 34, 12) == 34
    for x_or_y(15, 8, 5) == 5
    
    
*/
long x_or_y(long n, long x, long y) 
{
    if (is_prime(n))
        return x;
    else
        return y;
}

unittest
{
    alias candidate = x_or_y;

    assert(candidate(7L, 34L, 12L) == 34L);
    assert(candidate(15L, 8L, 5L) == 5L);
    assert(candidate(3L, 33L, 5212L) == 33L);
    assert(candidate(1259L, 3L, 52L) == 3L);
    assert(candidate(7919L, -1L, 12L) == -1L);
    assert(candidate(3609L, 1245L, 583L) == 583L);
    assert(candidate(91L, 56L, 129L) == 129L);
    assert(candidate(6L, 34L, 1234L) == 1234L);
    assert(candidate(1L, 2L, 0L) == 0L);
    assert(candidate(2L, 2L, 0L) == 2L);
}
void main(){}