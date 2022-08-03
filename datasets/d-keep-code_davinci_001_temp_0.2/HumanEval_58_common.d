import std.math;
import std.typecons;
/*
Return sorted unique common elements for two lists.
    >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
    [1, 5, 653]
    >>> common([5, 3, 2, 8], [3, 2])
    [2, 3]

    
*/
long[] common(long[] l1, long[] l2) 
{
    long[] result = new long[0];
    for (long i = 0; i < l1.length; i++) {
        for (long j = 0; j < l2.length; j++) {
            if (l1[i] == l2[j]) {
                result = append(result, l1[i]);
            }
        }
    }
    return unique(result);
}

unittest
{
    alias candidate = common;

    assert(candidate([1L, 4L, 3L, 34L, 653L, 2L, 5L], [5L, 7L, 1L, 5L, 9L, 653L, 121L]) == [1L, 5L, 653L]);
    assert(candidate([5L, 3L, 2L, 8L], [3L, 2L]) == [2L, 3L]);
    assert(candidate([4L, 3L, 2L, 8L], [3L, 2L, 4L]) == [2L, 3L, 4L]);
    assert(candidate([4L, 3L, 2L, 8L], []) == []);
}
void main(){}