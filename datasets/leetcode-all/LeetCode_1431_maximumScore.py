from typing import List


def maximumScore(nums: List[int], multipliers: List[int]) -> int:
    """
    You are given two 0-indexed integer arrays nums and multipliers of size n and m respectively, where n >= m.
    You begin with a score of 0. You want to perform exactly m operations. On the ith operation (0-indexed) you will:

    Choose one integer x from either the start or the end of the array nums.
    Add multipliers[i] * x to your score.

    Note that multipliers[0] corresponds to the first operation, multipliers[1] to the second operation, and so on.


    Remove x from nums.

    Return the maximum score after performing m operations.
 
    Example 1:

    Input: nums = [1,2,3], multipliers = [3,2,1]
    Output: 14
    Explanation: An optimal solution is as follows:
    - Choose from the end, [1,2,3], adding 3 * 3 = 9 to the score.
    - Choose from the end, [1,2], adding 2 * 2 = 4 to the score.
    - Choose from the end, [1], adding 1 * 1 = 1 to the score.
    The total score is 9 + 4 + 1 = 14.
    Example 2:

    Input: nums = [-5,-3,-3,-2,7,1], multipliers = [-10,-5,3,4,6]
    Output: 102
    Explanation: An optimal solution is as follows:
    - Choose from the start, [-5,-3,-3,-2,7,1], adding -5 * -10 = 50 to the score.
    - Choose from the start, [-3,-3,-2,7,1], adding -3 * -5 = 15 to the score.
    - Choose from the start, [-3,-2,7,1], adding -3 * 3 = -9 to the score.
    - Choose from the end, [-2,7,1], adding 1 * 4 = 4 to the score.
    - Choose from the end, [-2,7], adding 7 * 6 = 42 to the score. 
    The total score is 50 + 15 - 9 + 4 + 42 = 102.

 
    Constraints:

    n == nums.length
    m == multipliers.length
    1 <= m <= 300
    m <= n <= 105 
    -1000 <= nums[i], multipliers[i] <= 1000

    """
    ### Canonical solution below ###
    n, m = len(nums), len(multipliers)
    dp = [[0] * (m + 1) for _ in range(m + 1)]
    maxScore = float('-inf')

    for i in range(m + 1):
        for j in range(m - i + 1):
            if i == 0 and j == 0:
                continue
            score = 0
            if i == 0:
                score = dp[i][j - 1] + nums[n - j] * multipliers[i + j - 1]
            elif j == 0:
                score = dp[i - 1][j] + nums[i - 1] * multipliers[i + j - 1]
            else:
                score = max(dp[i - 1][j] + nums[i - 1] * multipliers[i + j - 1],
                            dp[i][j - 1] + nums[n - j] * multipliers[i + j - 1])
            dp[i][j] = score
            if i + j == m:
                maxScore = max(maxScore, score)

    return maxScore




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3], [3, 2, 1]) == 14
	assert candidate([-1, -2, -3, -4, -5], [1, 1, 1, 1, 1]) == -15
	assert candidate([1, 2, 3, 4, 5], [-1, -1, -1, -1, -1]) == -15
	assert candidate([-1, -2, -3, -4, -5, -6, -7, -8, -9, -10], [-1, -2, -3, -4, -5, -6, -7, -8, -9, -10]) == 385
	assert candidate([1], [1]) == 1
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 385
	assert candidate([1, 2, 3, 4, 5], [1, 1, 1, 1, 1]) == 15
	assert candidate([-5, -3, -3, -2, 7, 1], [-10, -5, 3, 4, 6]) == 102
	assert candidate([1, 2], [3, 4]) == 11
def test_check():
	check(maximumScore)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
