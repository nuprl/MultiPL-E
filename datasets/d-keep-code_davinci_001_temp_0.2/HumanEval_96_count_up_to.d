import std.math;
import std.typecons;
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
    long[] primes = new long[n];
    long i = 0;
    while (i < n)
    {
        if (is_prime(i))
        {
            primes[i] = i;
            i++;
        }
        else
        {
            i++;
        }
    }
    return primes;
}

unittest
{
    alias candidate = count_up_to;

    assert(candidate(5L) == [2L, 3L]);
    assert(candidate(6L) == [2L, 3L, 5L]);
    assert(candidate(7L) == [2L, 3L, 5L]);
    assert(candidate(10L) == [2L, 3L, 5L, 7L]);
    assert(candidate(0L) == []);
    assert(candidate(22L) == [2L, 3L, 5L, 7L, 11L, 13L, 17L, 19L]);
    assert(candidate(1L) == []);
    assert(candidate(18L) == [2L, 3L, 5L, 7L, 11L, 13L, 17L]);
    assert(candidate(47L) == [2L, 3L, 5L, 7L, 11L, 13L, 17L, 19L, 23L, 29L, 31L, 37L, 41L, 43L]);
    assert(candidate(101L) == [2L, 3L, 5L, 7L, 11L, 13L, 17L, 19L, 23L, 29L, 31L, 37L, 41L, 43L, 47L, 53L, 59L, 61L, 67L, 71L, 73L, 79L, 83L, 89L, 97L]);
}
void main(){}