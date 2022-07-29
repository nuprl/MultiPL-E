import std.typecons;
import std.math;
/*
 For a given number n, find the largest number that divides n evenly, smaller than n
    >>> largest_divisor(15)
    5
    
*/
int largest_divisor(int n) 
{
    int i;
    for (i = n - 1; i > 0; i--)
    {
        if (n % i == 0)
            return i;
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