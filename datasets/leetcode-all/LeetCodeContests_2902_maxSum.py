from typing import List

def maxSum(nums: List[int]) -> int:
    """
    You are given a 0-indexed integer array nums. You have to find the maximum sum of a pair of numbers from nums such that the maximum digit in both numbers are equal.
    
    Return the maximum sum or -1 if no such pair exists.
    
    Example 1:
    
    Input: nums = [51,71,17,24,42]
    Output: 88
    Explanation:
    For i = 1 and j = 2, nums[i] and nums[j] have equal maximum digits with a pair sum of 71 + 17 = 88.
    For i = 3 and j = 4, nums[i] and nums[j] have equal maximum digits with a pair sum of 24 + 42 = 66.
    It can be shown that there are no other pairs with equal maximum digits, so the answer is 88.
    
    Example 2:
    
    Input: nums = [1,2,3,4]
    Output: -1
    Explanation: No pair exists in nums with equal maximum digits.
    
    
    Constraints:
    
     * 2 <= nums.length <= 100
     * 1 <= nums[i] <= 104
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([51, 71, 17, 24, 42]) == 88
    assert candidate([1, 2, 3, 4]) == -1
    assert candidate([31, 25, 72, 79, 74]) == 146
    assert candidate([84, 91, 18, 59, 27, 9, 81, 33, 17, 58]) == 165
    assert candidate([8, 75, 28, 35, 21, 13, 21]) == 42
    assert candidate([35, 52, 74, 92, 25, 65, 77, 1, 73, 32]) == 151
    assert candidate([68, 8, 100, 84, 80, 14, 88]) == 172
    assert candidate([53, 98, 69, 64, 40, 60, 23]) == 167
    assert candidate([21, 76]) == -1
    assert candidate([99, 63, 23, 70, 18, 64]) == 127
    assert candidate([21, 21, 78]) == 42
    assert candidate([58, 88, 58, 99, 26, 92]) == 191
    assert candidate([10, 24, 25, 20, 92, 73, 63, 51]) == 76
    assert candidate([87, 6, 17, 32, 14, 42, 46, 65, 43, 9]) == 111
    assert candidate([96, 46, 85, 19, 29]) == 125
    assert candidate([5, 24]) == -1
    assert candidate([26, 76, 24, 96, 82, 97, 97, 72, 35]) == 194
    assert candidate([77, 82, 30, 94]) == -1
    assert candidate([76, 94, 51, 82, 3, 89, 52, 96]) == 190
    assert candidate([27, 59, 57, 97, 6, 46, 88, 41, 52, 46]) == 156
    assert candidate([17, 2]) == -1
    assert candidate([62, 69]) == -1
    assert candidate([63, 24, 1]) == -1
    assert candidate([55, 46, 4, 61, 78, 21, 85, 52, 83, 77]) == 168
    assert candidate([21, 73, 2, 80, 99, 98, 89]) == 197
    assert candidate([94, 63, 50, 43, 62, 14, 83, 91]) == 185
    assert candidate([66, 17, 17, 35, 46, 77, 7, 15, 38]) == 112
    assert candidate([61, 90, 34, 29, 68, 35]) == 119
    assert candidate([18, 82, 78]) == 160
    assert candidate([8, 71, 2, 59, 70, 12]) == 141
    assert candidate([55, 88, 59]) == -1
    assert candidate([49, 47, 46, 65, 37, 24, 75, 81, 54, 39]) == 122
    assert candidate([73, 79, 48, 45, 57, 73, 51, 78, 67, 78]) == 156
    assert candidate([2, 82, 80, 74, 34, 54, 65]) == 162
    assert candidate([9, 62, 85, 95, 36, 62, 21, 38, 16, 12]) == 124
    assert candidate([50, 80, 34, 9, 86, 20, 67, 94, 65, 82]) == 168
    assert candidate([79, 74, 92, 84, 37, 19]) == 171
    assert candidate([85, 20, 79]) == -1
    assert candidate([89, 55, 67, 84, 3]) == -1
    assert candidate([16, 44, 2, 54, 58, 94]) == -1
    assert candidate([71, 14, 24, 13, 21, 14, 100, 18, 84, 37]) == 108
    assert candidate([13, 26]) == -1
    assert candidate([82, 30, 53, 72, 56, 94, 72, 67]) == 144
    assert candidate([14, 80, 92, 65, 85, 70]) == 165
    assert candidate([81, 39, 43, 31, 53, 43, 87, 19, 93]) == 168
    assert candidate([27, 12, 80, 38, 94, 92, 67, 54, 56, 20]) == 186
    assert candidate([52, 32, 24, 6, 3, 89, 100, 3, 5, 3]) == 57
    assert candidate([93, 1, 13, 88, 47, 48, 46, 63]) == 136
    assert candidate([3, 55, 40, 93, 97, 37, 31, 31]) == 190
    assert candidate([58, 41, 10, 74, 40, 17]) == 91
    assert candidate([58, 33, 78, 53, 88, 1, 15, 44, 82]) == 170
    assert candidate([41, 48, 96, 71, 35, 89, 57, 71]) == 185
    assert candidate([43, 4, 69, 29, 37, 50]) == 98
    assert candidate([65, 88, 2]) == -1
    assert candidate([86, 42, 59, 44, 76, 6]) == 86
    assert candidate([29, 96, 1, 10, 27, 78, 56, 62]) == 125
    assert candidate([100, 48, 6]) == -1
    assert candidate([33, 17]) == -1
    assert candidate([8, 91]) == -1
    assert candidate([91, 13, 72, 42, 28]) == -1
    assert candidate([5, 53, 35, 88, 77, 1, 66, 57]) == 134
    assert candidate([50, 27, 52, 70, 67, 60, 65]) == 137
    assert candidate([84, 82, 31, 45, 94, 62, 45, 32]) == 166
    assert candidate([61, 61, 61, 23, 47, 34, 21, 6, 65, 25]) == 126
    assert candidate([60, 21, 11, 99]) == -1
    assert candidate([22, 83, 62, 12, 63, 100, 41, 33]) == 125
    assert candidate([92, 58, 85]) == 143
    assert candidate([93, 5, 46, 26, 25, 36, 27, 12, 30]) == 82
    assert candidate([52, 30, 16]) == -1
    assert candidate([22, 57, 33, 26, 76, 14, 67]) == 143
    assert candidate([90, 72, 37, 30]) == 109
    assert candidate([44, 87, 16]) == -1
    assert candidate([19, 12, 52, 8, 3, 58]) == 66
    assert candidate([88, 52, 35, 6, 58, 47, 62, 82, 47, 86]) == 174
    assert candidate([84, 1, 48, 76, 16, 10, 11, 60]) == 132
    assert candidate([12, 60, 69, 63, 78, 22, 28]) == 123
    assert candidate([16, 28, 82, 77, 41, 22]) == 110
    assert candidate([97, 31, 63, 2, 94, 14, 47]) == 191
    assert candidate([93, 100, 45, 74, 31, 41, 84, 90, 18, 21]) == 183
    assert candidate([21, 12, 38, 64, 57, 24]) == 33
    assert candidate([33, 17, 99, 2, 58, 59, 72, 9, 62]) == 158
    assert candidate([36, 11, 23, 98, 14, 89, 90, 53]) == 188
    assert candidate([57, 90, 5, 78, 84, 51]) == 162
    assert candidate([73, 73, 76, 48, 30]) == 149
    assert candidate([2, 74, 37, 75]) == 149
    assert candidate([84, 35, 65, 12]) == -1
    assert candidate([95, 46, 23, 81, 35]) == -1
    assert candidate([64, 76, 46, 54, 64, 94, 90, 95]) == 189
    assert candidate([77, 52, 74, 84, 47, 89, 53]) == 151
    assert candidate([29, 31, 52, 12, 89, 88, 10, 18]) == 118
    assert candidate([28, 57, 28, 41, 25, 89, 20]) == 56
    assert candidate([31, 28]) == -1
    assert candidate([51, 1, 98, 73, 84, 11, 100, 100, 75]) == 200
    assert candidate([76, 2, 26, 49, 78, 36, 2, 70, 64]) == 146
    assert candidate([34, 63, 21, 49]) == -1
    assert candidate([35, 19, 1, 21, 11, 59, 38]) == 78
    assert candidate([1, 35, 74, 58, 56, 54, 75]) == 149
    assert candidate([20, 49]) == -1
    assert candidate([97, 92, 13, 30]) == 189
    assert candidate([89, 49, 10, 36, 37]) == 138


def test_check():
    check(maxSum)


### Metadata below ###
# question_id = 2902
# question_title = Max Pair Sum in an Array
# question_title_slug = max-pair-sum-in-an-array
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 274
# question_dislikes = 91