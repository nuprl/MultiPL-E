from typing import List


def most_frequent_even(nums: List[int]) -> int:
    """
    Given an integer array nums, return the most frequent even element.
    If there is a tie, return the smallest one. If there is no such element, return -1.
 
    Example 1:

    Input: nums = [0,1,2,2,4,4,1]
    Output: 2
    Explanation:
    The even elements are 0, 2, and 4. Of these, 2 and 4 appear the most.
    We return the smallest one, which is 2.
    Example 2:

    Input: nums = [4,4,4,9,2,4]
    Output: 4
    Explanation: 4 is the even element appears the most.

    Example 3:

    Input: nums = [29,47,21,41,13,37,25,7]
    Output: -1
    Explanation: There is no even element.

 
    Constraints:

    1 <= nums.length <= 2000
    0 <= nums[i] <= 105

    """
    ### Canonical solution below ###
    count = {}
    for num in nums:
        if num % 2 == 0:
            count[num] = count.get(num, 0) + 1
    max_count = float('-inf')
    most_frequent = -1
    for num, freq in count.items():
        if freq > max_count or (freq == max_count and num < most_frequent):
            max_count = freq
            most_frequent = num
    return most_frequent




### Unit tests below ###
def check(candidate):
	assert candidate([2,4,6,8,10]) == 2
	assert candidate([0,0,0,2,2,2,4,4,4,4]) == 4
	assert candidate([]) == -1
	assert candidate([4,4,4,4,4,4,4,1]) == 4
	assert candidate([0,100,200,200,400,400,400,400,400,400,400,400,400,10]) == 400
	assert candidate([10,4,6,8,10,10,10,2,2,2,2,4]) == 2
	assert candidate([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20]) == 0
	assert candidate([29,47,21,41,13,37,25,7]) == -1
	assert candidate([0,0,0,0,2,2,2,2,4,4,4,4,10,10,10,10]) == 0
	assert candidate([4,4,4,4,4,2,2,2,2]) == 4
	assert candidate([2,4,6,8,10,10,10]) == 10
	assert candidate([2,4,4,4,4,4,4]) == 4
	assert candidate([10,10,10,10,10,10,10,10,10,10,10]) == 10
	assert candidate([-1,-1,-1,-1,-1,-1,0,0,0,0,0,0]) == 0
	assert candidate([2,2,2,2,4,4,4,4,4,8,8,8,8,9,9,9]) == 4
	assert candidate([0,0,0,2,2,2,2,4,4,4,4,4,4,4,4,4,4]) == 4
	assert candidate([10,10,20,20,12,12,10,10,20,20,20,20,12,12]) == 20
	assert candidate([0,0,0,0,0,1,1,2,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,16,17,17,18,18,20,20]) == 0
	assert candidate([4,4,4,4,4,4,4,1,2,2,2,2]) == 4
	assert candidate([0,0,0,0,2,2,2,2,4,4,4,4]) == 0
	assert candidate([4,4,4,9,2,4]) == 4
	assert candidate([100,100,100,2,2,2,4,4,4,4]) == 4
	assert candidate([100,100,100,2,2,2,2]) == 2
	assert candidate([0,2,4,6,8,10,12,14,16,18]) == 0
	assert candidate([2,4,6,8,10,12,14,16,18,20,20,20]) == 20
	assert candidate([4,2,6,8,10,10,10]) == 10
	assert candidate([2,4,6,8,10,12,14,16,18,20]) == 2
	assert candidate([0,1,3,5,7,9,11]) == 0
	assert candidate([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]) == 0
	assert candidate([0,1,0,1,0,1,0,1,0,1]) == 0
	assert candidate([2,2,4,4,6,6,8,8,10,10]) == 2
	assert candidate([100,100,100,2,2,2,2,4,4,4,4,4,4]) == 4
	assert candidate([0,100,200,200,400,400,400,400,400,400,400,400,400]) == 400
	assert candidate([2,2,2,4,4,4,4]) == 4
	assert candidate([100,100,100,2,2,2,4,4,4]) == 2
	assert candidate([4,4,4,4,4,4,4,1,2,2,2,2,10,10,10,10,10,10]) == 4
	assert candidate([0]) == 0
	assert candidate([0,1,2,2,4,4,1]) == 2
	assert candidate([100,100,100,200,200,200,200]) == 200
	assert candidate([2,4,6,8,10,10,10,2,2,2,4,4,4,4]) == 4
	assert candidate([2,2,2,2,4,4,4]) == 2
	assert candidate([10,10,10,2,2,2,2,4,4,4,4]) == 2
	assert candidate([6,6,6,8,8,8,10,10,10,10]) == 10
	assert candidate([0,1,2,2,4,4,4]) == 4
	assert candidate([1]) == -1
def test_check():
	check(most_frequent_even)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,counting
# Metadata Coverage: 100
