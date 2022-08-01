import std.typecons;
import std.math;
/*
Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
    >>> fizz_buzz(50)
    0
    >>> fizz_buzz(78)
    2
    >>> fizz_buzz(79)
    3
    
*/
long fizz_buzz(long n) 
{
    long count = 0;
    for (long i = 1; i < n; i++) {
        if (i % 11 == 0 || i % 13 == 0) {
            count++;
        }
    }
    return count;
}

unittest
{
    alias candidate = fizz_buzz;

    assert(candidate(50L) == 0L);
    assert(candidate(78L) == 2L);
    assert(candidate(79L) == 3L);
    assert(candidate(100L) == 3L);
    assert(candidate(200L) == 6L);
    assert(candidate(4000L) == 192L);
    assert(candidate(10000L) == 639L);
    assert(candidate(100000L) == 8026L);
}
void main(){}