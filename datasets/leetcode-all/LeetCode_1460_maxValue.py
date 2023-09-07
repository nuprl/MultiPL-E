def maxValue(n: int, index: int, maxSum: int) -> int:
    """
    You are given three positive integers: n, index, and maxSum. You want to construct an array nums (0-indexed) that satisfies the following conditions:

    nums.length == n
    nums[i] is a positive integer where 0 <= i < n.
    abs(nums[i] - nums[i+1]) <= 1 where 0 <= i < n-1.
    The sum of all the elements of nums does not exceed maxSum.
    nums[index] is maximized.

    Return nums[index] of the constructed array.
    Note that abs(x) equals x if x >= 0, and -x otherwise.
 
    Example 1:

    Input: n = 4, index = 2,  maxSum = 6
    Output: 2
    Explanation: nums = [1,2,2,1] is one array that satisfies all the conditions.
    There are no arrays that satisfy all the conditions and have nums[2] == 3, so 2 is the maximum nums[2].

    Example 2:

    Input: n = 6, index = 1,  maxSum = 10
    Output: 3

 
    Constraints:

    1 <= n <= maxSum <= 109
    0 <= index < n

    """
    ### Canonical solution below ###
    maxSum -= n
    left, right, ans = 0, maxSum, 0
    while left <= right:
        mid = left + (right - left) // 2
        sum = min(mid, index) * (min(mid, index) + 1) // 2 + min(mid, n - index - 1) * (min(mid, n - index) + 1) // 2
        if mid > index:
            sum += (mid - index - 1) * (mid - index) // 2
        if mid > n - index:
            sum += (mid - n + index) * (mid - n + index + 1) // 2
        if sum <= maxSum:
            ans = mid
            left = mid + 1
        else:
            right = mid - 1
    return ans + 1




### Unit tests below ###
def check(candidate):
	assert candidate(3, 2, 5) == 2
	assert candidate(2, 0, 8) == 4
	assert candidate(4, 0, 9) == 3
	assert candidate(5, 4, 10) == 3
	assert candidate(3, 1, 5) == 3
	assert candidate(3, 1, 10) == 4
	assert candidate(4, 0, 10) == 3
	assert candidate(5, 0, 10) == 3
	assert candidate(5, 3, 10) == 3
	assert candidate(4, 0, 7) == 2
	assert candidate(5, 2, 28) == 7
	assert candidate(3, 2, 9) == 4
	assert candidate(2, 0, 6) == 3
	assert candidate(5, 0, 9) == 3
	assert candidate(4, 3, 9) == 3
	assert candidate(3, 0, 7) == 3
	assert candidate(3, 2, 8) == 3
	assert candidate(7, 6, 14) == 3
	assert candidate(6, 3, 10) == 2
	assert candidate(6, 0, 10) == 3
	assert candidate(3, 1, 6) == 3
	assert candidate(4, 0, 4) == 1
	assert candidate(6, 0, 12) == 3
	assert candidate(4, 0, 5) == 2
	assert candidate(4, 3, 8) == 3
	assert candidate(3, 2, 6) == 2
	assert candidate(4, 1, 8) == 3
	assert candidate(1, 0, 1) == 1
	assert candidate(4, 2, 6) == 2
	assert candidate(2, 1, 3) == 2
	assert candidate(5, 4, 18) == 4
	assert candidate(6, 0, 7) == 2
	assert candidate(7, 3, 15) == 3
	assert candidate(4, 0, 11) == 3
	assert candidate(4, 3, 7) == 2
	assert candidate(5, 0, 8) == 2
	assert candidate(3, 0, 5) == 2
	assert candidate(5, 1, 8) == 2
	assert candidate(5, 4, 13) == 3
	assert candidate(6, 4, 13) == 3
	assert candidate(3, 0, 2) == 1
	assert candidate(5, 4, 12) == 3
def test_check():
	check(maxValue)
# Metadata Difficulty: Medium
# Metadata Topics: binary-search,greedy
# Metadata Coverage: 100
