import std.typecons;
import std.math;
/*
 Return a greatest common divisor of two integers a and b
    >>> greatest_common_divisor(3, 5)
    1
    >>> greatest_common_divisor(25, 15)
    5
    
*/
long greatest_common_divisor(long a, long b) 
{
    if (b == 0) {
        return a;
    } else {
        return greatest_common_divisor(b, a % b);
    }
}

unittest
{
    alias candidate = greatest_common_divisor;

    assert(candidate(3L, 7L) == 1L);
    assert(candidate(10L, 15L) == 5L);
    assert(candidate(49L, 14L) == 7L);
    assert(candidate(144L, 60L) == 12L);
}
void main(){}