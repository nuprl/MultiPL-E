import std.math;
import std.typecons;
/*
Given a positive integer n, return the product of the odd digits.
    Return 0 if all digits are even.
    For example:
    digits(1)  == 1
    digits(4)  == 0
    digits(235) == 15
    
*/
long digits(long n) 
{
    long product = 1;
    while (n > 0)
    {
        if (n % 2 == 1)
        {
            product *= n % 10;
        }
        n /= 10;
    }
    return product;
}
digits(235)


unittest
{
    alias candidate = digits;

    assert(candidate(5L) == 5L);
    assert(candidate(54L) == 5L);
    assert(candidate(120L) == 1L);
    assert(candidate(5014L) == 5L);
    assert(candidate(98765L) == 315L);
    assert(candidate(5576543L) == 2625L);
    assert(candidate(2468L) == 0L);
}
void main(){}