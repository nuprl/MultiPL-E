import std.math;
import std.typecons;
/*
 For a given number n, find the largest number that divides n evenly, smaller than n
    >>> largest_divisor(15)
    5
    
*/
long largest_divisor(long n) 
{
    long largest_divisor = 0;
    for(long i = n-1; i > 0; i--)
    {
        if(n % i == 0)
        {
            largest_divisor = i;
            break;
        }
    }
    return largest_divisor;
}
/*
 For a given number n, find the largest prime number that divides n evenly, smaller than n
    >>> largest_prime_divisor(15)
    5
*/
long largest_prime_divisor(long n)
{
    long largest_prime_divisor = 0;
    for(long i = n-1; i > 0; i--)
    {
        if(n % i == 0 && is_prime(i))
        {
            largest_prime_divisor = i;
            break;
        }
    }
    return largest_prime_divisor;
}
/*
 For a given number n, find the smallest number that divides n evenly, larger than n
    >>> smallest_divisor(15)
    3
*/
long smallest_divisor(long n)
{
    long smallest_divisor = 0;
    for(long i = n+1; i > 0; i++)
    {
        if(n % i == 0)
        {
            smallest_divisor = i;
            break;
        }
    }
    return smallest_divisor;
}
/*
 For a given number n, find the smallest prime number that divides n evenly, larger than n
    >>> smallest_prime_divisor(15)
    3
*/
long smallest_prime_divisor(long n)
{
    long smallest_prime_divisor = 0;
    for(long i = n+1; i > 0; i++)
    {
        if(n % i == 0 && is_prime(i))
        {
            smallest_prime_divisor = i;
            break;
        }
    }
    return smallest_prime_divisor;
}
/*
 For a given number n, find the largest

unittest
{
    alias candidate = largest_divisor;

    assert(candidate(3) == 1);
    assert(candidate(7) == 1);
    assert(candidate(10) == 5);
    assert(candidate(100) == 50);
    assert(candidate(49) == 7);
}
void main(){}