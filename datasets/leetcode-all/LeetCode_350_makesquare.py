from typing import List


def makesquare(matchsticks: List[int]) -> bool:
    """
    You are given an integer array matchsticks where matchsticks[i] is the length of the ith matchstick. You want to use all the matchsticks to make one square. You should not break any stick, but you can link them up, and each matchstick must be used exactly one time.
    Return true if you can make this square and false otherwise.
 
    Example 1:


    Input: matchsticks = [1,1,2,2,2]
    Output: true
    Explanation: You can form a square with length 2, one side of the square came two sticks with length 1.

    Example 2:

    Input: matchsticks = [3,3,3,3,4]
    Output: false
    Explanation: You cannot find a way to form a square with all the matchsticks.

 
    Constraints:

    1 <= matchsticks.length <= 15
    1 <= matchsticks[i] <= 108

    """
    ### Canonical solution below ###
    from itertools import chain

    def dfs(matchsticks, sums, target, index):
        if index == len(matchsticks):
            return sums[0] == target and sums[1] == target and sums[2] == target
        for i in range(4):
            if sums[i] + matchsticks[index] <= target:
                sums[i] += matchsticks[index]
                if dfs(matchsticks, sums, target, index + 1):
                    return True
                sums[i] -= matchsticks[index]
        return False
    if len(matchsticks) < 4:
        return False
    total = sum(matchsticks)
    if total % 4:
        return False
    target = total // 4
    matchsticks.sort(reverse=True)
    sums = [0]*4
    return dfs(matchsticks, sums, target, 0)




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,1,1]) == True
	assert candidate([1]) == False
	assert candidate([100,100,100,100]) == True
	assert candidate([1,1,1,2,2,2]) == False
	assert candidate([50,50,50,50,50,50,50,50]) == True
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]) == False
	assert candidate([10000000,10000000,10000000,10000000,10000000,10000000,10000000,10000000,10000000]) == False
	assert candidate([1,2]) == False
	assert candidate([1,1,2,3,5,8,13,21]) == False
	assert candidate([1,1,1,1,2,2,2,2]) == True
	assert candidate([108,108,108,108]) == True
	assert candidate([3,3,3,3,4]) == False
	assert candidate(
    [100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100]) == True
	assert candidate([10,10,10,10]) == True
	assert candidate([108,108,108,108,108,108,108,108]) == True
	assert candidate([1,1,2,2,2]) == True
	assert candidate([1,1,1]) == False
	assert candidate([]) == False
	assert candidate([15,15,15,15,15,15,15,15]) == True
	assert candidate([1048577,1048577,1048577,1048577,1048577,1048577,1048577,1048577]) == True
	assert candidate([1,1,1,1,1,1,1,3,3,3,3]) == False
	assert candidate([5,5,5,5,5]) == False
	assert candidate([1,2,4,8,16,32,64,128]) == False
	assert candidate([107,107,107,107]) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == False
def test_check():
	check(makesquare)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,backtracking,bit-manipulation,bitmask
# Metadata Coverage: 100
