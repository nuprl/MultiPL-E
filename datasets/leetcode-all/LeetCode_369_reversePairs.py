from typing import List


def reversePairs(nums: List[int]) -> int:
    """
    Given an integer array nums, return the number of reverse pairs in the array.
    A reverse pair is a pair (i, j) where:

    0 <= i < j < nums.length and
    nums[i] > 2 * nums[j].

 
    Example 1:

    Input: nums = [1,3,2,3,1]
    Output: 2
    Explanation: The reverse pairs are:
    (1, 4) --> nums[1] = 3, nums[4] = 1, 3 > 2 * 1
    (3, 4) --> nums[3] = 3, nums[4] = 1, 3 > 2 * 1

    Example 2:

    Input: nums = [2,4,3,5,1]
    Output: 3
    Explanation: The reverse pairs are:
    (1, 4) --> nums[1] = 4, nums[4] = 1, 4 > 2 * 1
    (2, 4) --> nums[2] = 3, nums[4] = 1, 3 > 2 * 1
    (3, 4) --> nums[3] = 5, nums[4] = 1, 5 > 2 * 1

 
    Constraints:

    1 <= nums.length <= 5 * 104
    -231 <= nums[i] <= 231 - 1

    """
    ### Canonical solution below ###
    def mergeSort(l, r):
        if l >= r:
            return 0

        mid = (l + r) // 2
        count = mergeSort(l, mid) + mergeSort(mid + 1, r)
        j = mid + 1
        for i in range(l, mid + 1):
            while j <= r and nums[i] > 2 * nums[j]:
                j += 1
            count += j - (mid + 1)

        nums[l:r + 1] = sorted(nums[l:r + 1])

        return count

    return mergeSort(0, len(nums) - 1)




### Unit tests below ###
def check(candidate):
	assert candidate([0,0,0,0,0]) == 0
	assert candidate([2,2,2,2,2,2]) == 0
	assert candidate([1,2,3,4,5]) == 0
	assert candidate([-2,1,1,1,1]) == 0
	assert candidate([1,3,5,7,9]) == 0
	assert candidate([1,3,2,3,1]) == 2
	assert candidate(list(range(1, 10001))) == 0
	assert candidate([2,4,3,5,1]) == 3
	assert candidate([1]) == 0
	assert candidate([2,2,2,2,2]) == 0
	assert candidate([1,1]) == 0
	assert candidate([-2,-4,-3,-5,-1,0]) == 6
	assert candidate([1,2]) == 0
	assert candidate([1,3,5,7,9,11]) == 0
	assert candidate(list(range(1, 10001, -1))) == 0
	assert candidate([-2,-4,-3,-5,-1]) == 6
	assert candidate([-100,-50,-25,-12,-6]) == 0
	assert candidate([2,3,5,7,9,11]) == 0
	assert candidate([5,4,3,2,1]) == 4
	assert candidate([2]*10000) == 0
	assert candidate([2,2,2,2,2,2,2]) == 0
	assert candidate([10,5,1,1,1]) == 6
	assert candidate([1,2,2,2,2,2,2,2,2,2,2]) == 0
	assert candidate([1,1,1,1,1]) == 0
	assert candidate([2,3,1]) == 1
	assert candidate([1]*10000) == 0
def test_check():
	check(reversePairs)
# Metadata Difficulty: Hard
# Metadata Topics: array,binary-search,divide-and-conquer,binary-indexed-tree,segment-tree,merge-sort,ordered-set
# Metadata Coverage: 100
