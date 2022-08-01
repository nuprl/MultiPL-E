import std.typecons;
import std.math;
/*

    Write a function count_nums which takes an array of integers and returns
    the number of elements which has a sum of digits > 0.
    If a number is negative, then its first signed digit will be negative:
    e.g. -123 has signed digits -1, 2, and 3.
    >>> count_nums([]) == 0
    >>> count_nums([-1, 11, -11]) == 1
    >>> count_nums([1, 1, 2]) == 3
    
*/
long count_nums(long[] arr) 
{
    long count = 0;
    for (long i = 0; i < arr.length; i++)
    {
        if (sum_digits(arr[i]) > 0)
        {
            count++;
        }
    }
    return count;
}

unittest
{
    alias candidate = count_nums;

    assert(candidate([]) == 0L);
    assert(candidate([-1L, -2L, 0L]) == 0L);
    assert(candidate([1L, 1L, 2L, -2L, 3L, 4L, 5L]) == 6L);
    assert(candidate([1L, 6L, 9L, -6L, 0L, 1L, 5L]) == 5L);
    assert(candidate([1L, 100L, 98L, -7L, 1L, -1L]) == 4L);
    assert(candidate([12L, 23L, 34L, -45L, -56L, 0L]) == 5L);
    assert(candidate([0L, 1L]) == 1L);
    assert(candidate([1L]) == 1L);
}
void main(){}