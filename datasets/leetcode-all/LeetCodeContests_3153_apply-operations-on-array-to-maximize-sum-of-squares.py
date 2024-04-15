from typing import List

def maxSum(nums: List[int], k: int) -> int:
    """
    You are given a 0-indexed integer array nums and a positive integer k.
    
    You can do the following operation on the array any number of times:
    
     * Choose any two distinct indices i and j and simultaneously update the values of nums[i] to (nums[i] AND nums[j]) and nums[j] to (nums[i] OR nums[j]). Here, OR denotes the bitwise OR operation, and AND denotes the bitwise AND operation.
    
    You have to choose k elements from the final array and calculate the sum of their squares.
    
    Return the maximum sum of squares you can achieve.
    
    Since the answer can be very large, return it modulo 109 + 7.
    
    Example 1:
    
    Input: nums = [2,6,5,8], k = 2
    Output: 261
    Explanation: We can do the following operations on the array:
    - Choose i = 0 and j = 3, then change nums[0] to (2 AND 8) = 0 and nums[3] to (2 OR 8) = 10. The resulting array is nums = [0,6,5,10].
    - Choose i = 2 and j = 3, then change nums[2] to (5 AND 10) = 0 and nums[3] to (5 OR 10) = 15. The resulting array is nums = [0,6,0,15].
    We can choose the elements 15 and 6 from the final array. The sum of squares is 152 + 62 = 261.
    It can be shown that this is the maximum value we can get.
    
    Example 2:
    
    Input: nums = [4,5,4,7], k = 3
    Output: 90
    Explanation: We do not need to apply any operations.
    We can choose the elements 7, 5, and 4 with a sum of squares: 72 + 52 + 42 = 90.
    It can be shown that this is the maximum value we can get.
    
    
    Constraints:
    
     * 1 <= k <= nums.length <= 105
     * 1 <= nums[i] <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([2, 6, 5, 8], 2) == 261
    assert candidate([4, 5, 4, 7], 3) == 90
    assert candidate([32, 85, 61], 1) == 15625
    assert candidate([123], 1) == 15129
    assert candidate([96, 66, 60, 58, 32, 17, 63, 21, 30, 44, 15, 8, 98, 93], 2) == 32258
    assert candidate([30, 8, 63, 69, 52, 94, 41, 28, 94, 86, 28, 13, 68, 38, 53, 11, 21, 33], 2) == 32258
    assert candidate([2, 38, 15, 2, 73, 100, 47, 14, 25, 58, 40, 64, 23, 9, 53, 38, 91, 75, 9, 2], 3) == 48387
    assert candidate([25, 52, 75, 65], 4) == 24051
    assert candidate([96, 36, 72, 61, 13, 25, 5, 33, 9, 51, 9, 78, 40], 13) == 53776
    assert candidate([38, 21, 15, 84, 65, 35, 57, 82, 94, 26, 27, 89, 73, 22, 25, 6, 97, 17], 4) == 64516
    assert candidate([18, 72, 52, 56, 7, 21, 55, 68, 98, 31, 35, 49, 100, 49, 64, 20], 4) == 62548
    assert candidate([2, 73, 75], 3) == 11250
    assert candidate([73, 37, 41, 84], 2) == 27506
    assert candidate([62, 83, 11, 3, 53], 3) == 20459
    assert candidate([53, 59, 71, 38, 5, 15, 98, 86, 9, 8, 35, 54, 65, 77, 3, 68, 11, 5, 41, 18], 9) == 95273
    assert candidate([53, 67, 91, 79, 21, 27, 63, 34, 60, 94, 51], 4) == 64516
    assert candidate([41, 15, 6, 31, 40, 97, 11, 45, 81, 91, 91, 62], 3) == 48387
    assert candidate([10, 9], 2) == 185
    assert candidate([9, 6, 8, 32, 92, 12, 47, 45, 62, 96, 5, 66, 82, 90, 34, 39, 49, 86, 16], 13) == 102770
    assert candidate([1, 19, 29, 30, 68, 13, 80, 16, 71, 32, 8, 76, 41, 24, 16, 2, 30], 14) == 53470
    assert candidate([22, 64, 30, 71, 28, 69, 86, 12, 26, 39, 69, 92], 2) == 25154
    assert candidate([91, 26, 29, 38, 97, 40, 1, 18, 15, 3, 43, 37, 9, 55, 4, 46], 2) == 32258
    assert candidate([27, 73], 1) == 8281
    assert candidate([12, 33, 29, 75, 94, 48, 25, 21], 8) == 34565
    assert candidate([39, 91, 84, 10, 65, 28, 94, 28, 62, 77, 78, 50, 93, 65, 21, 16, 5, 35, 81], 14) == 110106
    assert candidate([14, 45, 76, 33, 35, 53, 67, 19, 6, 31, 33], 10) == 40008
    assert candidate([59, 88, 2, 47, 75], 2) == 31258
    assert candidate([96, 77, 77, 33, 5, 86, 90, 21, 84, 73, 86, 45, 88, 35, 93, 14, 63, 25], 17) == 121571
    assert candidate([35, 5, 21, 65, 34, 90, 60, 8, 34, 35, 28, 78, 77], 1) == 16129
    assert candidate([14, 10, 19], 2) == 1061
    assert candidate([100, 4, 88, 29, 13, 78, 89, 11, 62, 63, 66, 46, 99, 87, 41, 29, 36, 71, 57], 18) == 129739
    assert candidate([86, 52, 100, 68, 30, 40, 49, 28, 61, 30, 3, 80], 11) == 69063
    assert candidate([29, 30, 61, 12, 98, 95], 2) == 32258
    assert candidate([23, 13, 35, 41, 29, 57, 84, 67, 70, 96, 55, 85, 15, 72, 23, 52, 1, 11, 62, 1], 1) == 16129
    assert candidate([34, 60, 85, 22, 83], 2) == 30290
    assert candidate([65, 26, 44, 70, 79, 65, 46, 18], 8) == 44587
    assert candidate([99, 50, 13, 62, 12, 60, 6, 29], 6) == 28071
    assert candidate([73, 66, 75, 44], 3) == 23130
    assert candidate([43, 85, 7, 66, 16, 96], 1) == 16129
    assert candidate([45, 5, 3, 84, 81, 54, 21, 37, 99, 60], 2) == 32258
    assert candidate([97, 6, 44, 57, 63, 5], 1) == 16129
    assert candidate([65, 43, 82, 46, 34, 42, 65, 67, 8, 67, 3, 83, 87, 71, 98, 31, 15, 22], 5) == 80645
    assert candidate([79, 33, 75, 32, 64, 68, 30, 46, 60, 50, 6, 54, 18, 34, 43, 11, 84, 78, 54, 4], 1) == 16129
    assert candidate([17, 9, 3, 23, 33, 99, 94, 15, 93, 17, 39, 55, 13, 26, 22, 44, 13], 3) == 48387
    assert candidate([83, 29, 2, 67, 79, 88, 71, 98, 70], 4) == 39220
    assert candidate([60, 81, 60, 88, 37, 38, 10, 42, 84, 70], 10) == 67626
    assert candidate([33, 51, 100, 33, 46], 3) == 18739
    assert candidate([29, 4, 67, 44, 74, 62, 41, 86, 91, 11, 26, 58, 59, 48, 46, 41, 26, 68, 4, 81], 4) == 64516
    assert candidate([86, 54, 20, 57, 87, 63, 2, 24, 73, 87, 7, 16, 50, 1, 58], 7) == 69543
    assert candidate([91, 2, 16, 77, 2], 1) == 9025
    assert candidate([19, 94], 2) == 9349
    assert candidate([14, 67, 79, 58], 2) == 22370
    assert candidate([44, 17, 10, 19, 3, 97, 45, 65, 98, 7, 73, 30, 76, 5, 52, 33, 62], 4) == 64516
    assert candidate([8, 80, 93], 1) == 8649
    assert candidate([51, 79, 26, 30, 41, 74, 6, 11, 10, 66, 61, 25, 41, 32, 83, 52, 71, 70], 18) == 98085
    assert candidate([15, 58, 38, 69, 71, 43], 1) == 16129
    assert candidate([13, 57, 34, 69, 80, 98, 63, 22, 29, 38, 70, 94, 79, 95, 13, 76, 39, 22], 5) == 80645
    assert candidate([98, 88, 17, 85, 57, 97, 42, 15, 25, 71, 31, 72, 76, 89, 28, 47, 73, 85], 9) == 114889
    assert candidate([95, 28, 26, 65, 87, 4, 14, 25, 47, 97, 67, 48, 29, 14, 96, 76, 77, 25], 9) == 100409
    assert candidate([37, 16, 76, 9, 88, 44, 71, 61, 95, 32, 63, 10, 29, 33], 11) == 72360
    assert candidate([54, 96, 73, 18, 15, 35, 79, 96, 2, 12, 50, 75, 7, 93, 66, 35, 40, 16], 18) == 104436
    assert candidate([66, 84, 85, 7, 45, 34, 61, 91, 83, 13, 87, 89, 51, 52, 65], 6) == 88214
    assert candidate([76, 22, 86, 88, 58, 10, 61, 21, 42], 2) == 32258
    assert candidate([16, 52, 8, 99, 68, 73], 2) == 31754
    assert candidate([46, 91, 73, 38, 36, 79, 24, 78, 24, 42], 8) == 60911
    assert candidate([5, 100, 85, 52, 5, 28, 79, 30, 9, 67, 87, 50, 17, 29, 99, 57], 14) == 91019
    assert candidate([52, 57, 77, 95, 79, 28, 9, 94, 70, 8, 89, 75, 27, 53, 41, 88, 68, 8, 10, 59], 5) == 80645
    assert candidate([66, 64, 52, 90, 73, 84, 2], 6) == 39881
    assert candidate([97, 100], 1) == 10201
    assert candidate([27, 85, 57, 44, 16, 55, 77, 77, 24, 62, 72], 10) == 66334
    assert candidate([15, 6, 18, 22, 72, 63, 38, 72, 4, 84, 9, 19, 70, 76, 72, 98, 35, 51, 11, 9], 20) == 96344
    assert candidate([10, 67, 54, 100, 6, 93, 91, 4, 59], 3) == 48387
    assert candidate([90, 48, 91, 62, 39, 94, 75, 8, 21, 72, 9, 55, 16, 30, 27, 73, 81, 39, 97], 8) == 114080
    assert candidate([43, 58, 51, 40, 39, 92, 36, 57], 4) == 27548
    assert candidate([85, 51, 49, 13, 7, 66, 21, 59, 100, 14, 5, 66], 8) == 63152
    assert candidate([54, 52, 36, 17, 34, 100, 81, 82, 16, 46, 26, 73, 77, 55, 43, 53], 14) == 91703
    assert candidate([97, 1, 30, 41, 82, 77, 99, 56, 21, 68, 14, 39, 15, 26, 72], 1) == 16129
    assert candidate([17, 10, 28, 78, 68, 68, 29, 44], 5) == 33906
    assert candidate([59, 30, 26, 58, 87, 1, 6, 98, 29, 50, 57, 64, 64], 10) == 69321
    assert candidate([77, 23, 43, 94, 74, 41, 26, 39, 83, 57, 85, 49, 83, 34, 63, 37, 42, 55, 20, 18], 3) == 48387
    assert candidate([54, 19, 69, 95, 26, 59, 68, 90, 77, 62, 67, 54, 42, 25, 50, 23, 30, 53, 29, 78], 12) == 117170
    assert candidate([54, 17, 16, 30, 35, 63, 34, 38, 26, 41, 33], 9) == 22133
    assert candidate([17, 24, 8, 57, 68, 54, 64, 53], 6) == 35987
    assert candidate([11, 90, 27, 72, 22, 24, 54, 64, 68, 94, 1, 20, 45, 5, 63], 10) == 69082
    assert candidate([92, 84, 89, 72, 80, 1, 8], 3) == 25042
    assert candidate([29, 14, 37, 61, 7, 10, 53, 95, 47, 81, 1, 59, 18, 25, 3, 53, 43, 64, 33], 5) == 56325
    assert candidate([44, 94, 83, 38, 63, 16, 45, 90, 74, 20], 1) == 16129
    assert candidate([13, 65], 2) == 5930
    assert candidate([16, 9, 2, 66], 2) == 8285
    assert candidate([30, 68, 85, 13, 49, 96, 59, 61, 39], 7) == 54942
    assert candidate([29, 47, 38, 4], 2) == 6178
    assert candidate([49, 30], 2) == 4225
    assert candidate([64, 71, 33, 46, 77, 45, 33, 55, 84, 30, 1, 40, 2, 92, 54, 88], 8) == 98815
    assert candidate([55, 72, 75], 1) == 16129
    assert candidate([3, 34, 63, 27, 49, 28, 86], 3) == 24067
    assert candidate([99, 29, 94, 21, 54, 43, 20, 79, 27, 40, 90, 76, 55, 27, 40, 46, 76, 70, 34], 13) == 118264
    assert candidate([64, 11, 2, 12, 11, 82, 10, 42, 63, 98, 99, 13], 1) == 16129
    assert candidate([23, 25, 45, 88, 88, 93, 91, 25, 34, 83, 9, 85, 18], 8) == 67760
    assert candidate([84, 95, 7, 53, 19, 46, 41, 48, 48, 38], 7) == 44981
    assert candidate([92, 88, 27, 34], 4) == 24805


def test_check():
    check(maxSum)


### Metadata below ###
# question_id = 3153
# question_title = Apply Operations on Array to Maximize Sum of Squares
# question_title_slug = apply-operations-on-array-to-maximize-sum-of-squares
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 159
# question_dislikes = 3