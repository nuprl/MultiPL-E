import std.math;
import std.typecons;
/*

    Given an array of non-negative integers, return a copy of the given array after sorting,
    you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
    or sort it in descending order if the sum( first index value, last index value) is even.

    Note:
    * don't change the given array.

    Examples:
    * sort_array([]) => []
    * sort_array([5]) => [5]
    * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
    * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
    
*/
long[] sort_array(long[] array) 
{
    long sum = 0;
    for (int i = 0; i < array.length; i++)
    {
        sum += array[i];
    }
    if (sum % 2 == 0)
    {
        return array.sort((a, b) => b - a);
    }
    else
    {
        return array.sort((a, b) => a - b);
    }
}

unittest
{
    alias candidate = sort_array;

    assert(candidate([]) == []);
    assert(candidate([5L]) == [5L]);
    assert(candidate([2L, 4L, 3L, 0L, 1L, 5L]) == [0L, 1L, 2L, 3L, 4L, 5L]);
    assert(candidate([2L, 4L, 3L, 0L, 1L, 5L, 6L]) == [6L, 5L, 4L, 3L, 2L, 1L, 0L]);
    assert(candidate([2L, 1L]) == [1L, 2L]);
    assert(candidate([15L, 42L, 87L, 32L, 11L, 0L]) == [0L, 11L, 15L, 32L, 42L, 87L]);
    assert(candidate([21L, 14L, 23L, 11L]) == [23L, 21L, 14L, 11L]);
}
void main(){}