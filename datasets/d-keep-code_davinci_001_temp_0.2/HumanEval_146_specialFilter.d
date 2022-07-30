import std.math;
import std.typecons;
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

    assert(candidate([5, -2, 1, -5]) == 0);
    assert(candidate([15, -73, 14, -15]) == 1);
    assert(candidate([33, -2, -3, 45, 21, 109]) == 2);
    assert(candidate([43, -12, 93, 125, 121, 109]) == 4);
    assert(candidate([71, -2, -33, 75, 21, 19]) == 3);
    assert(candidate([1]) == 0);
    assert(candidate([]) == 0);
}
void main(){}