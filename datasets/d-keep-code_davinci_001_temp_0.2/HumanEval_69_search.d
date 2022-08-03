import std.math;
import std.typecons;
/*

    You are given a non-empty list of positive integers. Return the greatest integer that is greater than 
    zero, and has a frequency greater than or equal to the value of the integer itself. 
    The frequency of an integer is the number of times it appears in the list.
    If no such a value exist, return -1.
    Examples:
        search([4, 1, 2, 2, 3, 1]) == 2
        search([1, 2, 2, 3, 3, 3, 4, 4, 4]) == 3
        search([5, 5, 4, 4, 4]) == -1
    
*/
long search(long[] lst) 
{
    long max = -1;
    long count = 0;
    for (int i = 0; i < lst.length; i++)
    {
        if (lst[i] > 0)
        {
            if (lst[i] == count)
            {
                max = lst[i];
            }
            else if (lst[i] > count && lst[i] > max)
            {
                max = lst[i];
            }
        }
    }
    return max;
}

unittest
{
    alias candidate = search;

    assert(candidate([5L, 5L, 5L, 5L, 1L]) == 1L);
    assert(candidate([4L, 1L, 4L, 1L, 4L, 4L]) == 4L);
    assert(candidate([3L, 3L]) == -1L);
    assert(candidate([8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L]) == 8L);
    assert(candidate([2L, 3L, 3L, 2L, 2L]) == 2L);
    assert(candidate([2L, 7L, 8L, 8L, 4L, 8L, 7L, 3L, 9L, 6L, 5L, 10L, 4L, 3L, 6L, 7L, 1L, 7L, 4L, 10L, 8L, 1L]) == 1L);
    assert(candidate([3L, 2L, 8L, 2L]) == 2L);
    assert(candidate([6L, 7L, 1L, 8L, 8L, 10L, 5L, 8L, 5L, 3L, 10L]) == 1L);
    assert(candidate([8L, 8L, 3L, 6L, 5L, 6L, 4L]) == -1L);
    assert(candidate([6L, 9L, 6L, 7L, 1L, 4L, 7L, 1L, 8L, 8L, 9L, 8L, 10L, 10L, 8L, 4L, 10L, 4L, 10L, 1L, 2L, 9L, 5L, 7L, 9L]) == 1L);
    assert(candidate([1L, 9L, 10L, 1L, 3L]) == 1L);
    assert(candidate([6L, 9L, 7L, 5L, 8L, 7L, 5L, 3L, 7L, 5L, 10L, 10L, 3L, 6L, 10L, 2L, 8L, 6L, 5L, 4L, 9L, 5L, 3L, 10L]) == 5L);
    assert(candidate([1L]) == 1L);
    assert(candidate([8L, 8L, 10L, 6L, 4L, 3L, 5L, 8L, 2L, 4L, 2L, 8L, 4L, 6L, 10L, 4L, 2L, 1L, 10L, 2L, 1L, 1L, 5L]) == 4L);
    assert(candidate([2L, 10L, 4L, 8L, 2L, 10L, 5L, 1L, 2L, 9L, 5L, 5L, 6L, 3L, 8L, 6L, 4L, 10L]) == 2L);
    assert(candidate([1L, 6L, 10L, 1L, 6L, 9L, 10L, 8L, 6L, 8L, 7L, 3L]) == 1L);
    assert(candidate([9L, 2L, 4L, 1L, 5L, 1L, 5L, 2L, 5L, 7L, 7L, 7L, 3L, 10L, 1L, 5L, 4L, 2L, 8L, 4L, 1L, 9L, 10L, 7L, 10L, 2L, 8L, 10L, 9L, 4L]) == 4L);
    assert(candidate([2L, 6L, 4L, 2L, 8L, 7L, 5L, 6L, 4L, 10L, 4L, 6L, 3L, 7L, 8L, 8L, 3L, 1L, 4L, 2L, 2L, 10L, 7L]) == 4L);
    assert(candidate([9L, 8L, 6L, 10L, 2L, 6L, 10L, 2L, 7L, 8L, 10L, 3L, 8L, 2L, 6L, 2L, 3L, 1L]) == 2L);
    assert(candidate([5L, 5L, 3L, 9L, 5L, 6L, 3L, 2L, 8L, 5L, 6L, 10L, 10L, 6L, 8L, 4L, 10L, 7L, 7L, 10L, 8L]) == -1L);
    assert(candidate([10L]) == -1L);
    assert(candidate([9L, 7L, 7L, 2L, 4L, 7L, 2L, 10L, 9L, 7L, 5L, 7L, 2L]) == 2L);
    assert(candidate([5L, 4L, 10L, 2L, 1L, 1L, 10L, 3L, 6L, 1L, 8L]) == 1L);
    assert(candidate([7L, 9L, 9L, 9L, 3L, 4L, 1L, 5L, 9L, 1L, 2L, 1L, 1L, 10L, 7L, 5L, 6L, 7L, 6L, 7L, 7L, 6L]) == 1L);
    assert(candidate([3L, 10L, 10L, 9L, 2L]) == -1L);
}
void main(){}