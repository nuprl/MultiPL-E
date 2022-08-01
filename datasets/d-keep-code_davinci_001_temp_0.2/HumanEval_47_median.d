import std.typecons;
import std.math;
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
    long[] s = new long[n];
    for (int i = 0; i < n; i++)
        s[i] = l[i];
    std.sort.sort(s);
    if (n % 2 == 0)
        return (float)(s[n / 2 - 1] + s[n / 2]) / 2;
    else
        return (float)s[n / 2];
}

unittest
{
    alias candidate = median;

    assert(candidate([3, 1, 2, 4, 5]) == 3);
    assert(candidate([-10, 4, 6, 1000, 10, 20]) == 8.0);
    assert(candidate([5]) == 5);
    assert(candidate([6, 5]) == 5.5);
    assert(candidate([8, 1, 3, 9, 9, 2, 7]) == 7);
}
void main(){}