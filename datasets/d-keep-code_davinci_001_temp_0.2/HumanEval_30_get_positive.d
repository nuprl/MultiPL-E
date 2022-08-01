import std.typecons;
import std.math;
/*
Return only positive numbers in the list.
    >>> get_positive([-1, 2, -4, 5, 6])
    [2, 5, 6]
    >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    [5, 3, 2, 3, 9, 123, 1]
    
*/
long[] get_positive(long[] l) 
{
    var result = new long[0];
    for (int i = 0; i < l.length; i++) {
        if (l[i] > 0) {
            result = append(result, l[i]);
        }
    }
    return result;
}

unittest
{
    alias candidate = get_positive;

    assert(candidate([-1L, -2L, 4L, 5L, 6L]) == [4L, 5L, 6L]);
    assert(candidate([5L, 3L, -5L, 2L, 3L, 3L, 9L, 0L, 123L, 1L, -10L]) == [5L, 3L, 2L, 3L, 3L, 9L, 123L, 1L]);
    assert(candidate([-1L, -2L]) == []);
    assert(candidate([]) == []);
}
void main(){}