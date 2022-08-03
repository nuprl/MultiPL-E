import std.math;
import std.typecons;
/*

    pairs_sum_to_zero takes a list of integers as an input.
    it returns True if there are two distinct elements in the list that
    sum to zero, and False otherwise.
    >>> pairs_sum_to_zero([1, 3, 5, 0])
    False
    >>> pairs_sum_to_zero([1, 3, -2, 1])
    False
    >>> pairs_sum_to_zero([1, 2, 3, 7])
    False
    >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
    True
    >>> pairs_sum_to_zero([1])
    False
    
*/
bool pairs_sum_to_zero(long[] l) 
{
    for (int i = 0; i < l.length; i++)
    {
        for (int j = i + 1; j < l.length; j++)
        {
            if (l[i] + l[j] == 0)
            {
                return true;
            }
        }
    }
    return false;
}

unittest
{
    alias candidate = pairs_sum_to_zero;

    assert(candidate([1L, 3L, 5L, 0L]) == false);
    assert(candidate([1L, 3L, -2L, 1L]) == false);
    assert(candidate([1L, 2L, 3L, 7L]) == false);
    assert(candidate([2L, 4L, -5L, 3L, 5L, 7L]) == true);
    assert(candidate([1L]) == false);
    assert(candidate([-3L, 9L, -1L, 3L, 2L, 30L]) == true);
    assert(candidate([-3L, 9L, -1L, 3L, 2L, 31L]) == true);
    assert(candidate([-3L, 9L, -1L, 4L, 2L, 30L]) == false);
    assert(candidate([-3L, 9L, -1L, 4L, 2L, 31L]) == false);
}
void main(){}