from typing import List


def triangleNumber(nums: list) -> int:
    """
    Given an integer array nums, return the number of triplets chosen from the array that can make triangles if we take them as side lengths of a triangle.
 
    Example 1:

    Input: nums = [2,2,3,4]
    Output: 3
    Explanation: Valid combinations are: 
    2,3,4 (using the first 2)
    2,3,4 (using the second 2)
    2,2,3

    Example 2:

    Input: nums = [4,2,3,4]
    Output: 4

 
    Constraints:

    1 <= nums.length <= 1000
    0 <= nums[i] <= 1000

    """
    ### Canonical solution below ###
    nums.sort()
    count = 0
    for i in range(len(nums)):
        for j in range(i + 1, len(nums)):
            for k in range(j + 1, len(nums)):
                if nums[i] + nums[j] > nums[k]:
                    count += 1
                else:
                    break
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 50
	assert candidate([5,5,5,5,5]) == 10
	assert candidate([2,2,3,4]) == 3
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]) == 455
	assert candidate([0,0,0,0,0,0,0]) == 0
	assert candidate([1,1,1,1]) == 4
	assert candidate([2,2,2,2,2]) == 10
	assert candidate([1000,999,998,997,996,995]) == 20
	assert candidate([1000,1000,1000]) == 1
	assert candidate([4,2,3,4]) == 4
	assert candidate([1000,1000,1000,1000,1000]) == 10
def test_check():
	check(triangleNumber)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,binary-search,greedy,sorting
# Metadata Coverage: 100
