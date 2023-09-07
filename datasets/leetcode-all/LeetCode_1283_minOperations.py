from typing import List


def minOperations(target: List[int], arr: List[int]) -> int:
    """
    You are given an array target that consists of distinct integers and another integer array arr that can have duplicates.
    In one operation, you can insert any integer at any position in arr. For example, if arr = [1,4,1,2], you can add 3 in the middle and make it [1,4,3,1,2]. Note that you can insert the integer at the very beginning or end of the array.
    Return the minimum number of operations needed to make target a subsequence of arr.
    A subsequence of an array is a new array generated from the original array by deleting some elements (possibly none) without changing the remaining elements' relative order. For example, [2,7,4] is a subsequence of [4,2,3,7,2,1,4] (the underlined elements), while [2,4,2] is not.
 
    Example 1:

    Input: target = [5,1,3], arr = [9,4,2,3,4]
    Output: 2
    Explanation: You can add 5 and 1 in such a way that makes arr = [5,9,4,1,2,3,4], then target will be a subsequence of arr.

    Example 2:

    Input: target = [6,4,8,1,3,2], arr = [4,7,6,2,3,8,6,1]
    Output: 3

 
    Constraints:

    1 <= target.length, arr.length <= 105
    1 <= target[i], arr[i] <= 109
    target contains no duplicates.

    """
    ### Canonical solution below ###
    from bisect import bisect_left
    pos = {x: i for i, x in enumerate(target)}

    dp = []
    for a in arr:
        if a in pos:
            idx = bisect_left(dp, pos[a])
            if idx == len(dp):
                dp.append(pos[a])
            else:
                dp[idx] = pos[a]
    return len(target) - len(dp)




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4,5], [5,4,3,2,1]) == 4
	assert candidate([1,2,3,4,5,6,7,8,9,10], [10,9,8,7,6,5,4,3,2,1]) == 9
	assert candidate([1,2,3], [1,2,3]) == 0
	assert candidate([100,200,300,400,500], [500,400,300,200,100]) == 4
	assert candidate([5,1,3], [9,4,2,3,4]) == 2
	assert candidate([1,2,3], [2,3,1]) == 1
	assert candidate([1,2,3,4,5], [3,4,5,1,2]) == 2
	assert candidate([1,2,3,4,5], [2,3,4,5,1]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10], [2,4,6,8,10,1,3,5,7,9]) == 5
	assert candidate([1,2,3], [3,2,1]) == 2
	assert candidate([6,4,8,1,3,2], [4,7,6,2,3,8,6,1]) == 3
	assert candidate([1,2,3,4,5,6,7,8,9,10], [5,6,7,8,9,10,4,3,2,1]) == 4
def test_check():
	check(minOperations)
# Metadata Difficulty: Hard
# Metadata Topics: array,hash-table,binary-search,greedy
# Metadata Coverage: 100
