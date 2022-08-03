import std.math;
import std.typecons;
/*
Return median of elements in the list l.
    >>> median([3, 1, 2, 4, 5])
    3
    >>> median([-10, 4, 6, 1000, 10, 20])
    15.0
    
*/
float median(long[] l) 
{
    long n = l.length;
    if (n == 0) {
        throw new std.OutOfRangeException("median of empty list");
    }
    long[] s = new long[n];
    for (long i = 0; i < n; i++) {
        s[i] = l[i];
    }
    std.sort.quickSort(s);
    if (n % 2 == 0) {
        return (float)(s[n / 2 - 1] + s[n / 2]) / 2;
    } else {
        return (float)s[n / 2];
    }
}

unittest
{
    alias candidate = median;

    assert(candidate([3L, 1L, 2L, 4L, 5L]) == 3L);
    assert(candidate([-10L, 4L, 6L, 1000L, 10L, 20L]) == 8.0);
    assert(candidate([5L]) == 5L);
    assert(candidate([6L, 5L]) == 5.5);
    assert(candidate([8L, 1L, 3L, 9L, 9L, 2L, 7L]) == 7L);
}
void main(){}