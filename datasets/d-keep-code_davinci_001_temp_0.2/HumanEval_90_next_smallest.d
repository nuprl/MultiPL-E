import std.math;
import std.typecons;
/*

    You are given a list of integers.
    Write a function next_smallest() that returns the 2nd smallest element of the list.
    Return None if there is no such element.
    
    next_smallest([1, 2, 3, 4, 5]) == 2
    next_smallest([5, 1, 4, 3, 2]) == 2
    next_smallest([]) == None
    next_smallest([1, 1]) == None
    
*/
Nullable!(long) next_smallest(long[] lst) 
{
    if (lst.length() == 0) return None;
    var min = lst[0];
    var min_index = 0;
    for (var i = 1; i < lst.length(); i++)
    {
        if (lst[i] < min)
        {
            min = lst[i];
            min_index = i;
        }
    }
    if (min_index == 0) return None;
    return lst[min_index - 1];
}

unittest
{
    alias candidate = next_smallest;

{
        auto result = candidate([1L, 2L, 3L, 4L, 5L]);
        assert(!result.isNull && result.get == 2L);
}

{
        auto result = candidate([5L, 1L, 4L, 3L, 2L]);
        assert(!result.isNull && result.get == 2L);
}

{
        auto result = candidate([]);
        assert(result.isNull);
}

{
        auto result = candidate([1L, 1L]);
        assert(result.isNull);
}

{
        auto result = candidate([1L, 1L, 1L, 1L, 0L]);
        assert(!result.isNull && result.get == 1L);
}

{
        auto result = candidate([1L, 1L]);
        assert(result.isNull);
}

{
        auto result = candidate([-35L, 34L, 12L, -45L]);
        assert(!result.isNull && result.get == -35L);
}

}
void main(){}