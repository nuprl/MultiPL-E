from typing import List


def minPairSum(nums: List[int]) -> int:
    """
    The pair sum of a pair (a,b) is equal to a + b. The maximum pair sum is the largest pair sum in a list of pairs.

    For example, if we have pairs (1,5), (2,3), and (4,4), the maximum pair sum would be max(1+5, 2+3, 4+4) = max(6, 5, 8) = 8.

    Given an array nums of even length n, pair up the elements of nums into n / 2 pairs such that:

    Each element of nums is in exactly one pair, and
    The maximum pair sum is minimized.

    Return the minimized maximum pair sum after optimally pairing up the elements.
 
    Example 1:

    Input: nums = [3,5,2,3]
    Output: 7
    Explanation: The elements can be paired up into pairs (3,3) and (5,2).
    The maximum pair sum is max(3+3, 5+2) = max(6, 7) = 7.

    Example 2:

    Input: nums = [3,5,4,2,4,6]
    Output: 8
    Explanation: The elements can be paired up into pairs (3,5), (4,4), and (6,2).
    The maximum pair sum is max(3+5, 4+4, 6+2) = max(8, 8, 8) = 8.

 
    Constraints:

    n == nums.length
    2 <= n <= 105
    n is even.
    1 <= nums[i] <= 105
    """
    ### Canonical solution below ###
    nums.sort()
    max_sum = 0
    for i in range(len(nums) // 2):
        max_sum = max(max_sum, nums[i] + nums[-1 - i])
    return max_sum




### Unit tests below ###
def check(candidate):
	assert candidate([3,5,2,3]) == 7
	assert candidate([1,2,1,2]) == 3
	assert candidate([9,8,7,6,5,4,3,2,1]) == 10
	assert candidate([5,4,2,3]) == 7
	assert candidate([1,2,3,4,5,6]) == 7
	assert candidate([3,5,4,2]) == 7
	assert candidate([1,1,1,1,2,2,2,2]) == 3
	assert candidate([100,1,100,1]) == 101
	assert candidate([8,7,6,5,4,3,2,1]) == 9
	assert candidate([4,2,5,3]) == 7
	assert candidate([9,9,9,9,9,9,9,9]) == 18
	assert candidate([1,2,3,4]) == 5
	assert candidate([1,5,3,3,3,5,2,1]) == 6
	assert candidate([1,1,2,2,3,3]) == 4
	assert candidate([5,3,4,2]) == 7
	assert candidate([3,2,5,4]) == 7
	assert candidate([1,100,2,99,3,98]) == 101
	assert candidate([3,3,2,4,5,6]) == 8
	assert candidate([4,2,3,5]) == 7
	assert candidate([3,5,4,2,4,6,3,5]) == 8
	assert candidate([3,5,4,2,4,6,3,5,4]) == 8
	assert candidate([1,9,2,8,3,7,4,6]) == 10
	assert candidate([1,1,1,1,1,1,1,1]) == 2
	assert candidate([4,3,2,5]) == 7
	assert candidate([9,1,8,2,7,3,6,4]) == 10
	assert candidate([1,2,3,4,5,6,7,8]) == 9
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12]) == 13
	assert candidate([7,7,7,7,7,7,7,7]) == 14
	assert candidate([2,2,2,2,1,1,1,1]) == 3
	assert candidate([6,2,6,5,1,2]) == 8
	assert candidate([9,5,2,5,4,7,6,8]) == 12
	assert candidate([3,5,4,2,4,6]) == 8
	assert candidate([3,7,2,4,9,3,8,1]) == 10
	assert candidate([11,11,11,11]) == 22
	assert candidate([1,2,3,4,5,6,7,8,9]) == 10
	assert candidate([1,1,2,2,1,1,2,2]) == 3
	assert candidate([3,2,4,5]) == 7
	assert candidate([8,6,7,5,4,2,3,1]) == 9
	assert candidate([11,9,7,5,3,1]) == 12
	assert candidate([1,1,1,1,1,1,1,1,1]) == 2
	assert candidate([4,3,5,2]) == 7
	assert candidate([1,1,1,1]) == 2
	assert candidate([1,3,5,7,9,11]) == 12
	assert candidate([1,3,2,4,5,7,6,8]) == 9
	assert candidate([100,1,100,1,100,1]) == 101
	assert candidate([3,2,3,2]) == 5
	assert candidate([5,4,3,2]) == 7
def test_check():
	check(minPairSum)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,greedy,sorting
# Metadata Coverage: 100
