import std.math;
import std.typecons;
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
    while (i < n) {
        if (n % i == 0) {
            n = n / i;
        } else {
            i = i + 1;
        }
    }
    return i;
}

unittest
{
    alias candidate = largest_prime_factor;

    assert(candidate(15) == 5);
    assert(candidate(27) == 3);
    assert(candidate(63) == 7);
    assert(candidate(330) == 11);
    assert(candidate(13195) == 29);
}
void main(){}