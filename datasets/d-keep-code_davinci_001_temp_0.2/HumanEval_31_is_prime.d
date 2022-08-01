import std.typecons;
import std.math;
/*
Return true if a given number is prime, and false otherwise.
    >>> is_prime(6)
    False
    >>> is_prime(101)
    True
    >>> is_prime(11)
    True
    >>> is_prime(13441)
    True
    >>> is_prime(61)
    True
    >>> is_prime(4)
    False
    >>> is_prime(1)
    False
    
*/
bool is_prime(long n) 
{
    if (n < 2)
        return false;
    else if (n == 2)
        return true;
    else if (n % 2 == 0)
        return false;
    else
    {
        long i = 3;
        while (i * i <= n)
        {
            if (n % i == 0)
                return false;
            i += 2;
        }
        return true;
    }
}

unittest
{
    alias candidate = is_prime;

    assert(candidate(6L) == false);
    assert(candidate(101L) == true);
    assert(candidate(11L) == true);
    assert(candidate(13441L) == true);
    assert(candidate(61L) == true);
    assert(candidate(4L) == false);
    assert(candidate(1L) == false);
    assert(candidate(5L) == true);
    assert(candidate(11L) == true);
    assert(candidate(17L) == true);
    assert(candidate(85L) == false);
    assert(candidate(77L) == false);
    assert(candidate(255379L) == false);
}
void main(){}