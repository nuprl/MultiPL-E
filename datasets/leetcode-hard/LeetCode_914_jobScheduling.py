from typing import List


def jobScheduling(startTime: List[int], endTime: List[int], profit: List[int]) -> int:
    """
    We have n jobs, where every job is scheduled to be done from startTime[i] to endTime[i], obtaining a profit of profit[i].
    You're given the startTime, endTime and profit arrays, return the maximum profit you can take such that there are no two jobs in the subset with overlapping time range.
    If you choose a job that ends at time X you will be able to start another job that starts at time X.
 
    Example 1:


    Input: startTime = [1,2,3,3], endTime = [3,4,5,6], profit = [50,10,40,70]
    Output: 120
    Explanation: The subset chosen is the first and fourth job. 
    Time range [1-3]+[3-6] , we get profit of 120 = 50 + 70.

    Example 2:


    Input: startTime = [1,2,3,4,6], endTime = [3,5,10,6,9], profit = [20,20,100,70,60]
    Output: 150
    Explanation: The subset chosen is the first, fourth and fifth job. 
    Profit obtained 150 = 20 + 70 + 60.

    Example 3:


    Input: startTime = [1,1,1], endTime = [2,3,4], profit = [5,6,4]
    Output: 6

 
    Constraints:

    1 <= startTime.length == endTime.length == profit.length <= 5 * 104
    1 <= startTime[i] < endTime[i] <= 109
    1 <= profit[i] <= 104

    """
    ### Canonical solution below ###
    from bisect import bisect_left
    jobs = sorted(zip(endTime, startTime, profit))
    dp = [jobs[0][2]]

    def latestNonConflict(index):
        startTimeToFind = jobs[index][1]
        index = bisect_left([job[0] for job in jobs], startTimeToFind)
        if index:
            return index - 1
        return -1

    for i in range(1, len(jobs)):
        L = latestNonConflict(i)
        dp.append(max(dp[-1], (0 if L == -1 else dp[L]) + jobs[i][2]))

    return dp[-1]




### Unit tests below ###
def check(candidate):
	assert candidate(
    [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
    [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],
    [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
) == 15
	assert candidate([1,1,1,1,1], [2,2,2,2,2], [1,2,3,4,5]) == 5
	assert candidate([1,1,1], [2,3,4], [5,6,4]) == 6
	assert candidate([1,3,5,7,9], [2,4,6,8,10], [100,200,300,400,500]) == 1500
	assert candidate([1,3,0,5,3], [2,4,1,6,5], [50,10,40,70,60]) == 130
	assert candidate([1,1,1,1,1], [3,3,3,3,3], [5,6,7,8,9]) == 9
def test_check():
	check(jobScheduling)
# Metadata Difficulty: Hard
# Metadata Topics: array,binary-search,dynamic-programming,sorting
# Metadata Coverage: 100
