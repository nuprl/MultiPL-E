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
string circular_shift(long x, long shift) 
{
    string result = "";
    int digits = digits_in_int(x);
    int shift_digits = digits - shift;
    if (shift_digits < 0) {
        shift_digits = digits;
    }
    for (int i = 0; i < shift_digits; i++) {
        result = result + int_to_string(x % 10);
        x = x / 10;
    }
    for (int i = 0; i < shift; i++) {
        result = result + int_to_string(x % 10);
        x = x / 10;
    }
    return result;
}
/*
    >>> circular_shift(12, 1)
    "21"
    >>> circular_shift(12, 2)
    "12"
*/

unittest
{
    alias candidate = circular_shift;

    assert(candidate(100L, 2L) == "001");
    assert(candidate(12L, 2L) == "12");
    assert(candidate(97L, 8L) == "79");
    assert(candidate(12L, 1L) == "21");
    assert(candidate(11L, 101L) == "11");
}
void main(){}