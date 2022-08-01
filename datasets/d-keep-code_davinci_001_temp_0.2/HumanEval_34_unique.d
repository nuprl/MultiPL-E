import std.typecons;
import std.math;
/*
Return sorted unique elements in a list
    >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    [0, 2, 3, 5, 9, 123]
    
*/
long[] unique(long[] l) 
{
    long[] result = new long[l.length];
    int i = 0;
    for (long x in l)
    {
        if (i == 0 || result[i - 1] != x)
            result[i++] = x;
    }
    return result.slice(0, i);
}

unittest
{
    alias candidate = unique;

    assert(candidate([5, 3, 5, 2, 3, 3, 9, 0, 123]) == [0, 2, 3, 5, 9, 123]);
}
void main(){}