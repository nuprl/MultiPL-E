import std.math;
import std.typecons;
/*
Given a list of positive integers x. return a sorted list of all 
    elements that hasn't any even digit.

    Note: Returned list should be sorted in increasing order.
    
    For example:
    >>> unique_digits([15, 33, 1422, 1])
    [1, 15, 33]
    >>> unique_digits([152, 323, 1422, 10])
    []
    
*/
long[] unique_digits(long[] x) 
{
    // your code here
    return null;
}

unittest
{
    alias candidate = unique_digits;

    assert(candidate([15L, 33L, 1422L, 1L]) == [1L, 15L, 33L]);
    assert(candidate([152L, 323L, 1422L, 10L]) == []);
    assert(candidate([12345L, 2033L, 111L, 151L]) == [111L, 151L]);
    assert(candidate([135L, 103L, 31L]) == [31L, 135L]);
}
void main(){}