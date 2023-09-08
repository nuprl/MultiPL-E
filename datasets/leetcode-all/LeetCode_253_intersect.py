from typing import List


def intersect(nums1: List[int], nums2: List[int]) -> List[int]:
    """
    Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.
 
    Example 1:

    Input: nums1 = [1,2,2,1], nums2 = [2,2]
    Output: [2,2]

    Example 2:

    Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
    Output: [4,9]
    Explanation: [9,4] is also accepted.

 
    Constraints:

    1 <= nums1.length, nums2.length <= 1000
    0 <= nums1[i], nums2[i] <= 1000

 
    Follow up:

    What if the given array is already sorted? How would you optimize your algorithm?
    What if nums1's size is small compared to nums2's size? Which algorithm is better?
    What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?

    """
    ### Canonical solution below ###
    count_map = {}
    result = []

    for num in nums1:
        count_map[num] = count_map.get(num, 0) + 1

    for num in nums2:
        if count_map.get(num, 0) > 0:
            result.append(num)
            count_map[num] -= 1

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([4,9,5], [9,4,9,8,4]) == [9,4]
	assert candidate(
    [1,2,2,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2], [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]) == [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
	assert candidate([1,2,2,1], [3,3]) == []
	assert candidate([1,2,3,4,5], [1,2,3,4,5]) == [1,2,3,4,5]
	assert candidate([1,2,2,1], [2,2]) == [2,2]
	assert candidate([0,0,0,0,0], [0,0,0]) == [0,0,0]
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1,1]) == [1,1,1,1,1,1,1,1,1,1]
	assert candidate([1000,1000,1000,1000,1000], [1000,1000,1000]) == [1000,1000,1000]
	assert candidate([1,2,2,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2], [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]) == [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
	assert candidate([1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1]) == [1,1,1,1,1,1,1,1,1]
	assert candidate([1000,999,998,997,996], [1000,999,998,997,996]) == [1000,999,998,997,996]
	assert candidate([1,2,3,4,5,6,7,8,9,10], [11,12,13,14,15,16,17,18,19,20]) == []
	assert candidate([1,2,2,1,1,1,1,1,1], [1,1]) == [1,1]
def test_check():
	check(intersect)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,two-pointers,binary-search,sorting
# Metadata Coverage: 100
