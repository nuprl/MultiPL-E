import std.math;
import std.typecons;
/*
Return sorted unique elements in a list
    >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    [0, 2, 3, 5, 9, 123]
    
*/
long[] unique(long[] l) 
{
    long[] result = new long[l.length];
    long[] result_index = new long[l.length];
    long[] l_index = new long[l.length];
    for (long i = 0; i < l.length; i++)
    {
        l_index[i] = i;
    }
    long[] l_sorted = sort(l);
    long[] l_sorted_index = sort(l_index);
    long last = l_sorted[0];
    long last_index = l_sorted_index[0];
    result[0] = last;
    result_index[0] = last_index;
    long j = 0;
    for (long i = 1; i < l.length; i++)
    {
        if (l_sorted[i] != last)
        {
            j = j + 1;
            last = l_sorted[i];
            last_index = l_sorted_index[i];
            result[j] = last;
            result_index[j] = last_index;
        }
    }
    long[] result_sorted = sort(result_index);
    long[] result_sorted_index = sort(result_index);
    long[] result_unique = new long[j+1];
    for (long i = 0; i < j+1; i++)
    {
        result_unique[i] = result[result_sorted_index[i]];
    }
    return result_unique;
}

unittest
{
    alias candidate = unique;

    assert(candidate([5L, 3L, 5L, 2L, 3L, 3L, 9L, 0L, 123L]) == [0L, 2L, 3L, 5L, 9L, 123L]);
}
void main(){}