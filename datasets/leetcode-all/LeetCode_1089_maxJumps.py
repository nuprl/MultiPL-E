from typing import List


def maxJumps(arr: List[int], d: int) -> int:
    """
    Given an array of integers arr and an integer d. In one step you can jump from index i to index:

    i + x where: i + x < arr.length and  0 < x <= d.
    i - x where: i - x >= 0 and  0 < x <= d.

    In addition, you can only jump from index i to index j if arr[i] > arr[j] and arr[i] > arr[k] for all indices k between i and j (More formally min(i, j) < k < max(i, j)).
    You can choose any index of the array and start jumping. Return the maximum number of indices you can visit.
    Notice that you can not jump outside of the array at any time.
 
    Example 1:


    Input: arr = [6,4,14,6,8,13,9,7,10,6,12], d = 2
    Output: 4
    Explanation: You can start at index 10. You can jump 10 --> 8 --> 6 --> 7 as shown.
    Note that if you start at index 6 you can only jump to index 7. You cannot jump to index 5 because 13 > 9. You cannot jump to index 4 because index 5 is between index 4 and 6 and 13 > 9.
    Similarly You cannot jump from index 3 to index 2 or index 1.

    Example 2:

    Input: arr = [3,3,3,3,3], d = 3
    Output: 1
    Explanation: You can start at any index. You always cannot jump to any index.

    Example 3:

    Input: arr = [7,6,5,4,3,2,1], d = 1
    Output: 7
    Explanation: Start at index 0. You can visit all the indicies. 

 
    Constraints:

    1 <= arr.length <= 1000
    1 <= arr[i] <= 105
    1 <= d <= arr.length

    """
    ### Canonical solution below ###
    n = len(arr)
    dp = [1] * n

    def helper(idx):
        if dp[idx] > 1:
            return dp[idx]
        maximum = 1
        for i in range(1, d + 1):
            if idx + i < n and arr[idx] <= arr[idx + i]:
                break
            if idx + i < n:
                maximum = max(maximum, 1 + helper(idx + i))

            if idx - i >= 0 and arr[idx] <= arr[idx - i]:
                break
            if idx - i >= 0:
                maximum = max(maximum, 1 + helper(idx - i))

        dp[idx] = maximum
        return maximum

    for i in range(n):
        helper(i)

    return max(dp)




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 1, 1, 1], 1) == 1
	assert candidate([6, 4, 14, 6, 8, 3, 5, 2, 10, 3], 2) == 4
	assert candidate([1, 1, 1, 1, 1, 1, 1], 3) == 1
	assert candidate([7, 1, 1, 1, 1, 1, 7], 2) == 2
	assert candidate([1, 1, 1, 1, 1, 1, 1], 4) == 1
	assert candidate([6, 4, 14, 6, 8, 13, 9, 7, 10, 6, 12], 3) == 4
	assert candidate([6, 4, 14, 6, 8, 13, 9, 7, 10, 6, 12], 4) == 4
	assert candidate([6, 4, 14, 6, 8, 13, 9, 7, 10, 6, 12], 5) == 4
	assert candidate([1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 1], 0) == 1
	assert candidate([1, 1, 1, 1, 1, 1, 1], 2) == 1
	assert candidate([7, 6, 5, 4, 3, 2, 1], 1) == 7
	assert candidate([3, 3, 3, 3, 3], 3) == 1
	assert candidate([1, 2, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 1], 6) == 3
def test_check():
	check(maxJumps)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming,sorting
# Metadata Coverage: 100
