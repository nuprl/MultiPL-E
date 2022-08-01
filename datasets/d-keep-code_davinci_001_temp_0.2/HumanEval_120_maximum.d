import std.typecons;
import std.math;
/*

    Given an array arr of integers and a positive integer k, return a sorted list 
    of length k with the maximum k numbers in arr.

    Example 1:

        Input: arr = [-3, -4, 5], k = 3
        Output: [-4, -3, 5]

    Example 2:

        Input: arr = [4, -4, 4], k = 2
        Output: [4, 4]

    Example 3:

        Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
        Output: [2]

    Note:
        1. The length of the array will be in the range of [1, 1000].
        2. The elements in the array will be in the range of [-1000, 1000].
        3. 0 <= k <= len(arr)
    
*/
long[] maximum(long[] arr, long k) 
{
    long[] result = new long[k];
    long[] temp = new long[k];
    long[] copy = arr.clone();
    for (int i = 0; i < k; i++) 
    {
        long max = Long.MIN_VALUE;
        for (int j = 0; j < arr.length; j++) 
        {
            if (arr[j] > max) 
            {
                max = arr[j];
            }
        }
        result[i] = max;
        arr[arr.length - 1] = Long.MIN_VALUE;
    }
    return result;
}

unittest
{
    alias candidate = maximum;

    assert(candidate([-3, -4, 5], 3) == [-4, -3, 5]);
    assert(candidate([4, -4, 4], 2) == [4, 4]);
    assert(candidate([-3, 2, 1, 2, -1, -2, 1], 1) == [2]);
    assert(candidate([123, -123, 20, 0, 1, 2, -3], 3) == [2, 20, 123]);
    assert(candidate([-123, 20, 0, 1, 2, -3], 4) == [0, 1, 2, 20]);
    assert(candidate([5, 15, 0, 3, -13, -8, 0], 7) == [-13, -8, 0, 0, 3, 5, 15]);
    assert(candidate([-1, 0, 2, 5, 3, -10], 2) == [3, 5]);
    assert(candidate([1, 0, 5, -7], 1) == [5]);
    assert(candidate([4, -4], 2) == [-4, 4]);
    assert(candidate([-10, 10], 2) == [-10, 10]);
    assert(candidate([1, 2, 3, -23, 243, -400, 0], 0) == []);
}
void main(){}