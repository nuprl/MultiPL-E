import std.typecons;
import std.math;
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
Tuple!(Nullable!(int), Nullable!(int)) largest_smallest_integers(int[] lst) 
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
        int min = lst[0];
        int max = lst[0];
        for (int i = 1; i < lst.length; i++)
        {
            if (lst[i] < min)
            {
                min = lst[i];
            }
            else if (lst[i] > max)
            {
                max = lst[i];
            }
        }
        return (Some(min), Some(max));
    }
}

unittest
{
    alias candidate = largest_smallest_integers;

    assert(candidate([2, 4, 1, 3, 5, 7]) == tuple(None, 1));
    assert(candidate([2, 4, 1, 3, 5, 7, 0]) == tuple(None, 1));
    assert(candidate([1, 3, 2, 4, 5, 6, -2]) == tuple(-2, 1));
    assert(candidate([4, 5, 3, 6, 2, 7, -7]) == tuple(-7, 2));
    assert(candidate([7, 3, 8, 4, 9, 2, 5, -9]) == tuple(-9, 2));
    assert(candidate([]) == tuple(None, None));
    assert(candidate([0]) == tuple(None, None));
    assert(candidate([-1, -3, -5, -6]) == tuple(-1, None));
    assert(candidate([-1, -3, -5, -6, 0]) == tuple(-1, None));
    assert(candidate([-6, -4, -4, -3, 1]) == tuple(-3, 1));
    assert(candidate([-6, -4, -4, -3, -100, 1]) == tuple(-3, 1));
}
void main(){}