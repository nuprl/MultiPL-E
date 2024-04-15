from typing import List

def sumIndicesWithKSetBits(nums: List[int], k: int) -> int:
    """
    You are given a 0-indexed integer array nums and an integer k.
    
    Return an integer that denotes the sum of elements in nums whose corresponding indices have exactly k set bits in their binary representation.
    
    The set bits in an integer are the 1's present when it is written in binary.
    
     * For example, the binary representation of 21 is 10101, which has 3 set bits.
    
    Example 1:
    
    Input: nums = [5,10,1,5,2], k = 1
    Output: 13
    Explanation: The binary representation of the indices are:
    0 = 0002
    1 = 0012
    2 = 0102
    3 = 0112
    4 = 1002
    Indices 1, 2, and 4 have k = 1 set bits in their binary representation.
    Hence, the answer is nums[1] + nums[2] + nums[4] = 13.
    
    Example 2:
    
    Input: nums = [4,3,2,1], k = 2
    Output: 1
    Explanation: The binary representation of the indices are:
    0 = 002
    1 = 012
    2 = 102
    3 = 112
    Only index 3 has k = 2 set bits in its binary representation.
    Hence, the answer is nums[3] = 1.
    
    
    Constraints:
    
     * 1 <= nums.length <= 1000
     * 1 <= nums[i] <= 105
     * 0 <= k <= 10
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([5, 10, 1, 5, 2], 1) == 13
    assert candidate([4, 3, 2, 1], 2) == 1
    assert candidate([1], 0) == 1
    assert candidate([100000], 0) == 100000
    assert candidate([2, 2], 1) == 2
    assert candidate([2, 4], 1) == 4
    assert candidate([2, 7], 1) == 7
    assert candidate([3, 3], 1) == 3
    assert candidate([3, 9], 1) == 9
    assert candidate([4, 7], 1) == 7
    assert candidate([4, 8], 1) == 8
    assert candidate([6, 6], 1) == 6
    assert candidate([7, 2], 1) == 2
    assert candidate([7, 4], 1) == 4
    assert candidate([8, 4], 1) == 4
    assert candidate([8, 9], 1) == 9
    assert candidate([9, 9], 1) == 9
    assert candidate([15, 43], 1) == 43
    assert candidate([35, 86], 1) == 86
    assert candidate([36, 14], 1) == 14
    assert candidate([47, 61], 1) == 61
    assert candidate([60, 46], 1) == 46
    assert candidate([70, 7], 1) == 7
    assert candidate([1, 51, 55], 1) == 106
    assert candidate([2, 2, 5], 1) == 7
    assert candidate([2, 3, 2], 1) == 5
    assert candidate([3, 2, 5], 1) == 7
    assert candidate([3, 7, 5], 1) == 12
    assert candidate([4, 5, 9], 1) == 14
    assert candidate([5, 5, 5], 1) == 10
    assert candidate([5, 7, 7], 1) == 14
    assert candidate([6, 2, 1], 1) == 3
    assert candidate([6, 9, 8], 1) == 17
    assert candidate([7, 1, 2], 1) == 3
    assert candidate([7, 9, 1], 1) == 10
    assert candidate([8, 5, 4], 1) == 9
    assert candidate([9, 1, 6], 1) == 7
    assert candidate([9, 3, 5], 1) == 8
    assert candidate([57, 48, 69], 1) == 117
    assert candidate([78, 37, 59], 1) == 96
    assert candidate([96, 71, 53], 1) == 124
    assert candidate([900, 914, 367], 1) == 1281
    assert candidate([1, 4, 9, 2], 2) == 2
    assert candidate([1, 5, 9, 5], 2) == 5
    assert candidate([1, 8, 5, 6], 1) == 13
    assert candidate([2, 2, 1, 2], 1) == 3
    assert candidate([2, 4, 5, 2], 2) == 2
    assert candidate([2, 5, 8, 1], 1) == 13
    assert candidate([2, 7, 3, 9], 1) == 10
    assert candidate([3, 5, 4, 2], 2) == 2
    assert candidate([4, 1, 6, 3], 2) == 3
    assert candidate([6, 3, 8, 8], 2) == 8
    assert candidate([6, 6, 1, 4], 2) == 4
    assert candidate([7, 1, 9, 6], 2) == 6
    assert candidate([7, 5, 2, 1], 1) == 7
    assert candidate([7, 5, 3, 4], 1) == 8
    assert candidate([7, 8, 6, 2], 1) == 14
    assert candidate([8, 3, 9, 8], 2) == 8
    assert candidate([8, 7, 3, 2], 2) == 2
    assert candidate([9, 4, 2, 2], 1) == 6
    assert candidate([9, 6, 8, 8], 1) == 14
    assert candidate([9, 7, 8, 9], 2) == 9
    assert candidate([9, 40, 73, 19], 2) == 19
    assert candidate([41, 51, 58, 2], 1) == 109
    assert candidate([44, 96, 36, 56], 2) == 56
    assert candidate([1, 1, 3, 1, 6], 2) == 1
    assert candidate([2, 1, 1, 3, 5], 1) == 7
    assert candidate([2, 5, 4, 3, 1], 2) == 3
    assert candidate([3, 2, 7, 1, 5], 1) == 14
    assert candidate([4, 2, 8, 8, 2], 2) == 8
    assert candidate([4, 3, 7, 8, 8], 2) == 8
    assert candidate([4, 6, 2, 2, 7], 1) == 15
    assert candidate([4, 7, 5, 1, 1], 2) == 1
    assert candidate([5, 6, 6, 6, 3], 1) == 15
    assert candidate([6, 4, 8, 4, 2], 2) == 4
    assert candidate([7, 7, 9, 5, 8], 1) == 24
    assert candidate([7, 9, 1, 3, 2], 2) == 3
    assert candidate([8, 5, 6, 9, 7], 2) == 9
    assert candidate([8, 6, 9, 4, 4], 2) == 4
    assert candidate([8, 8, 2, 9, 2], 1) == 12
    assert candidate([9, 3, 7, 9, 6], 1) == 16
    assert candidate([9, 5, 5, 5, 5], 1) == 15
    assert candidate([27, 73, 37, 82, 78], 1) == 188
    assert candidate([36, 28, 94, 49, 79], 2) == 49
    assert candidate([48, 54, 75, 72, 77], 1) == 206
    assert candidate([574, 419, 838, 216, 442], 1) == 1699
    assert candidate([1, 1, 1, 2, 5, 7], 2) == 9
    assert candidate([2, 6, 6, 8, 6, 4], 2) == 12
    assert candidate([2, 8, 2, 9, 2, 8], 2) == 17
    assert candidate([2, 9, 1, 6, 5, 7], 2) == 13
    assert candidate([2, 9, 1, 6, 6, 7], 2) == 13
    assert candidate([3, 5, 4, 5, 8, 9], 1) == 17
    assert candidate([5, 5, 3, 7, 9, 7], 1) == 17
    assert candidate([5, 9, 4, 8, 7, 2], 2) == 10
    assert candidate([5, 9, 6, 6, 4, 5], 2) == 11
    assert candidate([6, 4, 7, 8, 4, 7], 2) == 15
    assert candidate([6, 8, 6, 2, 7, 3], 2) == 5
    assert candidate([7, 2, 5, 4, 4, 4], 1) == 11
    assert candidate([7, 2, 9, 7, 8, 7], 2) == 14
    assert candidate([7, 6, 6, 7, 6, 1], 2) == 8


def test_check():
    check(sumIndicesWithKSetBits)


### Metadata below ###
# question_id = 3093
# question_title = Sum of Values at Indices With K Set Bits
# question_title_slug = sum-of-values-at-indices-with-k-set-bits
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 154
# question_dislikes = 16