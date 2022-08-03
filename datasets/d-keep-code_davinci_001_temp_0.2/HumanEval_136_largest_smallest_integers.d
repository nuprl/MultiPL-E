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
        auto result = candidate([2L, 4L, 1L, 3L, 5L, 7L]);
        assert(result[0].isNull);
        assert(!result[1].isNull && result[1].get == 1L);
}

{
        auto result = candidate([2L, 4L, 1L, 3L, 5L, 7L, 0L]);
        assert(result[0].isNull);
        assert(!result[1].isNull && result[1].get == 1L);
}

{
        auto result = candidate([1L, 3L, 2L, 4L, 5L, 6L, -2L]);
        assert(!result[0].isNull && result[0].get == -2L);
        assert(!result[1].isNull && result[1].get == 1L);
}

{
        auto result = candidate([4L, 5L, 3L, 6L, 2L, 7L, -7L]);
        assert(!result[0].isNull && result[0].get == -7L);
        assert(!result[1].isNull && result[1].get == 2L);
}

{
        auto result = candidate([7L, 3L, 8L, 4L, 9L, 2L, 5L, -9L]);
        assert(!result[0].isNull && result[0].get == -9L);
        assert(!result[1].isNull && result[1].get == 2L);
}

{
        auto result = candidate([]);
        assert(result[0].isNull);
        assert(result[1].isNull);
}

{
        auto result = candidate([0L]);
        assert(result[0].isNull);
        assert(result[1].isNull);
}

{
        auto result = candidate([-1L, -3L, -5L, -6L]);
        assert(!result[0].isNull && result[0].get == -1L);
        assert(result[1].isNull);
}

{
        auto result = candidate([-1L, -3L, -5L, -6L, 0L]);
        assert(!result[0].isNull && result[0].get == -1L);
        assert(result[1].isNull);
}

{
        auto result = candidate([-6L, -4L, -4L, -3L, 1L]);
        assert(!result[0].isNull && result[0].get == -3L);
        assert(!result[1].isNull && result[1].get == 1L);
}

{
        auto result = candidate([-6L, -4L, -4L, -3L, -100L, 1L]);
        assert(!result[0].isNull && result[0].get == -3L);
        assert(!result[1].isNull && result[1].get == 1L);
}

}
void main(){}