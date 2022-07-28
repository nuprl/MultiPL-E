import std.typecons;
import std.math;
/*

    Given an array of integers nums, find the minimum sum of any non-empty sub-array
    of nums.
    Example
    minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
    minSubArraySum([-1, -2, -3]) == -6
    
*/
int minSubArraySum(int[] nums) 
{
    int min = nums[0];
    int sum = 0;
    for(int i = 0; i < nums.Length; i++)
    {
        sum += nums[i];
        if(sum < min)
        {
            min = sum;
        }
    }
    return min;
}

unittest
{
    alias candidate = minSubArraySum;

    assert(candidate([2, 3, 4, 1, 2, 4]) == 1);
    assert(candidate([-1, -2, -3]) == -6);
    assert(candidate([-1, -2, -3, 2, -10]) == -14);
    assert(candidate([-9999999999999999]) == -9999999999999999);
    assert(candidate([0, 10, 20, 1000000]) == 0);
    assert(candidate([-1, -2, -3, 10, -5]) == -6);
    assert(candidate([100, -1, -2, -3, 10, -5]) == -6);
    assert(candidate([10, 11, 13, 8, 3, 4]) == 3);
    assert(candidate([100, -33, 32, -1, 0, -2]) == -33);
    assert(candidate([-10]) == -10);
    assert(candidate([7]) == 7);
    assert(candidate([1, -1]) == -1);
}
void main(){}