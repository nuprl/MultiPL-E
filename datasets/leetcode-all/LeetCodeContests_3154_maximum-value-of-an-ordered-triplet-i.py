from typing import List

def maximumTripletValue(nums: List[int]) -> int:
    """
    You are given a 0-indexed integer array nums.
    
    Return the maximum value over all triplets of indices (i, j, k) such that i < j < k. If all such triplets have a negative value, return 0.
    
    The value of a triplet of indices (i, j, k) is equal to (nums[i] - nums[j]) * nums[k].
    
    Example 1:
    
    Input: nums = [12,6,1,2,7]
    Output: 77
    Explanation: The value of the triplet (0, 2, 4) is (nums[0] - nums[2]) * nums[4] = 77.
    It can be shown that there are no ordered triplets of indices with a value greater than 77.
    
    Example 2:
    
    Input: nums = [1,10,3,4,19]
    Output: 133
    Explanation: The value of the triplet (1, 2, 4) is (nums[1] - nums[2]) * nums[4] = 133.
    It can be shown that there are no ordered triplets of indices with a value greater than 133.
    
    Example 3:
    
    Input: nums = [1,2,3]
    Output: 0
    Explanation: The only ordered triplet of indices (0, 1, 2) has a negative value of (nums[0] - nums[1]) * nums[2] = -3. Hence, the answer would be 0.
    
    
    Constraints:
    
     * 3 <= nums.length <= 100
     * 1 <= nums[i] <= 106
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([12, 6, 1, 2, 7]) == 77
    assert candidate([1, 10, 3, 4, 19]) == 133
    assert candidate([1, 2, 3]) == 0
    assert candidate([2, 3, 1]) == 0
    assert candidate([5, 7, 8, 4]) == 0
    assert candidate([1000000, 1, 1000000]) == 999999000000
    assert candidate([18, 15, 8, 13, 10, 9, 17, 10, 2, 16, 17]) == 272
    assert candidate([8, 6, 3, 13, 2, 12, 19, 5, 19, 6, 10, 11, 9]) == 266
    assert candidate([6, 11, 12, 12, 7, 9, 2, 11, 12, 4, 19, 14, 16, 8, 16]) == 190
    assert candidate([15, 14, 17, 13, 18, 17, 10, 19, 2, 20, 12, 9]) == 340
    assert candidate([6, 14, 20, 19, 19, 10, 3, 15, 12, 13, 8, 1, 2, 15, 3]) == 285
    assert candidate([2, 7, 19, 4, 8, 20]) == 300
    assert candidate([10, 13, 6, 2]) == 14
    assert candidate([1, 19, 1, 3, 18, 10, 16, 9, 3, 17, 8, 9]) == 324
    assert candidate([16, 2, 10, 20, 16, 2, 13, 8, 19]) == 342
    assert candidate([19, 11, 12, 4, 17, 1, 7, 20, 13, 10, 14, 20, 11, 19, 3]) == 360
    assert candidate([16, 15, 12, 5, 4, 12, 15, 17, 5, 18, 6, 16, 1, 17, 4]) == 289
    assert candidate([8, 10, 17, 11, 2, 8, 13]) == 195
    assert candidate([13, 4, 3, 19, 16, 14, 17, 6, 20, 6, 16, 4]) == 260
    assert candidate([1, 8, 9, 18, 4, 10, 3, 13, 9]) == 195
    assert candidate([10, 10, 5, 19, 2]) == 95
    assert candidate([15, 3, 3, 18, 19, 13, 7, 5, 18, 1, 8, 5]) == 252
    assert candidate([10, 20, 10]) == 0
    assert candidate([14, 9, 4, 20, 9]) == 200
    assert candidate([12, 20, 5, 2, 13, 17, 16, 1, 5, 8, 18, 15, 12]) == 342
    assert candidate([7, 1, 17, 17, 4, 20, 14, 20]) == 260
    assert candidate([16, 19, 8, 8, 5, 18, 12, 16, 8, 14, 14, 7, 19]) == 266
    assert candidate([17, 9, 13, 7, 3, 5]) == 104
    assert candidate([15, 12, 2, 14, 15, 18, 15, 20, 14, 5, 14, 14, 11, 13, 7]) == 260
    assert candidate([17, 20, 17, 13, 5, 12, 8, 12, 14, 10, 14, 20]) == 300
    assert candidate([1, 19, 10]) == 0
    assert candidate([11, 16, 10, 15, 10, 5, 7, 3]) == 90
    assert candidate([5, 14, 19, 12, 2, 5, 18, 3, 20, 12, 1, 11]) == 340
    assert candidate([10, 8, 12, 14]) == 28
    assert candidate([2, 17, 18, 16, 14, 20, 11, 3, 18, 5, 20, 6, 7]) == 340
    assert candidate([19, 12, 3, 19, 2, 18, 3, 12, 9]) == 306
    assert candidate([12, 9, 11, 2, 11, 3, 11, 17, 13, 19]) == 190
    assert candidate([8, 13, 9, 8, 7, 18, 20]) == 120
    assert candidate([20, 8, 12, 1, 7, 8, 3, 3, 6]) == 152
    assert candidate([8, 2, 16, 6, 14, 14, 13, 2, 11, 5, 2, 12, 15, 3, 3]) == 210
    assert candidate([19, 9, 9, 9, 5]) == 90
    assert candidate([19, 10, 5, 13, 6, 9, 5, 15, 19]) == 266
    assert candidate([14, 18, 17, 8, 2, 8, 14]) == 224
    assert candidate([11, 5, 17, 13, 5, 8, 8, 19, 17, 1]) == 228
    assert candidate([18, 12, 18, 14, 17, 19]) == 114
    assert candidate([18, 17, 8, 8, 18, 9]) == 180
    assert candidate([15, 3, 2, 10, 11, 10, 13, 18]) == 234
    assert candidate([17, 17, 5, 10, 19, 1, 16, 3, 1, 19]) == 342
    assert candidate([1, 18, 4, 20, 16]) == 280
    assert candidate([6, 20, 4, 4, 2, 19, 14, 10, 9, 7, 20, 5, 8]) == 360
    assert candidate([5, 14, 15, 18, 2, 9, 15, 13, 11, 16, 12, 20]) == 320
    assert candidate([7, 19, 17]) == 0
    assert candidate([5, 7, 14, 18, 13, 11, 15, 20, 8, 11, 12, 4, 17, 2, 16]) == 288
    assert candidate([4, 12, 7, 2, 8, 6, 9, 5, 4, 1, 8]) == 90
    assert candidate([11, 17, 2, 18, 5]) == 270
    assert candidate([19, 13, 2, 2, 19]) == 323
    assert candidate([14, 11, 7, 6, 2, 20, 16, 14, 4, 12, 1, 9, 16, 7, 10]) == 304
    assert candidate([8, 15, 6, 16, 16, 9, 6, 14, 4]) == 144
    assert candidate([16, 19, 1, 7, 18, 6, 18, 5, 19, 18, 19]) == 342
    assert candidate([16, 14, 11, 2, 17, 9, 10]) == 238
    assert candidate([3, 4, 18, 2, 20, 1, 1, 16, 15, 8, 7, 14, 19, 6]) == 361
    assert candidate([12, 20, 14, 18, 11, 16, 16, 9, 12, 5, 14, 17]) == 255
    assert candidate([12, 19, 2, 9, 6]) == 153
    assert candidate([17, 19, 14, 7, 10, 18]) == 216
    assert candidate([3, 4, 19, 10, 16, 13, 6, 20]) == 260
    assert candidate([11, 6, 8, 9]) == 45
    assert candidate([7, 12, 9, 19, 10, 18, 16, 2, 1, 3, 7, 9, 7, 7]) == 162
    assert candidate([20, 9, 20, 7, 3, 7, 19]) == 323
    assert candidate([10, 11, 3, 3, 3, 2, 9, 8]) == 81
    assert candidate([4, 20, 15, 1, 17, 2, 2, 4, 10, 15, 2, 8, 16, 6]) == 323
    assert candidate([15, 10, 1, 18, 18, 16, 7, 13, 9, 11]) == 252
    assert candidate([10, 6, 17, 11, 15, 15, 18]) == 108
    assert candidate([3, 6, 18]) == 0
    assert candidate([4, 7, 20]) == 0
    assert candidate([16, 12, 5]) == 20
    assert candidate([4, 17, 15, 12, 2, 16, 16, 13, 6, 20, 14, 17, 18, 16]) == 300
    assert candidate([1, 7, 18, 3, 1, 11, 7, 17]) == 289
    assert candidate([18, 16, 10, 2]) == 20
    assert candidate([3, 10, 18, 10, 7, 8]) == 88
    assert candidate([8, 6, 20, 20, 4, 12, 14, 7, 13, 16, 12, 15, 12]) == 256
    assert candidate([5, 19, 11, 18, 19, 14, 8, 11, 4, 10]) == 152
    assert candidate([17, 1, 16]) == 256
    assert candidate([20, 8, 17, 14, 15, 2, 7, 9, 1, 10, 10, 4, 19, 2, 1]) == 361
    assert candidate([9, 16, 16]) == 0
    assert candidate([2, 16, 2, 19, 5, 20, 2, 20, 6, 6]) == 360
    assert candidate([18, 3, 6, 17, 4, 20, 14, 6, 13, 9, 5, 11]) == 300
    assert candidate([12, 2, 19, 15, 4, 3, 18, 6, 11, 9, 9, 6, 15]) == 288
    assert candidate([10, 15, 10, 13, 7, 18, 18, 3, 13, 15, 20, 4, 6, 15]) == 300
    assert candidate([10, 15, 4, 19, 6, 17, 7, 10, 4, 12, 14, 16, 9, 14]) == 240
    assert candidate([17, 6, 3, 8, 13]) == 182
    assert candidate([6, 18, 8, 8, 16, 14, 7, 18]) == 198
    assert candidate([7, 7, 2, 19, 16, 11, 3, 15, 3, 15, 16, 17]) == 272
    assert candidate([9, 3, 3, 12, 9, 12, 5, 7, 6, 2, 9, 9, 14, 9, 5]) == 140
    assert candidate([19, 14, 15, 1, 20, 10, 20, 4, 10, 20, 15, 15, 2, 7]) == 360
    assert candidate([17, 4, 10, 16, 8, 20, 4, 9, 11, 15, 2, 7]) == 260
    assert candidate([3, 8, 17, 10, 10, 20, 20, 8, 14, 20, 1, 10, 1]) == 240
    assert candidate([3, 4, 11, 18, 10, 19, 9, 11, 14, 11, 18, 15, 17, 19, 3]) == 190
    assert candidate([18, 10, 5, 16, 13, 1, 19, 10, 17, 14, 14, 20]) == 340
    assert candidate([18, 3, 16, 14, 15, 9, 13, 2, 3]) == 240
    assert candidate([2, 6, 19, 10, 19, 14, 18, 8, 3, 2]) == 171


def test_check():
    check(maximumTripletValue)


### Metadata below ###
# question_id = 3154
# question_title = Maximum Value of an Ordered Triplet I
# question_title_slug = maximum-value-of-an-ordered-triplet-i
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 130
# question_dislikes = 10