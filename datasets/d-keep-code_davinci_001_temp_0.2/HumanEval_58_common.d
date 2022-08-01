import std.typecons;
import std.math;
/*
Return sorted unique common elements for two lists.
    >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
    [1, 5, 653]
    >>> common([5, 3, 2, 8], [3, 2])
    [2, 3]

    
*/
long[] common(long[] l1, long[] l2) 
{
    long[] l3 = new long[std.math.min(l1.length, l2.length)];
    int i = 0;
    for (int j = 0; j < l1.length; j++)
    {
        for (int k = 0; k < l2.length; k++)
        {
            if (l1[j] == l2[k])
            {
                l3[i] = l1[j];
                i++;
            }
        }
    }
    return std.typecons.Tuple.make(l3);
}

unittest
{
    alias candidate = common;

    assert(candidate([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]) == [1, 5, 653]);
    assert(candidate([5, 3, 2, 8], [3, 2]) == [2, 3]);
    assert(candidate([4, 3, 2, 8], [3, 2, 4]) == [2, 3, 4]);
    assert(candidate([4, 3, 2, 8], []) == []);
}
void main(){}