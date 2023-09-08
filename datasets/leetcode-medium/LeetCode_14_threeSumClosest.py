from typing import List


def threeSumClosest(nums: List[int], target: int) -> int:
    """
    Given an integer array nums of length n and an integer target, find three integers in nums such that the sum is closest to target.
    Return the sum of the three integers.
    You may assume that each input would have exactly one solution.
 
    Example 1:

    Input: nums = [-1,2,1,-4], target = 1
    Output: 2
    Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).

    Example 2:

    Input: nums = [0,0,0], target = 1
    Output: 0
    Explanation: The sum that is closest to the target is 0. (0 + 0 + 0 = 0).

 
    Constraints:

    3 <= nums.length <= 500
    -1000 <= nums[i] <= 1000
    -104 <= target <= 104

    """
    ### Canonical solution below ###
    nums.sort()
    closest = sum(nums[:3])
    for i in range(len(nums) - 2):
        left, right = i + 1, len(nums) - 1
        while left < right:
            cur_sum = nums[i] + nums[left] + nums[right]
            if cur_sum == target:
                return cur_sum
            if abs(target - cur_sum) < abs(target - closest):
                closest = cur_sum
            if cur_sum < target:
                left += 1
            else:
                right -= 1
    return closest




### Unit tests below ###
def check(candidate):
	assert candidate([-1,2,1,-4], 4) == 2
	assert candidate([1,1,1], 3) == 3
	assert candidate([-100,200,300,400,500], 600) == 600
	assert candidate([0,0,0], 1) == 0
	assert candidate([0,1,2], 3) == 3
	assert candidate([-100,-200,-300,-400,-500], -700) == -700
	assert candidate([-1,-2,-4,-8,-16], -13) == -13
	assert candidate([1,-2,3,-4,5], 0) == 0
	assert candidate([10,20,30,40,50], 60) == 60
	assert candidate(
    [-10,-20,-20,-20,10,20,20,20,100], 0) == -10
	assert candidate([-1,2,1,-4], -1) == -1
	assert candidate([-8,1,2,3,4,5,-10,10], 10) == 10
	assert candidate([1,2,4,8,16], 13) == 13
	assert candidate([1,1,1], 2) == 3
	assert candidate([-1,0,1,2,-1,-4], 1) == 1
	assert candidate(
    [-1,2,1,-4], 1) == 2
	assert candidate([-3,-2,-5,3,-4], -1) == -2
	assert candidate([-1,-2,-3,-4,-5], -6) == -6
	assert candidate([100,200,300,400,500], 700) == 700
	assert candidate([-1,2,1,-4], 1) == 2
	assert candidate([0,2,5,-3], 3) == 2
	assert candidate([1,2,5,10,11], 12) == 13
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 3) == 3
	assert candidate([1,2,3,4,5], 6) == 6
	assert candidate([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10], -15) == -15
	assert candidate([-3,0,3,4,5], 0) == 0
	assert candidate([-1,-1,-1,-1], -3) == -3
def test_check():
	check(threeSumClosest)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,sorting
# Metadata Coverage: 100
