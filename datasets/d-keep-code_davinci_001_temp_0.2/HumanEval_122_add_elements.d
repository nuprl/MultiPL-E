import std.typecons;
import std.math;
/*

    Given a non-empty array of integers arr and an integer k, return
    the sum of the elements with at most two digits from the first k elements of arr.

    Example:

        Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
        Output: 24 # sum of 21 + 3

    Constraints:
        1. 1 <= len(arr) <= 100
        2. 1 <= k <= len(arr)
    
*/
long add_elements(long[] arr, long k) 
{
    long sum = 0;
    for (long i = 0; i < k; i++) {
        sum += arr[i];
    }
    return sum;
}

unittest
{
    alias candidate = add_elements;

    assert(candidate([1L, -2L, -3L, 41L, 57L, 76L, 87L, 88L, 99L], 3L) == -4L);
    assert(candidate([111L, 121L, 3L, 4000L, 5L, 6L], 2L) == 0L);
    assert(candidate([11L, 21L, 3L, 90L, 5L, 6L, 7L, 8L, 9L], 4L) == 125L);
    assert(candidate([111L, 21L, 3L, 4000L, 5L, 6L, 7L, 8L, 9L], 4L) == 24L);
    assert(candidate([1L], 1L) == 1L);
}
void main(){}