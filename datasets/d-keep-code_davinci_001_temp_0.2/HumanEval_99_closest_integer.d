import std.typecons;
import std.math;
/*

    Create a function that takes a value (string) representing a number
    and returns the closest integer to it. If the number is equidistant
    from two integers, round it away from zero.

    Examples
    >>> closest_integer("10")
    10
    >>> closest_integer("15.3")
    15

    Note:
    Rounding away from zero means that if the given number is equidistant
    from two integers, the one you should return is the one that is the
    farthest from zero. For example closest_integer("14.5") should
    return 15 and closest_integer("-14.5") should return -15.
    
*/
long closest_integer(string value) 
{
    return std.math.round(std.typecons.parse_double(value));
}

unittest
{
    alias candidate = closest_integer;

    assert(candidate("10") == 10L);
    assert(candidate("14.5") == 15L);
    assert(candidate("-15.5") == -16L);
    assert(candidate("15.3") == 15L);
    assert(candidate("0") == 0L);
}
void main(){}