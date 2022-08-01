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

    assert(candidate([-3L, -4L, 5L], 3L) == [-4L, -3L, 5L]);
    assert(candidate([4L, -4L, 4L], 2L) == [4L, 4L]);
    assert(candidate([-3L, 2L, 1L, 2L, -1L, -2L, 1L], 1L) == [2L]);
    assert(candidate([123L, -123L, 20L, 0L, 1L, 2L, -3L], 3L) == [2L, 20L, 123L]);
    assert(candidate([-123L, 20L, 0L, 1L, 2L, -3L], 4L) == [0L, 1L, 2L, 20L]);
    assert(candidate([5L, 15L, 0L, 3L, -13L, -8L, 0L], 7L) == [-13L, -8L, 0L, 0L, 3L, 5L, 15L]);
    assert(candidate([-1L, 0L, 2L, 5L, 3L, -10L], 2L) == [3L, 5L]);
    assert(candidate([1L, 0L, 5L, -7L], 1L) == [5L]);
    assert(candidate([4L, -4L], 2L) == [-4L, 4L]);
    assert(candidate([-10L, 10L], 2L) == [-10L, 10L]);
    assert(candidate([1L, 2L, 3L, -23L, 243L, -400L, 0L], 0L) == []);
}
void main(){}