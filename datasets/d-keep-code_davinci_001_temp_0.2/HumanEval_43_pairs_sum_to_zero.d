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

    assert(candidate([1, 3, 5, 0]) == false);
    assert(candidate([1, 3, -2, 1]) == false);
    assert(candidate([1, 2, 3, 7]) == false);
    assert(candidate([2, 4, -5, 3, 5, 7]) == true);
    assert(candidate([1]) == false);
    assert(candidate([-3, 9, -1, 3, 2, 30]) == true);
    assert(candidate([-3, 9, -1, 3, 2, 31]) == true);
    assert(candidate([-3, 9, -1, 4, 2, 30]) == false);
    assert(candidate([-3, 9, -1, 4, 2, 31]) == false);
}
void main(){}