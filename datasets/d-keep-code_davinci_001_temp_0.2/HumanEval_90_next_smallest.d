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
        auto result = candidate([1, 2, 3, 4, 5]);
        assert(!result.isNull && result.get == 2);
}

{
        auto result = candidate([5, 1, 4, 3, 2]);
        assert(!result.isNull && result.get == 2);
}

{
        auto result = candidate([]);
        assert(result.isNull);
}

{
        auto result = candidate([1, 1]);
        assert(result.isNull);
}

{
        auto result = candidate([1, 1, 1, 1, 0]);
        assert(!result.isNull && result.get == 1);
}

{
        auto result = candidate([1, 1]);
        assert(result.isNull);
}

{
        auto result = candidate([-35, 34, 12, -45]);
        assert(!result.isNull && result.get == -35);
}

}
void main(){}