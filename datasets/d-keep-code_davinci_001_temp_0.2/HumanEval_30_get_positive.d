import std.math;
import std.typecons;
/*
Return only positive numbers in the list.
    >>> get_positive([-1, 2, -4, 5, 6])
    [2, 5, 6]
    >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    [5, 3, 2, 3, 9, 123, 1]
    
*/
long[] get_positive(long[] l) 
{
    long[] result = new long[0];
    for (long i : l) {
        if (i > 0) {
            result = append(result, i);
        }
    }
    return result;
}

unittest
{
    alias candidate = get_positive;

    assert(candidate([-1, -2, 4, 5, 6]) == [4, 5, 6]);
    assert(candidate([5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10]) == [5, 3, 2, 3, 3, 9, 123, 1]);
    assert(candidate([-1, -2]) == []);
    assert(candidate([]) == []);
}
void main(){}