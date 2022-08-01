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

    assert(candidate([-1, -2, 4, 5, 6]) == [4, 5, 6]);
    assert(candidate([5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10]) == [5, 3, 2, 3, 3, 9, 123, 1]);
    assert(candidate([-1, -2]) == []);
    assert(candidate([]) == []);
}
void main(){}