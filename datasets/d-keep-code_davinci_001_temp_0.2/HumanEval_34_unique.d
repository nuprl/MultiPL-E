import std.typecons;
import std.math;
/*
Return sorted unique elements in a list
    >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    [0, 2, 3, 5, 9, 123]
    
*/
int[] unique(int[] l) 
{
    int[] r = new int[l.length];
    int i = 0;
    for (int x : l)
    {
        if (i == 0 || r[i - 1] != x)
            r[i++] = x;
    }
    return r.slice(0, i);
}

unittest
{
    alias candidate = unique;

    assert(candidate([5, 3, 5, 2, 3, 3, 9, 0, 123]) == [0, 2, 3, 5, 9, 123]);
}
void main(){}