import std.math;
import std.typecons;
/*
Complete the function that takes two integers and returns 
    the product of their unit digits.
    Assume the input is always valid.
    Examples:
    multiply(148, 412) should return 16.
    multiply(19, 28) should return 72.
    multiply(2020, 1851) should return 0.
    multiply(14,-15) should return 20.
    
*/
long multiply(long a, long b) 
{
    long result = 0;
    if (a == 0 || b == 0)
        return 0;
    else
    {
        result = a * b;
        return result;
    }
}

unittest
{
    alias candidate = multiply;

    assert(candidate(148, 412) == 16);
    assert(candidate(19, 28) == 72);
    assert(candidate(2020, 1851) == 0);
    assert(candidate(14, -15) == 20);
    assert(candidate(76, 67) == 42);
    assert(candidate(17, 27) == 49);
    assert(candidate(0, 1) == 0);
    assert(candidate(0, 0) == 0);
}
void main(){}