import std.math;
import std.typecons;
/*
 Return a string containing space-delimited numbers starting from 0 upto n inclusive.
    >>> string_sequence(0)
    '0'
    >>> string_sequence(5)
    '0 1 2 3 4 5'
    
*/
const(char)[] string_sequence(long n) 
{
    return str(range(0, n));
}

unittest
{
    alias candidate = string_sequence;

    assert(candidate(0) == "0");
    assert(candidate(3) == "0 1 2 3");
    assert(candidate(10) == "0 1 2 3 4 5 6 7 8 9 10");
}
void main(){}