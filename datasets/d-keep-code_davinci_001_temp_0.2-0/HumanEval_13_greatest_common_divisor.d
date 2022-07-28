import std.typecons;
import std.math;
/*
 Return a greatest common divisor of two integers a and b
    >>> greatest_common_divisor(3, 5)
    1
    >>> greatest_common_divisor(25, 15)
    5
    
*/
int greatest_common_divisor(int a, int b) 
{
    if (b == 0)
        return a;
    else
        return greatest_common_divisor(b, a % b);
}

unittest
{
    alias candidate = greatest_common_divisor;

    assert(candidate(3, 7) == 1);
    assert(candidate(10, 15) == 5);
    assert(candidate(49, 14) == 7);
    assert(candidate(144, 60) == 12);
}
void main(){}