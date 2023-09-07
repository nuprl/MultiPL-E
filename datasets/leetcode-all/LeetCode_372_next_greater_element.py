from typing import List


def next_greater_element(nums1: List[int], nums2: List[int]) -> List[int]:
    """
    The next greater element of some element x in an array is the first greater element that is to the right of x in the same array.
    You are given two distinct 0-indexed integer arrays nums1 and nums2, where nums1 is a subset of nums2.
    For each 0 <= i < nums1.length, find the index j such that nums1[i] == nums2[j] and determine the next greater element of nums2[j] in nums2. If there is no next greater element, then the answer for this query is -1.
    Return an array ans of length nums1.length such that ans[i] is the next greater element as described above.
 
    Example 1:

    Input: nums1 = [4,1,2], nums2 = [1,3,4,2]
    Output: [-1,3,-1]
    Explanation: The next greater element for each value of nums1 is as follows:
    - 4 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.
    - 1 is underlined in nums2 = [1,3,4,2]. The next greater element is 3.
    - 2 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.

    Example 2:

    Input: nums1 = [2,4], nums2 = [1,2,3,4]
    Output: [3,-1]
    Explanation: The next greater element for each value of nums1 is as follows:
    - 2 is underlined in nums2 = [1,2,3,4]. The next greater element is 3.
    - 4 is underlined in nums2 = [1,2,3,4]. There is no next greater element, so the answer is -1.

 
    Constraints:

    1 <= nums1.length <= nums2.length <= 1000
    0 <= nums1[i], nums2[i] <= 104
    All integers in nums1 and nums2 are unique.
    All the integers of nums1 also appear in nums2.

 
    Follow up: Could you find an O(nums1.length + nums2.length) solution?"""
    ### Canonical solution below ###
    next_greater = {}
    stack = []

    for num in nums2:
        while stack and stack[-1] < num:
            next_greater[stack.pop()] = num
        stack.append(num)

    return [next_greater.get(n, -1) for n in nums1]




### Unit tests below ###
def check(candidate):
	assert candidate(range(0, 1000000), range(1000000, 2000000)) == [-1 for _ in range(1000000)]
	assert candidate([4,3,2], [4,3,2,1]) == [-1,-1,-1]
	assert candidate(
    [1,3,4], [1,3,4,2]
) == [3,4,-1]
	assert candidate([2,3,4,5,6,7,8,9,1], [1,2,3,4,5,6,7,8,9]) == [3,4,5,6,7,8,9,-1,2]
	assert candidate([4,1,2], [1,3,4,2]) == [-1,3,-1]
	assert candidate([1], [1,2,3,4,5]) == [2]
	assert candidate([2,4], [1,2,3,4]) == [3,-1]
	assert candidate([1,2,3,4,5], [5,4,3,2,1]) == [-1,-1,-1,-1,-1]
	assert candidate(
    [2,4], [1,2,3,4]
) == [3,-1]
	assert candidate([1,2,3,4,5,6,7,8,9,0], [9,8,7,6,5,4,3,2,1,0]) == [-1]*10
	assert candidate([1,3,5,7,9], [9,7,5,3,1]) == [-1,-1,-1,-1,-1]
def test_check():
	check(next_greater_element)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,stack,monotonic-stack
# Metadata Coverage: 100
