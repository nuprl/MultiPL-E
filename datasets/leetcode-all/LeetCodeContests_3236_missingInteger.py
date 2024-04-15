from typing import List

def missingInteger(nums: List[int]) -> int:
    """
    You are given a 0-indexed array of integers nums.
    A prefix nums[0..i] is sequential if, for all 1 <= j <= i, nums[j] = nums[j - 1] + 1. In particular, the prefix consisting only of nums[0] is sequential.
    Return the smallest integer x missing from nums such that x is greater than or equal to the sum of the longest sequential prefix.
    
    Example 1:
    
    Input: nums = [1,2,3,2,5]
    Output: 6
    Explanation: The longest sequential prefix of nums is [1,2,3] with a sum of 6. 6 is not in the array, therefore 6 is the smallest missing integer greater than or equal to the sum of the longest sequential prefix.
    
    Example 2:
    
    Input: nums = [3,4,5,1,12,14,13]
    Output: 15
    Explanation: The longest sequential prefix of nums is [3,4,5] with a sum of 12. 12, 13, and 14 belong to the array while 15 does not. Therefore 15 is the smallest missing integer greater than or equal to the sum of the longest sequential prefix.
    
    
    Constraints:
    
    1 <= nums.length <= 50
    1 <= nums[i] <= 50
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 2, 5]) == 6
    assert candidate([3, 4, 5, 1, 12, 14, 13]) == 15
    assert candidate([29, 30, 31, 32, 33, 34, 35, 36, 37]) == 297
    assert candidate([19, 20, 21, 22]) == 82
    assert candidate([18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 9]) == 253
    assert candidate([4, 5, 6, 7, 8, 8, 9, 4, 3, 2, 7]) == 30
    assert candidate([38]) == 39
    assert candidate([1]) == 2
    assert candidate([11, 12, 13]) == 36
    assert candidate([47, 48, 49, 5, 3]) == 144
    assert candidate([23, 24, 25, 4, 5, 1]) == 72
    assert candidate([8, 9, 10, 10, 7, 8]) == 27
    assert candidate([31, 32, 33, 34, 10, 8, 7, 9, 7, 9, 9, 5, 10, 1]) == 130
    assert candidate([17, 18, 19, 20, 21, 22, 3, 7, 10, 10]) == 117
    assert candidate([6, 7, 8, 9, 10, 8, 6, 7, 4, 1]) == 40
    assert candidate([46, 8, 2, 4, 1, 4, 10, 2, 4, 10, 2, 5, 7, 3, 1]) == 47
    assert candidate([37, 1, 2, 9, 5, 8, 5, 2, 9, 4]) == 38
    assert candidate([31, 32, 33, 34, 1]) == 130
    assert candidate([45, 46, 47, 48, 49, 10, 8, 1, 7, 4, 10, 10, 6, 6, 2]) == 235
    assert candidate([13, 10, 7, 5, 7, 10, 6, 10, 2]) == 14
    assert candidate([32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 8, 6]) == 494
    assert candidate([24, 8, 9]) == 25
    assert candidate([47, 48, 49, 9, 3, 8, 1, 9, 2, 5, 4, 5, 9]) == 144
    assert candidate([4, 5, 6, 7, 8, 9, 4, 7, 10, 7, 2]) == 39
    assert candidate([28, 29]) == 57
    assert candidate([40, 41, 42, 3, 8, 2, 7, 1, 4]) == 123
    assert candidate([17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 9, 2, 5]) == 242
    assert candidate([43, 44]) == 87
    assert candidate([19, 20, 5, 3, 10]) == 39
    assert candidate([5]) == 6
    assert candidate([14, 15]) == 29
    assert candidate([47, 48, 49]) == 144
    assert candidate([10]) == 11
    assert candidate([39]) == 40
    assert candidate([11, 12, 13, 14, 15, 7, 5, 2, 10, 5, 6]) == 65
    assert candidate([3, 4, 5, 7, 9, 8, 1, 3, 4, 9]) == 12
    assert candidate([29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]) == 455
    assert candidate([24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 6, 4, 1]) == 354
    assert candidate([7, 8, 9, 10, 11, 12, 13, 14, 15]) == 99
    assert candidate([39, 40, 41, 42, 43, 44, 45, 8, 10, 4]) == 294
    assert candidate([36, 37, 6, 8]) == 73
    assert candidate([27, 28, 29, 30]) == 114
    assert candidate([34, 35, 5, 7]) == 69
    assert candidate([9, 8, 6, 1]) == 10
    assert candidate([36, 37, 38, 39, 8, 10, 7]) == 150
    assert candidate([28, 29, 6]) == 57
    assert candidate([14, 15, 16, 17, 18, 19, 20, 10, 9, 10, 9, 7, 3, 6]) == 119
    assert candidate([27, 28, 29, 5]) == 84
    assert candidate([42, 43, 44, 45, 46, 47, 48]) == 315
    assert candidate([2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 10, 5, 6]) == 65
    assert candidate([32, 33, 34, 35, 36, 37, 5, 8, 5, 3, 4, 2, 10, 3, 7]) == 207
    assert candidate([24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 1, 3, 9]) == 285
    assert candidate([48, 49]) == 97
    assert candidate([46, 47, 6, 7, 1]) == 93
    assert candidate([32, 33, 34, 35, 36, 37, 38, 39, 40]) == 324
    assert candidate([40, 41, 42, 43, 44, 45, 6]) == 255
    assert candidate([5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 9]) == 161
    assert candidate([39, 40, 41, 3, 4, 7, 10, 6, 2, 10, 1, 9]) == 120
    assert candidate([17, 18]) == 35
    assert candidate([41, 42, 43, 44, 45, 46, 5, 6]) == 261
    assert candidate([6]) == 7
    assert candidate([46, 47, 48, 49, 50, 7]) == 240
    assert candidate([17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 4, 7, 5, 4, 4]) == 215
    assert candidate([40, 41, 42, 43, 44, 45, 46, 4, 6]) == 301
    assert candidate([13, 4, 2, 2, 3, 4, 1, 8, 3, 7, 7, 7, 1, 6, 3]) == 14
    assert candidate([4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 6, 8]) == 130
    assert candidate([12, 10]) == 13
    assert candidate([17, 18, 19, 20, 21, 5, 3, 7, 10, 5, 3, 7, 3, 5, 3]) == 95
    assert candidate([38, 39, 40, 41, 42, 43, 44, 45, 5, 7, 9, 9, 4, 1]) == 332
    assert candidate([32, 33, 34, 35]) == 134
    assert candidate([33, 34, 7, 3, 4, 4]) == 67
    assert candidate([33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47]) == 600
    assert candidate([14, 9, 6, 9, 7, 9, 10, 4, 9, 9, 4, 4]) == 15
    assert candidate([18, 19, 20, 21, 22, 23, 24, 25, 26, 6, 8, 2, 1]) == 198
    assert candidate([19, 20, 21, 7, 9]) == 60
    assert candidate([19, 20, 21, 10, 1, 8, 2, 1]) == 60
    assert candidate([1, 2, 3, 9, 2, 10, 8, 3, 10, 2]) == 6
    assert candidate([48, 10]) == 49
    assert candidate([20, 21, 22, 23, 24, 25, 5]) == 135
    assert candidate([40, 41, 42, 43, 3, 4, 10, 3, 7, 8, 9, 1, 5]) == 166
    assert candidate([21, 22, 23, 24, 25, 26, 27, 8]) == 168
    assert candidate([2, 3, 4, 5, 6, 4]) == 20
    assert candidate([9, 10, 11, 12, 13, 14, 15, 16, 17, 4]) == 117
    assert candidate([25, 26, 27, 28, 29, 6, 8]) == 135
    assert candidate([16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 6]) == 205
    assert candidate([7, 8, 9, 10, 11, 12]) == 57
    assert candidate([32, 9, 2, 6, 4, 1, 4, 3, 5]) == 33
    assert candidate([1, 4, 3]) == 2
    assert candidate([34, 35, 36, 37, 38, 39, 1, 9, 3, 3, 10, 7, 1]) == 219
    assert candidate([37, 7, 6, 4, 3, 1, 10, 8, 7, 2, 6]) == 38
    assert candidate([32]) == 33
    assert candidate([25, 26, 27, 4]) == 78
    assert candidate([31, 32, 33, 8, 5, 3, 7, 2]) == 96
    assert candidate([38, 39, 40, 41, 42, 43, 44, 45, 1]) == 332
    assert candidate([35, 36, 3, 10]) == 71
    assert candidate([31, 32, 33, 34, 35, 7, 6, 1, 9]) == 165
    assert candidate([47, 48, 49, 2, 2]) == 144
    assert candidate([3, 4, 5, 6, 7, 8, 9, 10, 11, 10, 1]) == 63
    assert candidate([50]) == 51
    assert candidate([14, 15, 16, 17, 7, 10, 3, 10]) == 62


def test_check():
    check(missingInteger)


### Metadata below ###
# question_id = 3236
# question_title = Smallest Missing Integer Greater Than Sequential Prefix Sum
# question_title_slug = smallest-missing-integer-greater-than-sequential-prefix-sum
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 41
# question_dislikes = 122