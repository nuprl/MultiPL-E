import std.typecons;
import std.math;
/*

    Given an array arr of integers, find the minimum number of elements that
    need to be changed to make the array palindromic. A palindromic array is an array that
    is read the same backwards and forwards. In one change, you can change one element to any other element.

    For example:
    smallest_change([1,2,3,5,4,7,9,6]) == 4
    smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
    smallest_change([1, 2, 3, 2, 1]) == 0
    
*/
int smallest_change(int[] arr) 
{
    int n = arr.length;
    int[] dp = new int[n];
    for (int i = 0; i < n; i++)
    {
        dp[i] = i;
    }
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < i; j++)
        {
            if (arr[i] > arr[j])
            {
                dp[i] = std.math.min(dp[i], dp[j] + 1);
            }
        }
    }
    int ans = dp[n - 1];
    for (int i = n - 2; i >= 0; i--)
    {
        for (int j = n - 1; j > i; j--)
        {
            if (arr[i] > arr[j])
            {
                ans = std.math.min(ans, dp[j] + 1);
            }
        }
    }
    return ans;
}

unittest
{
    alias candidate = smallest_change;

    assert(candidate([1, 2, 3, 5, 4, 7, 9, 6]) == 4);
    assert(candidate([1, 2, 3, 4, 3, 2, 2]) == 1);
    assert(candidate([1, 4, 2]) == 1);
    assert(candidate([1, 4, 4, 2]) == 1);
    assert(candidate([1, 2, 3, 2, 1]) == 0);
    assert(candidate([3, 1, 1, 3]) == 0);
    assert(candidate([1]) == 0);
    assert(candidate([0, 1]) == 1);
}
void main(){}