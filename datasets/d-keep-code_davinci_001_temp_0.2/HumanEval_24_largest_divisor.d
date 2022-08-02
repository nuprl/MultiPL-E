import std.typecons;
import std.math;
/*
 For a given number n, find the largest number that divides n evenly, smaller than n
    >>> largest_divisor(15)
    5
    
*/
long largest_divisor(long n) 
{
    long i = 2;
    while (i < n) {
        if (n % i == 0) {
            return i;
        }
        i = i + 1;
    }
    return n;
}

unittest
{
    alias candidate = largest_divisor;

    assert(candidate(3L) == 1L);
    assert(candidate(7L) == 1L);
    assert(candidate(10L) == 5L);
    assert(candidate(100L) == 50L);
    assert(candidate(49L) == 7L);
}
void main(){}