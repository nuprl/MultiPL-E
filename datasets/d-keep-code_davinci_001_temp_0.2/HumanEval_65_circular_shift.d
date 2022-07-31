import std.math;
import std.typecons;
/*
Circular shift the digits of the integer x, shift the digits right by shift
    and return the result as a string.
    If shift > number of digits, return digits reversed.
    >>> circular_shift(12, 1)
    "21"
    >>> circular_shift(12, 2)
    "12"
    
*/
const(char)[] circular_shift(long x, long shift) 
{
    if(shift > number_of_digits(x))
    {
        return digits_reversed(x);
    }
    else
    {
        return digits_reversed(x / 10^shift) + digits(x % 10^shift);
    }
}
/*
    Return the number of digits in the integer x.
    >>> number_of_digits(12)
    2
    >>> number_of_digits(12345)
    5
*/
const(char)[] number_of_digits(long x)
{
    if(x == 0)
    {
        return "0";
    }
    else
    {
        return number_of_digits(x / 10) + "1";
    }
}
/*
    Return the digits of the integer x in reverse order.
    >>> digits_reversed(12)
    "21"
    >>> digits_reversed(12345)
    "54321"
*/
const(char)[] digits_reversed(long x)
{
    if(x == 0)
    {
        return "0";
    }
    else
    {
        return digits_reversed(x / 10) + digits(x % 10);
    }
}
/*
    Return the digits of the integer x.
    >>> digits(12)
    "12"
    >>> digits(12345)
    "12345"
*/
const(char)[] digits(long x)
{
    if(x == 0)
    {
        return "0";
    }
    else
    {
        return digits(x / 10) + digits(x % 10);
    }
}
/*
    Return the integer formed by reversing the digits of the integer x.
    >>> reverse_digits(12)
    21
    >>> reverse_digits(12345)
    54321
*/
long reverse_digits(long x)
{
    return digits_reversed(x);
}
/*
    Return the integer formed by reversing the digits of the integer x.
    >>> reverse_digits

unittest
{
    alias candidate = circular_shift;

    assert(candidate(100, 2) == "001");
    assert(candidate(12, 2) == "12");
    assert(candidate(97, 8) == "79");
    assert(candidate(12, 1) == "21");
    assert(candidate(11, 101) == "11");
}
void main(){}