import std.typecons;
import std.math;
/*
Write a function that takes an array of numbers as input and returns 
    the number of elements in the array that are greater than 10 and both 
    first and last digits of a number are odd (1, 3, 5, 7, 9).
    For example:
    specialFilter([15, -73, 14, -15]) => 1 
    specialFilter([33, -2, -3, 45, 21, 109]) => 2
    
*/
long specialFilter(long[] nums) 
{
    long count = 0;
    for (int i = 0; i < nums.length; i++)
    {
        if (nums[i] > 10 && (nums[i] % 10) % 2 != 0 && (nums[i] / 10) % 2 != 0)
        {
            count++;
        }
    }
    return count;
}

unittest
{
    alias candidate = specialFilter;

    assert(candidate([5L, -2L, 1L, -5L]) == 0L);
    assert(candidate([15L, -73L, 14L, -15L]) == 1L);
    assert(candidate([33L, -2L, -3L, 45L, 21L, 109L]) == 2L);
    assert(candidate([43L, -12L, 93L, 125L, 121L, 109L]) == 4L);
    assert(candidate([71L, -2L, -33L, 75L, 21L, 19L]) == 3L);
    assert(candidate([1L]) == 0L);
    assert(candidate([]) == 0L);
}
void main(){}