from typing import List


def countSmaller(nums: List[int]) -> List[int]:
    """
    Given an integer array nums, return an integer array counts where counts[i] is the number of smaller elements to the right of nums[i].
 
    Example 1:

    Input: nums = [5,2,6,1]
    Output: [2,1,1,0]
    Explanation:
    To the right of 5 there are 2 smaller elements (2 and 1).
    To the right of 2 there is only 1 smaller element (1).
    To the right of 6 there is 1 smaller element (1).
    To the right of 1 there is 0 smaller element.

    Example 2:

    Input: nums = [-1]
    Output: [0]

    Example 3:

    Input: nums = [-1,-1]
    Output: [0,0]

 
    Constraints:

    1 <= nums.length <= 105
    -104 <= nums[i] <= 104

    """
    ### Canonical solution below ###
    def merge_sort(indices):
        if len(indices) <= 1:
            return indices
        mid = len(indices) // 2
        left = merge_sort(indices[:mid])
        right = merge_sort(indices[mid:])
        return merge(left, right)

    def merge(left, right):
        merged, count = [], 0
        while left and right:
            if nums[left[0]] <= nums[right[0]]:
                counts[left[0]] += count
                merged.append(left.pop(0))
            else:
                count += len(left)
                merged.append(right.pop(0))
        for i in left:
            counts[i] += count
        return merged + left + right

    counts = [0] * len(nums)
    merge_sort(list(range(len(nums))))
    return counts




### Unit tests below ###
def check(candidate):
	assert candidate([2, 1, 3, 1, 2]) == [2, 0, 2, 0, 0]
	assert candidate([2, 2, 2, 2, 2, 2]) == [0, 0, 0, 0, 0, 0]
	assert candidate([1, 2, 3, 2, 1]) == [0, 1, 2, 1, 0]
	assert candidate([-1]) == [0]
	assert candidate([-1, -1]) == [0, 0]
	assert candidate([1]) == [0]
	assert candidate([1, 2, 3, 4, 5]) == [0, 0, 0, 0, 0]
	assert candidate([2, 2, 2, 2, 2]) == [0, 0, 0, 0, 0]
def test_check():
	check(countSmaller)
# Metadata Difficulty: Hard
# Metadata Topics: array,binary-search,divide-and-conquer,binary-indexed-tree,segment-tree,merge-sort,ordered-set
# Metadata Coverage: 100
