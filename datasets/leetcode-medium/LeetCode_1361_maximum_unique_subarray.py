from typing import List


def maximum_unique_subarray(nums: List[int]) -> int:
    """
    You are given an array of positive integers nums and want to erase a subarray containing unique elements. The score you get by erasing the subarray is equal to the sum of its elements.
    Return the maximum score you can get by erasing exactly one subarray.
    An array b is called to be a subarray of a if it forms a contiguous subsequence of a, that is, if it is equal to a[l],a[l+1],...,a[r] for some (l,r).
 
    Example 1:

    Input: nums = [4,2,4,5,6]
    Output: 17
    Explanation: The optimal subarray here is [2,4,5,6].

    Example 2:

    Input: nums = [5,2,1,2,5,2,1,2,5]
    Output: 8
    Explanation: The optimal subarray here is [5,2,1] or [1,2,5].

 
    Constraints:

    1 <= nums.length <= 105
    1 <= nums[i] <= 104

    """
    ### Canonical solution below ###
    max_sum, current_sum, left = 0, 0, 0
    elements = set()

    for right in range(len(nums)):
        while nums[right] in elements:
            elements.remove(nums[left])
            current_sum -= nums[left]
            left += 1

        elements.add(nums[right])
        current_sum += nums[right]
        max_sum = max(max_sum, current_sum)

    return max_sum




### Unit tests below ###
def check(candidate):
	assert candidate(range(1, 11)) == 55
	assert candidate([1,2,3,4,5,6,7,8,9,10])==55
	assert candidate([1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1])==3
	assert candidate([4, 2, 4, 5, 6]) == 17
	assert candidate([5,5,5,5,5,5,5,5,5,5])==5
	assert candidate([10,10,10,10,10,10,10,10,10,10])==10
	assert candidate(
    [5, 2, 1, 2, 5, 2, 1, 2, 5]) == 8
	assert candidate([1,1,1,1,1,1,1,1,1,1])==1
	assert candidate(range(10000))==49995000
	assert candidate([3,3,3,3,3,3,3,3,3,3])==3
	assert candidate(
    [1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])==55
	assert candidate([2,2,2,2,2,1,1,1,1,1])==3
	assert candidate([1,2,3,4,5,1,2,3,4,5])==15
	assert candidate([1,2,1,2,1,2,1,2,1,2])==3
	assert candidate([10,9,8,7,6,5,4,3,2,1])==55
	assert candidate([1,1,1,1,1,2,2,2,2,2])==3
	assert candidate([1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1])==55
	assert candidate([0,1,2,3,4])==10
	assert candidate([1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10])==55
	assert candidate(range(10, 0, -1)) == 55
def test_check():
	check(maximum_unique_subarray)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,sliding-window
# Metadata Coverage: 100
