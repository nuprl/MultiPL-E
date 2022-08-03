import std.math;
import std.typecons;
/*

    Given a list of numbers, return whether or not they are sorted
    in ascending order. If list has more than 1 duplicate of the same
    number, return False. Assume no negative numbers and only integers.

    Examples
    is_sorted([5]) ➞ True
    is_sorted([1, 2, 3, 4, 5]) ➞ True
    is_sorted([1, 3, 2, 4, 5]) ➞ False
    is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
    is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
    is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
    is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
    is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
    
*/
bool is_sorted(long[] lst) 
{
    for (int i = 0; i < lst.length; i++)
    {
        if (i < lst.length - 1 && lst[i] > lst[i + 1])
        {
            return false;
        }
    }
    return true;
}

unittest
{
    alias candidate = is_sorted;

    assert(candidate([5L]) == true);
    assert(candidate([1L, 2L, 3L, 4L, 5L]) == true);
    assert(candidate([1L, 3L, 2L, 4L, 5L]) == false);
    assert(candidate([1L, 2L, 3L, 4L, 5L, 6L]) == true);
    assert(candidate([1L, 2L, 3L, 4L, 5L, 6L, 7L]) == true);
    assert(candidate([1L, 3L, 2L, 4L, 5L, 6L, 7L]) == false);
    assert(candidate([]) == true);
    assert(candidate([1L]) == true);
    assert(candidate([3L, 2L, 1L]) == false);
    assert(candidate([1L, 2L, 2L, 2L, 3L, 4L]) == false);
    assert(candidate([1L, 2L, 3L, 3L, 3L, 4L]) == false);
    assert(candidate([1L, 2L, 2L, 3L, 3L, 4L]) == true);
    assert(candidate([1L, 2L, 3L, 4L]) == true);
}
void main(){}