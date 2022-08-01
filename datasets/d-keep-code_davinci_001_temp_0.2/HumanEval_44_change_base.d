import std.typecons;
import std.math;
/*
Change numerical base of input number x to base.
    return string representation after the conversion.
    base numbers are less than 10.
    >>> change_base(8, 3)
    '22'
    >>> change_base(8, 2)
    '1000'
    >>> change_base(7, 2)
    '111'
    
*/
string change_base(long x, long base) 
{
    string result = "";
    while (x != 0) {
        result = std.math.to_string(x % base) + result;
        x /= base;
    }
    return result;
}

unittest
{
    alias candidate = change_base;

    assert(candidate(8L, 3L) == "22");
    assert(candidate(9L, 3L) == "100");
    assert(candidate(234L, 2L) == "11101010");
    assert(candidate(16L, 2L) == "10000");
    assert(candidate(8L, 2L) == "1000");
    assert(candidate(7L, 2L) == "111");
    assert(candidate(2L, 3L) == "2");
    assert(candidate(3L, 4L) == "3");
    assert(candidate(4L, 5L) == "4");
    assert(candidate(5L, 6L) == "5");
    assert(candidate(6L, 7L) == "6");
    assert(candidate(7L, 8L) == "7");
}
void main(){}