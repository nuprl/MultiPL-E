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

    assert(candidate(3) == 1);
    assert(candidate(7) == 1);
    assert(candidate(10) == 5);
    assert(candidate(100) == 50);
    assert(candidate(49) == 7);
}
void main(){}