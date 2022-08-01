import std.typecons;
import std.math;
/*
Return the largest prime factor of n. Assume n > 1 and is not a prime.
    >>> largest_prime_factor(13195)
    29
    >>> largest_prime_factor(2048)
    2
    
*/
long largest_prime_factor(long n) 
{
    long i = 2;
    while (n > i) 
    {
        if (n % i == 0) 
        {
            n = n / i;
        }
        else 
        {
            i = i + 1;
        }
    }
    return i;
}

unittest
{
    alias candidate = largest_prime_factor;

    assert(candidate(15L) == 5L);
    assert(candidate(27L) == 3L);
    assert(candidate(63L) == 7L);
    assert(candidate(330L) == 11L);
    assert(candidate(13195L) == 29L);
}
void main(){}