import std.math;
import std.typecons;
/*
Create a function which returns the largest index of an element which
    is not greater than or equal to the element immediately preceding it. If
    no such element exists then return -1. The given array will not contain
    duplicate values.

    Examples:
    can_arrange([1,2,4,3,5]) = 3
    can_arrange([1,2,3]) = -1
    
*/
long can_arrange(long[] arr) 
{
    long i, j, k;
    long max = -1;
    for (i = 0; i < arr.length; i++)
    {
        for (j = i + 1; j < arr.length; j++)
        {
            if (arr[i] >= arr[j])
            {
                max = j;
            }
        }
    }
    return max;
}

unittest
{
    alias candidate = can_arrange;

    assert(candidate([1L, 2L, 4L, 3L, 5L]) == 3L);
    assert(candidate([1L, 2L, 4L, 5L]) == -1L);
    assert(candidate([1L, 4L, 2L, 5L, 6L, 7L, 8L, 9L, 10L]) == 2L);
    assert(candidate([4L, 8L, 5L, 7L, 3L]) == 4L);
    assert(candidate([]) == -1L);
}
void main(){}