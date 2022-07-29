import std.typecons;
import std.math;
/*

    You are given a list of integers.
    Write a function next_smallest() that returns the 2nd smallest element of the list.
    Return None if there is no such element.
    
    next_smallest([1, 2, 3, 4, 5]) == 2
    next_smallest([5, 1, 4, 3, 2]) == 2
    next_smallest([]) == None
    next_smallest([1, 1]) == None
    
*/
Nullable!(int) next_smallest(int[] lst) 
{
    if (lst.length() == 0)
        return None();
    else if (lst.length() == 1)
        return None();
    else
    {
        var min = lst[0];
        var min_index = 0;
        var second_min = lst[0];
        var second_min_index = 0;
        for (int i = 1; i < lst.length(); i++)
        {
            if (lst[i] < min)
            {
                second_min = min;
                second_min_index = min_index;
                min = lst[i];
                min_index = i;
            }
            else if (lst[i] < second_min)
            {
                second_min = lst[i];
                second_min_index = i;
            }
        }
        if (min_index == 0)
            return Some(second_min);
        else
            return Some(min);
    }
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