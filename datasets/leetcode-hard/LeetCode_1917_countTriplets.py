from typing import List


def countTriplets(nums: List[int]) -> int:
    """
    Given an integer array nums, return the number of AND triples.
    An AND triple is a triple of indices (i, j, k) such that:

    0 <= i < nums.length
    0 <= j < nums.length
    0 <= k < nums.length
    nums[i] & nums[j] & nums[k] == 0, where & represents the bitwise-AND operator.

 
    Example 1:

    Input: nums = [2,1,3]
    Output: 12
    Explanation: We could choose the following i, j, k triples:
    (i=0, j=0, k=1) : 2 & 2 & 1
    (i=0, j=1, k=0) : 2 & 1 & 2
    (i=0, j=1, k=1) : 2 & 1 & 1
    (i=0, j=1, k=2) : 2 & 1 & 3
    (i=0, j=2, k=1) : 2 & 3 & 1
    (i=1, j=0, k=0) : 1 & 2 & 2
    (i=1, j=0, k=1) : 1 & 2 & 1
    (i=1, j=0, k=2) : 1 & 2 & 3
    (i=1, j=1, k=0) : 1 & 1 & 2
    (i=1, j=2, k=0) : 1 & 3 & 2
    (i=2, j=0, k=1) : 3 & 2 & 1
    (i=2, j=1, k=0) : 3 & 1 & 2

    Example 2:

    Input: nums = [0,0,0]
    Output: 27

 
    Constraints:

    1 <= nums.length <= 1000
    0 <= nums[i] < 216

    """
    ### Canonical solution below ###
    count = 0
    n = len(nums)

    for i in range(n):
        for j in range(i + 1, n):
            for k in range(j + 1, n):
                if nums[i] != nums[j] and nums[i] != nums[k] and nums[j] != nums[k]:
                    count += 1

    return count




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4,5,6]) == 20
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 120
	assert candidate([1,1,1,1,1]) == 0
	assert candidate([10,20,30,40,50,60,70,80,90,100]) == 120
	assert candidate([1,2,3]) == 1
	assert candidate([5,4,3,2,1]) == 10
	assert candidate([2,2,2,2,2,2,2]) == 0
	assert candidate([4,4,2,4,3]) == 3
	assert candidate([1,1,1,4,4,4]) == 0
	assert candidate([1,2,3,4,5]) == 10
def test_check():
	check(countTriplets)
# Metadata Difficulty: Hard
# Metadata Topics: array,hash-table,bit-manipulation
# Metadata Coverage: 100
