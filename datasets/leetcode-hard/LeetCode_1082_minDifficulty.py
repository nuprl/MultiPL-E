from typing import List


def minDifficulty(jobDifficulty: List[int], d: int) -> int:
    """
    You want to schedule a list of jobs in d days. Jobs are dependent (i.e To work on the ith job, you have to finish all the jobs j where 0 <= j < i).
    You have to finish at least one task every day. The difficulty of a job schedule is the sum of difficulties of each day of the d days. The difficulty of a day is the maximum difficulty of a job done on that day.
    You are given an integer array jobDifficulty and an integer d. The difficulty of the ith job is jobDifficulty[i].
    Return the minimum difficulty of a job schedule. If you cannot find a schedule for the jobs return -1.
 
    Example 1:


    Input: jobDifficulty = [6,5,4,3,2,1], d = 2
    Output: 7
    Explanation: First day you can finish the first 5 jobs, total difficulty = 6.
    Second day you can finish the last job, total difficulty = 1.
    The difficulty of the schedule = 6 + 1 = 7 

    Example 2:

    Input: jobDifficulty = [9,9,9], d = 4
    Output: -1
    Explanation: If you finish a job per day you will still have a free day. you cannot find a schedule for the given jobs.

    Example 3:

    Input: jobDifficulty = [1,1,1], d = 3
    Output: 3
    Explanation: The schedule is one job per day. total difficulty will be 3.

 
    Constraints:

    1 <= jobDifficulty.length <= 300
    0 <= jobDifficulty[i] <= 1000
    1 <= d <= 10

    """
    ### Canonical solution below ###
    n = len(jobDifficulty)
    if n < d:
        return -1
    dp = [[float("inf")] * n for _ in range(d)]

    dp[0][0] = jobDifficulty[0]
    for i in range(1, n):
        dp[0][i] = max(dp[0][i-1], jobDifficulty[i])

    for i in range(1, d):
        for j in range(i, n):
            maxD = jobDifficulty[j]
            for k in range(j, i - 1, -1):
                maxD = max(maxD, jobDifficulty[k])
                dp[i][j] = min(dp[i][j], dp[i-1][k-1] + maxD)

    return dp[d-1][n-1]




### Unit tests below ###
def check(candidate):
	assert candidate([6,5,4,3,2,1], 2) == 7
	assert candidate([1,1,1,1,1,1,1,1,1], 1) == 1
	assert candidate([9,9,9], 4) == -1
	assert candidate([1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9], 1) == 9
	assert candidate([1,1,1,1,1,1,1,1,1], 5) == 5
	assert candidate([1,2,3,4,5,6,7,8,9], 1) == 9
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 20) == 20
	assert candidate([1,1,1,1,1,1,1,1,1], 9) == 9
	assert candidate([9], 2) == -1
	assert candidate([1,1,1], 3) == 3
def test_check():
	check(minDifficulty)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
