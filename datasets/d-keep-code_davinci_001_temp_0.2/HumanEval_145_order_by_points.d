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

    assert(candidate([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]);
    assert(candidate([1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457]);
    assert(candidate([]) == []);
    assert(candidate([1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54]);
    assert(candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9]);
    assert(candidate([0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6]);
}
void main(){}