import std.math;
import std.typecons;
/*

    Given an array arr of integers, find the minimum number of elements that
    need to be changed to make the array palindromic. A palindromic array is an array that
    is read the same backwards and forwards. In one change, you can change one element to any other element.

    For example:
    smallest_change([1,2,3,5,4,7,9,6]) == 4
    smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
    smallest_change([1, 2, 3, 2, 1]) == 0
    
*/
long smallest_change(long[] arr) 
{
    // Write your code here
    return 0;
}

unittest
{
    alias candidate = smallest_change;

    assert(candidate([1L, 2L, 3L, 5L, 4L, 7L, 9L, 6L]) == 4L);
    assert(candidate([1L, 2L, 3L, 4L, 3L, 2L, 2L]) == 1L);
    assert(candidate([1L, 4L, 2L]) == 1L);
    assert(candidate([1L, 4L, 4L, 2L]) == 1L);
    assert(candidate([1L, 2L, 3L, 2L, 1L]) == 0L);
    assert(candidate([3L, 1L, 1L, 3L]) == 0L);
    assert(candidate([1L]) == 0L);
    assert(candidate([0L, 1L]) == 1L);
}
void main(){}