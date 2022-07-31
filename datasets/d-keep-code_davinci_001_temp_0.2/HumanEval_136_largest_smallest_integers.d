import std.math;
import std.typecons;
/*

    Create a function that returns a tuple (a, b), where 'a' is
    the largest of negative integers, and 'b' is the smallest
    of positive integers in a list.
    If there is no negative or positive integers, return them as None.

    Examples:
    largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
    largest_smallest_integers([]) == (None, None)
    largest_smallest_integers([0]) == (None, None)
    
*/
Tuple!(Nullable!(long), Nullable!(long)) largest_smallest_integers(long[] lst) 
{
    if (lst.length == 0)
    {
        return (None, None);
    }
    else if (lst.length == 1)
    {
        return (None, Some(lst[0]));
    }
    else
    {
        var neg = lst[0];
        var pos = lst[0];
        for (var i = 1; i < lst.length; i++)
        {
            if (lst[i] < 0)
            {
                neg = std.math.max(neg, lst[i]);
            }
            else
            {
                pos = std.math.min(pos, lst[i]);
            }
        }
        return (Some(neg), Some(pos));
    }
}

unittest
{
    alias candidate = largest_smallest_integers;

{
        auto result = candidate([2, 4, 1, 3, 5, 7]);
        assert(result[0].isNull);
        assert(!result[1].isNull && result[1].get == 1);
}

{
        auto result = candidate([2, 4, 1, 3, 5, 7, 0]);
        assert(result[0].isNull);
        assert(!result[1].isNull && result[1].get == 1);
}

{
        auto result = candidate([1, 3, 2, 4, 5, 6, -2]);
        assert(!result[0].isNull && result[0].get == -2);
        assert(!result[1].isNull && result[1].get == 1);
}

{
        auto result = candidate([4, 5, 3, 6, 2, 7, -7]);
        assert(!result[0].isNull && result[0].get == -7);
        assert(!result[1].isNull && result[1].get == 2);
}

{
        auto result = candidate([7, 3, 8, 4, 9, 2, 5, -9]);
        assert(!result[0].isNull && result[0].get == -9);
        assert(!result[1].isNull && result[1].get == 2);
}

{
        auto result = candidate([]);
        assert(result[0].isNull);
        assert(result[1].isNull);
}

{
        auto result = candidate([0]);
        assert(result[0].isNull);
        assert(result[1].isNull);
}

{
        auto result = candidate([-1, -3, -5, -6]);
        assert(!result[0].isNull && result[0].get == -1);
        assert(result[1].isNull);
}

{
        auto result = candidate([-1, -3, -5, -6, 0]);
        assert(!result[0].isNull && result[0].get == -1);
        assert(result[1].isNull);
}

{
        auto result = candidate([-6, -4, -4, -3, 1]);
        assert(!result[0].isNull && result[0].get == -3);
        assert(!result[1].isNull && result[1].get == 1);
}

{
        auto result = candidate([-6, -4, -4, -3, -100, 1]);
        assert(!result[0].isNull && result[0].get == -3);
        assert(!result[1].isNull && result[1].get == 1);
}

}
void main(){}