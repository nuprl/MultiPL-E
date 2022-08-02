import std.typecons;
import std.math;
/*

    Given a positive integer n, return the count of the numbers of n-digit
    positive integers that start or end with 1.
    
*/
long starts_one_ends(long n) 
{
    if (n == 0) return 0;
    if (n == 1) return 1;
    return starts_one_ends(n-1) + ends_one_starts(n-1);
}

unittest
{
    alias candidate = starts_one_ends;

    assert(candidate(1L) == 1L);
    assert(candidate(2L) == 18L);
    assert(candidate(3L) == 180L);
    assert(candidate(4L) == 1800L);
    assert(candidate(5L) == 18000L);
}
void main(){}