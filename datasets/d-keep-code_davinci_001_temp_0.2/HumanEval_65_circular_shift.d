import std.typecons;
import std.math;
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
    if (shift > number_of_digits(x))
        return digits_reversed(x);
    else
        return digits_reversed(x / 10) + digits(x % 10);
end

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