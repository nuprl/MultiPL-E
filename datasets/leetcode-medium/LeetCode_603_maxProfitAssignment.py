from typing import List


def maxProfitAssignment(difficulty: List[int], profit: List[int], worker: List[int]) -> int:
    """
    You have n jobs and m workers. You are given three arrays: difficulty, profit, and worker where:

    difficulty[i] and profit[i] are the difficulty and the profit of the ith job, and
    worker[j] is the ability of jth worker (i.e., the jth worker can only complete a job with difficulty at most worker[j]).

    Every worker can be assigned at most one job, but one job can be completed multiple times.

    For example, if three workers attempt the same job that pays $1, then the total profit will be $3. If a worker cannot complete any job, their profit is $0.

    Return the maximum profit we can achieve after assigning the workers to the jobs.
 
    Example 1:

    Input: difficulty = [2,4,6,8,10], profit = [10,20,30,40,50], worker = [4,5,6,7]
    Output: 100
    Explanation: Workers are assigned jobs of difficulty [4,4,6,6] and they get a profit of [20,20,30,30] separately.

    Example 2:

    Input: difficulty = [85,47,57], profit = [24,66,99], worker = [40,25,25]
    Output: 0

 
    Constraints:

    n == difficulty.length
    n == profit.length
    m == worker.length
    1 <= n, m <= 104
    1 <= difficulty[i], profit[i], worker[i] <= 105

    """
    ### Canonical solution below ###
    n = len(difficulty)
    jobs = sorted(zip(difficulty, profit))
    worker.sort()

    max_profit = 0
    total_profit = 0
    job_idx = 0

    for w in worker:
        while job_idx < n and w >= jobs[job_idx][0]:
            max_profit = max(max_profit, jobs[job_idx][1])
            job_idx += 1
        total_profit += max_profit

    return total_profit




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4,5], [5,5,5,5,5], [1,2,3,4,5]) == 25
	assert candidate([85,47,57], [24,66,99], [40,25,25]) == 0
	assert candidate([10,20,30,40,50], [1,2,3,4,5], [10,20,30,40,50]) == 15
	assert candidate([1,1,1,1,1], [1,1,1,1,1], [1,1,1,1,1]) == 5
	assert candidate([2,4,6,8,10], [10,20,30,40,50], [4,5,6,7]) == 100
	assert candidate([1, 1, 1, 1, 1], [1, 1, 1, 1, 1], []) == 0
	assert candidate([], [], []) == 0
	assert candidate([1,3,5,7,9], [10,20,30,40,50], [3,5,7,9]) == 140
	assert candidate([1], [100], [100]) == 100
	assert candidate([1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1]) == 1
def test_check():
	check(maxProfitAssignment)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,binary-search,greedy,sorting
# Metadata Coverage: 100
