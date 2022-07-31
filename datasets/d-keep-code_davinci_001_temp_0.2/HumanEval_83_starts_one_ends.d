import std.math;
import std.typecons;
/*

    Given a positive integer n, return the count of the numbers of n-digit
    positive integers that start or end with 1.
    
*/
long starts_one_ends(long n) 
{
    if (n == 0)
        return 0;
    else if (n == 1)
        return 9;
    else
        return 9 * pow(10, n - 1);
}

unittest
{
    alias candidate = starts_one_ends;

    assert(candidate(1) == 1);
    assert(candidate(2) == 18);
    assert(candidate(3) == 180);
    assert(candidate(4) == 1800);
    assert(candidate(5) == 18000);
}
void main(){}