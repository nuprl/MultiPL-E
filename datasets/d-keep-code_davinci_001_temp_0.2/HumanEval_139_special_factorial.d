import std.typecons;
import std.math;
/*
The Brazilian factorial is defined as:
    brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
    where n > 0

    For example:
    >>> special_factorial(4)
    288

    The function will receive an integer as input and should return the special
    factorial of this integer.
    
*/
long special_factorial(long n) 
{
    if (n == 0)
    {
        return 1;
    }
    else
    {
        return n * special_factorial(n - 1);
    }
}

unittest
{
    alias candidate = special_factorial;

    assert(candidate(4L) == 288L);
    assert(candidate(5L) == 34560L);
    assert(candidate(7L) == 125411328000L);
    assert(candidate(1L) == 1L);
}
void main(){}