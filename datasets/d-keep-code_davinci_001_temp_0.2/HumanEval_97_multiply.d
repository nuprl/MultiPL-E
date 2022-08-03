import std.typecons;
import std.math;
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
    if (a < 0 && b < 0)
    {
        a = -a;
        b = -b;
    }
    else if (a < 0)
    {
        a = -a;
        result = -1;
    }
    else if (b < 0)
    {
        b = -b;
        result = -1;
    }
    long a_unit = a % 10;
    long b_unit = b % 10;
    result = a_unit * b_unit;
    return result;
}

unittest
{
    alias candidate = multiply;

    assert(candidate(148L, 412L) == 16L);
    assert(candidate(19L, 28L) == 72L);
    assert(candidate(2020L, 1851L) == 0L);
    assert(candidate(14L, -15L) == 20L);
    assert(candidate(76L, 67L) == 42L);
    assert(candidate(17L, 27L) == 49L);
    assert(candidate(0L, 1L) == 0L);
    assert(candidate(0L, 0L) == 0L);
}
void main(){}