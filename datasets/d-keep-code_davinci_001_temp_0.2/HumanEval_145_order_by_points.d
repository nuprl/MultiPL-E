import std.math;
import std.typecons;
/*

    Write a function which sorts the given list of integers
    in ascending order according to the sum of their digits.
    Note: if there are several items with similar sum of their digits,
    order them based on their index in original list.

    For example:
    >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
    >>> order_by_points([]) == []
    
*/
long[] order_by_points(long[] nums) 
{
    // your code here
    long[] result = new long[nums.length];
    long[] sum = new long[nums.length];
    long[] index = new long[nums.length];
    for(int i = 0; i < nums.length; i++)
    {
        long sum_of_digits = 0;
        long index_of_digits = 0;
        long temp = nums[i];
        while(temp > 0)
        {
            sum_of_digits += temp % 10;
            index_of_digits += temp % 10;
            temp /= 10;
        }
        sum[i] = sum_of_digits;
        index[i] = index_of_digits;
    }
    for(int i = 0; i < nums.length; i++)
    {
        for(int j = 0; j < nums.length; j++)
        {
            if(sum[i] == sum[j] && index[i] == index[j])
            {
                result[i] = nums[j];
            }
        }
    }
    return result;
}

unittest
{
    alias candidate = order_by_points;

    assert(candidate([1L, 11L, -1L, -11L, -12L]) == [-1L, -11L, 1L, -12L, 11L]);
    assert(candidate([1234L, 423L, 463L, 145L, 2L, 423L, 423L, 53L, 6L, 37L, 3457L, 3L, 56L, 0L, 46L]) == [0L, 2L, 3L, 6L, 53L, 423L, 423L, 423L, 1234L, 145L, 37L, 46L, 56L, 463L, 3457L]);
    assert(candidate([]) == []);
    assert(candidate([1L, -11L, -32L, 43L, 54L, -98L, 2L, -3L]) == [-3L, -32L, -98L, -11L, 1L, 2L, 43L, 54L]);
    assert(candidate([1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 11L]) == [1L, 10L, 2L, 11L, 3L, 4L, 5L, 6L, 7L, 8L, 9L]);
    assert(candidate([0L, 6L, 6L, -76L, -21L, 23L, 4L]) == [-76L, -21L, 0L, 4L, 23L, 6L, 6L]);
}
void main(){}