from typing import List


def countRangeSum(nums: List[int], lower: int, upper: int) -> int:
    """
    Given an integer array nums and two integers lower and upper, return the number of range sums that lie in [lower, upper] inclusive.
    Range sum S(i, j) is defined as the sum of the elements in nums between indices i and j inclusive, where i <= j.
 
    Example 1:

    Input: nums = [-2,5,-1], lower = -2, upper = 2
    Output: 3
    Explanation: The three ranges are: [0,0], [2,2], and [0,2] and their respective sums are: -2, -1, 2.

    Example 2:

    Input: nums = [0], lower = 0, upper = 0
    Output: 1

 
    Constraints:

    1 <= nums.length <= 105
    -231 <= nums[i] <= 231 - 1
    -105 <= lower <= upper <= 105
    The answer is guaranteed to fit in a 32-bit integer.

    """
    ### Canonical solution below ###
    sums = [0] * (len(nums) + 1)
    for i in range(len(nums)):
        sums[i + 1] = sums[i] + nums[i]

    def mergeSort(start, end):
        if start == end:
            return 0
        mid = start + (end - start) // 2
        count = mergeSort(start, mid) + mergeSort(mid + 1, end)

        j, k = mid + 1, mid + 1
        for i in range(start, mid + 1):
            while j <= end and sums[j] - sums[i] < lower:
                j += 1
            while k <= end and sums[k] - sums[i] <= upper:
                k += 1
            count += k - j

        sums[start:end + 1] = sorted(sums[start:end + 1])
        return count

    return mergeSort(0, len(nums))




### Unit tests below ###
def check(candidate):
	assert candidate([-2,5,-1], -10, 10) == 6
	assert candidate(list(range(50)), 0, 0) == 1
	assert candidate([10, -10, 20, -20, 30, -30], -50, 50) == 21
	assert candidate([1,2,3,4,5], 3, 3) == 2
	assert candidate([0], 0, 0) == 1
	assert candidate([1,3,5,7,9], 4, 6) == 2
	assert candidate([10, -10, 20, -20, 30, -30], -30, 30) == 21
	assert candidate([-2,5,-1], -2, 2) == 3
def test_check():
	check(countRangeSum)
# Metadata Difficulty: Hard
# Metadata Topics: array,binary-search,divide-and-conquer,binary-indexed-tree,segment-tree,merge-sort,ordered-set
# Metadata Coverage: 100
