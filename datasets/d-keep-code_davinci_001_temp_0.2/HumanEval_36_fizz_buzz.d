import std.math;
import std.typecons;
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
        if ((i % 11 == 0) || (i % 13 == 0)) {
            count += std.math.count_digits(i, 7);
        }
    }
    return count;
}

unittest
{
    alias candidate = fizz_buzz;

    assert(candidate(50) == 0);
    assert(candidate(78) == 2);
    assert(candidate(79) == 3);
    assert(candidate(100) == 3);
    assert(candidate(200) == 6);
    assert(candidate(4000) == 192);
    assert(candidate(10000) == 639);
    assert(candidate(100000) == 8026);
}
void main(){}