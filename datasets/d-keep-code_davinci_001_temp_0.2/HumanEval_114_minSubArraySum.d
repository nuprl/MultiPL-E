import std.math;
import std.typecons;
/*

    Given an array of integers nums, find the minimum sum of any non-empty sub-array
    of nums.
    Example
    minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
    minSubArraySum([-1, -2, -3]) == -6
    
*/
long minSubArraySum(long[] nums) 
{
    long min = nums[0];
    long sum = 0;
    for(int i = 0; i < nums.length; i++)
    {
        sum += nums[i];
        if(sum < min)
        {
            min = sum;
        }
        if(sum > 0)
        {
            sum = 0;
        }
    }
    return min;
}

unittest
{
    alias candidate = minSubArraySum;

    assert(candidate([2L, 3L, 4L, 1L, 2L, 4L]) == 1L);
    assert(candidate([-1L, -2L, -3L]) == -6L);
    assert(candidate([-1L, -2L, -3L, 2L, -10L]) == -14L);
    assert(candidate([-9999999999999999L]) == -9999999999999999L);
    assert(candidate([0L, 10L, 20L, 1000000L]) == 0L);
    assert(candidate([-1L, -2L, -3L, 10L, -5L]) == -6L);
    assert(candidate([100L, -1L, -2L, -3L, 10L, -5L]) == -6L);
    assert(candidate([10L, 11L, 13L, 8L, 3L, 4L]) == 3L);
    assert(candidate([100L, -33L, 32L, -1L, 0L, -2L]) == -33L);
    assert(candidate([-10L]) == -10L);
    assert(candidate([7L]) == 7L);
    assert(candidate([1L, -1L]) == -1L);
}
void main(){}