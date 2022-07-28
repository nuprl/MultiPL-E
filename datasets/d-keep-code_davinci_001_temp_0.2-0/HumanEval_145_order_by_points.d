import std.typecons;
import std.math;
/*

    Write a function which sorts the given list of integers
    in ascending order according to the sum of their digits.
    Note: if there are several items with similar sum of their digits,
    order them based on their index in original list.

    For example:
    >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
    >>> order_by_points([]) == []
    
*/
int[] order_by_points(int[] nums) 
{
    int[] result = new int[nums.Length];
    int[] sum = new int[nums.Length];
    for (int i = 0; i < nums.Length; i++)
    {
        sum[i] = nums[i];
        int temp = nums[i];
        while (temp > 0)
        {
            sum[i] += temp % 10;
            temp /= 10;
        }
    }
    for (int i = 0; i < nums.Length; i++)
    {
        int min = sum[i];
        int index = i;
        for (int j = i + 1; j < nums.Length; j++)
        {
            if (sum[j] < min)
            {
                min = sum[j];
                index = j;
            }
        }
        result[i] = nums[index];
        sum[index] = int.MaxValue;
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