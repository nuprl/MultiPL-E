import std.typecons;
import std.math;
/*

    In this Kata, you have to sort an array of non-negative integers according to
    number of ones in their binary representation in ascending order.
    For similar number of ones, sort based on decimal value.

    It must be implemented like this:
    >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
    >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
    >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
    
*/
long[] sort_array(long[] arr) 
{
    var sorted = arr.OrderBy(x => x.ToString().Count(c => c == '1')).ThenBy(x => x);
    return sorted.ToArray();
}


unittest
{
    alias candidate = sort_array;

    assert(candidate([1L, 5L, 2L, 3L, 4L]) == [1L, 2L, 4L, 3L, 5L]);
    assert(candidate([-2L, -3L, -4L, -5L, -6L]) == [-4L, -2L, -6L, -5L, -3L]);
    assert(candidate([1L, 0L, 2L, 3L, 4L]) == [0L, 1L, 2L, 4L, 3L]);
    assert(candidate([]) == []);
    assert(candidate([2L, 5L, 77L, 4L, 5L, 3L, 5L, 7L, 2L, 3L, 4L]) == [2L, 2L, 4L, 4L, 3L, 3L, 5L, 5L, 5L, 7L, 77L]);
    assert(candidate([3L, 6L, 44L, 12L, 32L, 5L]) == [32L, 3L, 5L, 6L, 12L, 44L]);
    assert(candidate([2L, 4L, 8L, 16L, 32L]) == [2L, 4L, 8L, 16L, 32L]);
    assert(candidate([2L, 4L, 8L, 16L, 32L]) == [2L, 4L, 8L, 16L, 32L]);
}
void main(){}