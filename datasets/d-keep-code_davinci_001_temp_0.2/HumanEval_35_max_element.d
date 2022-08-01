import std.typecons;
import std.math;
/*
Return maximum element in the list.
    >>> max_element([1, 2, 3])
    3
    >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    123
    
*/
long max_element(long[] l) 
{
    long max = l[0];
    for (int i = 1; i < l.length; i++) {
        if (l[i] > max) {
            max = l[i];
        }
    }
    return max;
}

unittest
{
    alias candidate = max_element;

    assert(candidate([1L, 2L, 3L]) == 3L);
    assert(candidate([5L, 3L, -5L, 2L, -3L, 3L, 9L, 0L, 124L, 1L, -10L]) == 124L);
}
void main(){}