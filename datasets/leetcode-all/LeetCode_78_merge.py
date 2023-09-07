from typing import List


def merge(nums1: List[int], m: int, nums2: List[int], n: int) -> None:
    """
    You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.
    Merge nums1 and nums2 into a single array sorted in non-decreasing order.
    The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.
 
    Example 1:

    Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
    Output: [1,2,2,3,5,6]
    Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
    The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.

    Example 2:

    Input: nums1 = [1], m = 1, nums2 = [], n = 0
    Output: [1]
    Explanation: The arrays we are merging are [1] and [].
    The result of the merge is [1].

    Example 3:

    Input: nums1 = [0], m = 0, nums2 = [1], n = 1
    Output: [1]
    Explanation: The arrays we are merging are [] and [1].
    The result of the merge is [1].
    Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can fit in nums1.

 
    Constraints:

    nums1.length == m + n
    nums2.length == n
    0 <= m, n <= 200
    1 <= m + n <= 200
    -109 <= nums1[i], nums2[j] <= 109

 
    Follow up: Can you come up with an algorithm that runs in O(m + n) time?
    """
    ### Canonical solution below ###
    i, j, k = m - 1, n - 1, m + n - 1
    while i >= 0 and j >= 0:
        if nums1[i] > nums2[j]:
            nums1[k] = nums1[i]
            i -= 1
        else:
            nums1[k] = nums2[j]
            j -= 1
        k -= 1
    while j >= 0:
        nums1[k] = nums2[j]
        k -= 1
        j -= 1




### Unit tests below ###
def check(candidate):
	assert candidate([2,0], 1, [1], 1) == None
	assert candidate([1,2,3,0,0,0], 3, [2,5,6], 3) == None
	assert candidate([1], 1, [], 0) == None
	assert candidate([1,2,3,4,5,6,7,8,9,0,0,0], 9, [10,11,12], 3) == None
	assert candidate([1,2,3,0,0,0], 3, [4,5,6], 3) == None
	assert candidate([1,2,3,4,5,6], 6, [0], 0) == None
	assert candidate([1,2,3,4,5,6,7,8,0,0], 8, [9,10], 2) == None
	assert candidate([1,2,3,0,0,0,0], 3, [4,5,6], 3) == None
	assert candidate([0,0,0], 0, [1], 1) == None
	assert candidate([1,2,3,4,5,6,7,0,0,0], 7, [8,9,10], 3) == None
	assert candidate([0,0,0,0,0], 0, [], 0) == None
	assert candidate([1,2,3,4,5,6,7,8,9,0,0,0,0,0,0,0,0,0], 9, [10,11,12,13,14], 5) == None
	assert candidate([4,5,6,0,0,0], 3, [1,2,3], 3) == None
	assert candidate([1,2,3,4,5,6,7,8,9,0,0,0,0,0,0], 9, [10,11,12,13], 4) == None
	assert candidate([1,2,3,4,5,6,0,0,0,0], 6, [7,8,9,10], 4) == None
	assert candidate([0,0,0,0,0,0], 0, [1,2,3,4,5,6], 6) == None
	assert candidate([1,0], 1, [2], 1) == None
	assert candidate([1,2,3,4,5], 5, [], 0) == None
	assert candidate([], 0, [], 0) == None
	assert candidate([0,0,0], 0, [], 0) == None
	assert candidate([2,0,0,0], 1, [1,3,4], 3) == None
	assert candidate([0,0,0,0], 0, [1,2,3,4], 4) == None
	assert candidate([1,2,3,4,5,6,7,8,9,0], 9, [10], 1) == None
	assert candidate([1,2,3,4,5,6,7,8,9,10], 9, [11], 1) == None
	assert candidate([1,0,0,0], 1, [2,3,4], 3) == None
	assert candidate([2,0,0], 1, [1], 1) == None
	assert candidate([1,2,3,4,5,6,7,8,9], 9, [], 0) == None
	assert candidate([1,2,3], 3, [], 0) == None
	assert candidate([1], 0, [2], 1) == None
	assert candidate([1,2,3,4,5,6], 6, [], 0) == None
	assert candidate([1,0,0], 1, [2], 1) == None
	assert candidate([0], 0, [1], 1) == None
	assert candidate([1,0], 0, [2], 1) == None
	assert candidate([0,0,0,0], 0, [], 0) == None
	assert candidate([1,2,3,0,0], 3, [4,5], 2) == None
	assert candidate([0,0], 0, [1], 1) == None
	assert candidate([1,2,3,4,5,6,7,8,9,10], 9, [], 0) == None
	assert candidate([1,2,3,4,5,0,0,0], 5, [6,7,8], 3) == None
def test_check():
	check(merge)
# Metadata Difficulty: Easy
# Metadata Topics: array,two-pointers,sorting
# Metadata Coverage: 100
