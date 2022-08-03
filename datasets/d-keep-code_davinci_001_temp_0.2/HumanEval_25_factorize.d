import std.typecons;
import std.math;
/*
 Return list of prime factors of given integer in the order from smallest to largest.
    Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
    Input number should be equal to the product of all factors
    >>> factorize(8)
    [2, 2, 2]
    >>> factorize(25)
    [5, 5]
    >>> factorize(70)
    [2, 5, 7]
    
*/
long[] factorize(long n) 
{
    long[] factors = new long[0];
    for (long i = 2; i <= n; i++)
    {
        while (n % i == 0)
        {
            factors = append(factors, i);
            n /= i;
        }
    }
    return factors;
}

unittest
{
    alias candidate = factorize;

    assert(candidate(2L) == [2L]);
    assert(candidate(4L) == [2L, 2L]);
    assert(candidate(8L) == [2L, 2L, 2L]);
    assert(candidate(57L) == [3L, 19L]);
    assert(candidate(3249L) == [3L, 3L, 19L, 19L]);
    assert(candidate(185193L) == [3L, 3L, 3L, 19L, 19L, 19L]);
    assert(candidate(20577L) == [3L, 19L, 19L, 19L]);
    assert(candidate(18L) == [2L, 3L, 3L]);
}
void main(){}