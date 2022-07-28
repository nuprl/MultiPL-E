import std.typecons;
import std.math;
/*
Return the largest prime factor of n. Assume n > 1 and is not a prime.
    >>> largest_prime_factor(13195)
    29
    >>> largest_prime_factor(2048)
    2
    
*/
int largest_prime_factor(int n) 
{
    int i;
    int max = 1;
    for (i = 2; i <= n; i++) 
    {
        if (n % i == 0) 
        {
            n = n / i;
            max = i;
            i = 2;
        }
    }
    return max;
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