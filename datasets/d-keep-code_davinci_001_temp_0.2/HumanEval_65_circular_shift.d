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
string circular_shift(long x, long shift) 
{
    string s = to_string(x);
    if (shift > s.length()) {
        return s.reverse();
    }
    return s.substr(s.length() - shift) + s.substr(0, s.length() - shift);
}

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