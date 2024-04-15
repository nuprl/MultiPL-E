from typing import List

def findKOr(nums: List[int], k: int) -> int:
    """
    You are given a 0-indexed integer array nums, and an integer k.
    
    The K-or of nums is a non-negative integer that satisfies the following:
    
     * The ith bit is set in the K-or if and only if there are at least k elements of nums in which bit i is set.
    
    Return the K-or of nums.
    
    Note that a bit i is set in x if (2i AND x) == 2i, where AND is the bitwise AND operator.
    
    Example 1:
    
    Input: nums = [7,12,9,8,9,15], k = 4
    Output: 9
    Explanation: Bit 0 is set at nums[0], nums[2], nums[4], and nums[5].
    Bit 1 is set at nums[0], and nums[5].
    Bit 2 is set at nums[0], nums[1], and nums[5].
    Bit 3 is set at nums[1], nums[2], nums[3], nums[4], and nums[5].
    Only bits 0 and 3 are set in at least k elements of the array, and bits i >= 4 are not set in any of the array's elements. Hence, the answer is 2^0 + 2^3 = 9.
    
    Example 2:
    
    Input: nums = [2,12,1,11,4,5], k = 6
    Output: 0
    Explanation: Since k == 6 == nums.length, the 6-or of the array is equal to the bitwise AND of all its elements. Hence, the answer is 2 AND 12 AND 1 AND 11 AND 4 AND 5 = 0.
    
    Example 3:
    
    Input: nums = [10,8,5,9,11,6,8], k = 1
    Output: 15
    Explanation: Since k == 1, the 1-or of the array is equal to the bitwise OR of all its elements. Hence, the answer is 10 OR 8 OR 5 OR 9 OR 11 OR 6 OR 8 = 15.
    
    
    Constraints:
    
     * 1 <= nums.length <= 50
     * 0 <= nums[i] < 231
     * 1 <= k <= nums.length
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([7, 12, 9, 8, 9, 15], 4) == 9
    assert candidate([2, 12, 1, 11, 4, 5], 6) == 0
    assert candidate([10, 8, 5, 9, 11, 6, 8], 1) == 15
    assert candidate([14, 7, 12, 9, 8, 9, 1, 15], 4) == 13
    assert candidate([2, 12, 1, 11, 4, 5], 3) == 5
    assert candidate([10, 8, 5, 10, 11, 11, 6, 8], 1) == 15
    assert candidate([0], 1) == 0
    assert candidate([1], 1) == 1
    assert candidate([2], 1) == 2
    assert candidate([3], 1) == 3
    assert candidate([4], 1) == 4
    assert candidate([5], 1) == 5
    assert candidate([6], 1) == 6
    assert candidate([7], 1) == 7
    assert candidate([8], 1) == 8
    assert candidate([9], 1) == 9
    assert candidate([10], 1) == 10
    assert candidate([11], 1) == 11
    assert candidate([12], 1) == 12
    assert candidate([13], 1) == 13
    assert candidate([14], 1) == 14
    assert candidate([15], 1) == 15
    assert candidate([16], 1) == 16
    assert candidate([17], 1) == 17
    assert candidate([18], 1) == 18
    assert candidate([19], 1) == 19
    assert candidate([20], 1) == 20
    assert candidate([21], 1) == 21
    assert candidate([22], 1) == 22
    assert candidate([23], 1) == 23
    assert candidate([24], 1) == 24
    assert candidate([25], 1) == 25
    assert candidate([26], 1) == 26
    assert candidate([27], 1) == 27
    assert candidate([28], 1) == 28
    assert candidate([29], 1) == 29
    assert candidate([30], 1) == 30
    assert candidate([31], 1) == 31
    assert candidate([22, 7, 27, 30, 15, 30, 28], 4) == 30
    assert candidate([24, 18, 3, 23, 16, 11, 27, 18, 5, 29], 6) == 19
    assert candidate([14, 1, 2, 28, 4, 15, 3, 12], 2) == 15
    assert candidate([7, 18, 25, 11, 2], 5) == 0
    assert candidate([0, 4], 2) == 0
    assert candidate([17, 5, 14, 16, 24, 30, 3, 19, 31], 1) == 31
    assert candidate([14, 20, 23, 7, 1, 12, 24, 19], 7) == 0
    assert candidate([5, 31, 29, 22, 8, 6, 23], 4) == 23
    assert candidate([9, 10, 30, 0, 7, 19, 14, 19, 20, 3], 4) == 31
    assert candidate([25, 6, 5, 30, 27, 11, 10, 30], 2) == 31
    assert candidate([0, 15, 16, 6, 19, 5, 24, 17], 3) == 23
    assert candidate([19, 8, 2, 28, 4, 5], 5) == 0
    assert candidate([13, 9, 1, 15, 9, 2, 19, 19], 3) == 11
    assert candidate([16, 6, 16, 22, 8, 2, 25, 30], 1) == 31
    assert candidate([14, 28, 23, 22], 2) == 30
    assert candidate([6, 26], 2) == 2
    assert candidate([14, 9, 22, 30, 15], 4) == 14
    assert candidate([12, 13, 16, 25, 12, 4, 8, 29], 6) == 8
    assert candidate([27, 29], 2) == 25
    assert candidate([9, 27, 27, 20, 24, 13, 25, 8], 6) == 8
    assert candidate([22, 26, 18, 26, 1], 1) == 31
    assert candidate([20, 20, 31, 19, 29, 19], 2) == 31
    assert candidate([5, 8, 27, 23, 3], 2) == 31
    assert candidate([4, 23, 0, 20, 4, 19, 14, 22, 26, 2], 9) == 0
    assert candidate([31, 26, 21, 4, 9, 11, 13, 24, 23, 5], 10) == 0
    assert candidate([4, 22], 2) == 4
    assert candidate([22, 17, 20, 3, 21, 5, 20, 25, 16], 4) == 21
    assert candidate([16, 15, 13, 26, 15, 23, 0, 12], 4) == 15
    assert candidate([4, 11, 14], 1) == 15
    assert candidate([10, 26, 27, 25, 3, 21, 9, 3, 22], 8) == 0
    assert candidate([4, 11, 16], 2) == 0
    assert candidate([9, 27, 19, 9, 24, 11], 3) == 27
    assert candidate([29, 19, 27, 14], 1) == 31
    assert candidate([27, 31, 21, 8, 25], 2) == 31
    assert candidate([14, 1, 13, 22, 27], 5) == 0
    assert candidate([14, 15, 17, 23, 29], 1) == 31
    assert candidate([19, 21], 2) == 17
    assert candidate([29, 9, 18, 0, 30, 5, 1, 9], 1) == 31
    assert candidate([6, 31, 11, 7, 6, 2, 26, 19, 17, 13], 10) == 0
    assert candidate([15, 8, 27, 28], 1) == 31
    assert candidate([28, 24, 20, 31, 23, 1], 2) == 31
    assert candidate([8, 13, 27, 24, 20, 28, 15, 21, 23, 6], 9) == 0
    assert candidate([31, 6], 2) == 6
    assert candidate([3, 14, 11, 17, 9], 1) == 31
    assert candidate([14, 11], 2) == 10
    assert candidate([2, 9, 11, 25, 3, 2, 26, 21, 13, 11], 1) == 31
    assert candidate([26, 7, 23, 0, 16, 31, 12, 18, 24], 4) == 30
    assert candidate([11, 30, 30, 17, 10, 27, 6, 31, 0], 4) == 31
    assert candidate([11, 9, 18, 30, 27, 20, 2, 17, 18, 4], 2) == 31
    assert candidate([2, 1, 0, 30, 29, 14, 13, 26, 10, 22], 10) == 0
    assert candidate([21, 30, 30, 17, 23, 8, 26, 9], 6) == 16
    assert candidate([16, 10], 1) == 26
    assert candidate([26, 12, 19, 22, 5, 6, 19, 30, 24, 11], 10) == 0
    assert candidate([20, 10, 14], 2) == 14
    assert candidate([23, 17, 18, 30, 3], 1) == 31
    assert candidate([13, 16, 12], 1) == 29
    assert candidate([17, 12, 5, 13, 23, 19], 3) == 21
    assert candidate([5, 4, 3], 2) == 5
    assert candidate([6, 28, 1, 3, 2], 1) == 31
    assert candidate([28, 3, 15, 30, 10, 29], 4) == 14
    assert candidate([0, 31, 13, 24, 16, 21], 3) == 29
    assert candidate([11, 20, 28, 29, 3, 4], 2) == 31


def test_check():
    check(findKOr)


### Metadata below ###
# question_id = 3183
# question_title = Find the K-or of an Array
# question_title_slug = find-the-k-or-of-an-array
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 55
# question_dislikes = 201