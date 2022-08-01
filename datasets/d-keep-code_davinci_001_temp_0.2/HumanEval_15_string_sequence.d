import std.typecons;
import std.math;
/*
 Return a string containing space-delimited numbers starting from 0 upto n inclusive.
    >>> string_sequence(0)
    '0'
    >>> string_sequence(5)
    '0 1 2 3 4 5'
    
*/
string string_sequence(long n) 
{
    string s = "";
    for (long i = 0; i <= n; i++) {
        s += i + " ";
    }
    return s;
}

unittest
{
    alias candidate = string_sequence;

    assert(candidate(0L) == "0");
    assert(candidate(3L) == "0 1 2 3");
    assert(candidate(10L) == "0 1 2 3 4 5 6 7 8 9 10");
}
void main(){}