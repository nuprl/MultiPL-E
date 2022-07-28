
/*
Return the largest prime factor of n. Assume n > 1 and is not a prime.
    >>> largest_prime_factor(13195)
    29
    >>> largest_prime_factor(2048)
    2
    
*/
int largest_prime_factor(int n) 
{
    int i, max_prime = 1;
    for (i = 2; i <= n; i++)
    {
        if (n % i == 0)
        {
            if (is_prime(i))
            {
                max_prime = i;
            }
            n /= i;
        }
    }
    return max_prime;
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