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
int[] factorize(int n) 
{
    int[] factors = new int[0];
    int i = 2;
    while (n > 1)
    {
        if (n % i == 0)
        {
            factors = append(factors, i);
            n /= i;
        }
        else
        {
            i++;
        }
    }
    return factors;
}

unittest
{
    alias candidate = factorize;

    assert(candidate(2) == [2]);
    assert(candidate(4) == [2, 2]);
    assert(candidate(8) == [2, 2, 2]);
    assert(candidate(57) == [3, 19]);
    assert(candidate(3249) == [3, 3, 19, 19]);
    assert(candidate(185193) == [3, 3, 3, 19, 19, 19]);
    assert(candidate(20577) == [3, 19, 19, 19]);
    assert(candidate(18) == [2, 3, 3]);
}
void main(){}