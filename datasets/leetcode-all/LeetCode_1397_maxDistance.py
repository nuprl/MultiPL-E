from typing import List


def maxDistance(nums1: List[int], nums2: List[int]) -> int:
    """
    You are given two non-increasing 0-indexed integer arrays nums1​​​​​​ and nums2​​​​​​.
    A pair of indices (i, j), where 0 <= i < nums1.length and 0 <= j < nums2.length, is valid if both i <= j and nums1[i] <= nums2[j]. The distance of the pair is j - i​​​​.
    Return the maximum distance of any valid pair (i, j). If there are no valid pairs, return 0.
    An array arr is non-increasing if arr[i-1] >= arr[i] for every 1 <= i < arr.length.
 
    Example 1:

    Input: nums1 = [55,30,5,4,2], nums2 = [100,20,10,10,5]
    Output: 2
    Explanation: The valid pairs are (0,0), (2,2), (2,3), (2,4), (3,3), (3,4), and (4,4).
    The maximum distance is 2 with pair (2,4).

    Example 2:

    Input: nums1 = [2,2,2], nums2 = [10,10,1]
    Output: 1
    Explanation: The valid pairs are (0,0), (0,1), and (1,1).
    The maximum distance is 1 with pair (0,1).

    Example 3:

    Input: nums1 = [30,29,19,5], nums2 = [25,25,25,25,25]
    Output: 2
    Explanation: The valid pairs are (2,2), (2,3), (2,4), (3,3), and (3,4).
    The maximum distance is 2 with pair (2,4).

 
    Constraints:

    1 <= nums1.length, nums2.length <= 105
    1 <= nums1[i], nums2[j] <= 105
    Both nums1 and nums2 are non-increasing.

    """
    ### Canonical solution below ###
    i, j, maxDist = 0, 0, 0
    while i < len(nums1) and j < len(nums2):
        if nums1[i] > nums2[j]:
            i += 1
        else:
            maxDist = max(maxDist, j - i)
            j += 1
    return maxDist




### Unit tests below ###
def check(candidate):
	assert candidate([55,30,5,4,2], [100,20,10,10,5]) == 2
	assert candidate([1], [2]) == 0
	assert candidate([2,2], [2,2]) == 1
	assert candidate([2,2,2,2,2], [2,2,2,2,2]) == 4
	assert candidate([20,20,20,20,20], [40,40,40,40,40]) == 4
	assert candidate([160,160,160,160,160], [320,320,320,320,320]) == 4
	assert candidate([30,29,19,5], [25,25,25,25,25]) == 2
	assert candidate([40,40,40,40,40], [71,71,71,71,71]) == 4
	assert candidate([80,80,80,80,80], [100,100,100,100,100]) == 4
	assert candidate([20,10,10,10,10], [20,20,20,20,20]) == 4
	assert candidate([50,40,30,20,10], [60,50,40,30,20]) == 1
	assert candidate([320,320,320,320,320], [640,640,640,640,640]) == 4
	assert candidate([1,1,1,1,1], [2,2,2,2,2]) == 4
	assert candidate([40,40,40,40,40,40,40,40,40], [80,80,80,80,80,80,80,80,80]) == 8
	assert candidate([5,5,5,5,5], [10,10,10,10,10]) == 4
	assert candidate([2,2,2], [10,10,1]) == 1
	assert candidate([80,80,80,80,80], [160,160,160,160,160]) == 4
	assert candidate([40,40,40,40,40], [80,80,80,80,80]) == 4
	assert candidate([40,40,40,40,40,40,40], [80,80,80,80,80,80,80]) == 6
	assert candidate([1,1,1,1,1], [10,10,10,10,10]) == 4
	assert candidate([1,1], [2,2]) == 1
	assert candidate([2,2,2], [2,2,2]) == 2
	assert candidate([10,10,10,10,10], [20,20,20,20,20]) == 4
	assert candidate([100,90,80,70,60], [110,100,90,80,70]) == 1
	assert candidate([5,4,3,2,1], [5,4,3,2,1]) == 0
def test_check():
	check(maxDistance)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,binary-search,greedy
# Metadata Coverage: 100
