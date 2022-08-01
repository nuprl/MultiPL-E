import std.typecons;
import std.math;
/*
Implement a function that takes an non-negative integer and returns an array of the first n
    integers that are prime numbers and less than n.
    for example:
    count_up_to(5) => [2,3]
    count_up_to(11) => [2,3,5,7]
    count_up_to(0) => []
    count_up_to(20) => [2,3,5,7,11,13,17,19]
    count_up_to(1) => []
    count_up_to(18) => [2,3,5,7,11,13,17]
    
*/
long[] count_up_to(long n) 
{
    if (n < 2)
        return new long[0];
    else
    {
        long[] primes = new long[n];
        long[] non_primes = new long[n];
        for (int i = 2; i < n; i++)
        {
            if (is_prime(i))
                primes[i] = i;
            else
                non_primes[i] = i;
        }
        return primes;
    }
}

unittest
{
    alias candidate = count_up_to;

    assert(candidate(5) == [2, 3]);
    assert(candidate(6) == [2, 3, 5]);
    assert(candidate(7) == [2, 3, 5]);
    assert(candidate(10) == [2, 3, 5, 7]);
    assert(candidate(0) == []);
    assert(candidate(22) == [2, 3, 5, 7, 11, 13, 17, 19]);
    assert(candidate(1) == []);
    assert(candidate(18) == [2, 3, 5, 7, 11, 13, 17]);
    assert(candidate(47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43]);
    assert(candidate(101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]);
}
void main(){}