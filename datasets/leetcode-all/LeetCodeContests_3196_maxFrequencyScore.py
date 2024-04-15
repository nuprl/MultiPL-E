from typing import List

def maxFrequencyScore(nums: List[int], k: int) -> int:
    """
    You are given a 0-indexed integer array nums and an integer k.
    You can perform the following operation on the array at most k times:
    
    Choose any index i from the array and increase or decrease nums[i] by 1.
    
    The score of the final array is the frequency of the most frequent element in the array.
    Return the maximum score you can achieve.
    The frequency of an element is the number of occurences of that element in the array.
    
    Example 1:
    
    Input: nums = [1,2,6,4], k = 3
    Output: 3
    Explanation: We can do the following operations on the array:
    - Choose i = 0, and increase the value of nums[0] by 1. The resulting array is [2,2,6,4].
    - Choose i = 3, and decrease the value of nums[3] by 1. The resulting array is [2,2,6,3].
    - Choose i = 3, and decrease the value of nums[3] by 1. The resulting array is [2,2,6,2].
    The element 2 is the most frequent in the final array so our score is 3.
    It can be shown that we cannot achieve a better score.
    
    Example 2:
    
    Input: nums = [1,4,4,2,4], k = 0
    Output: 3
    Explanation: We cannot apply any operations so our score will be the frequency of the most frequent element in the original array, which is 3.
    
    
    Constraints:
    
    1 <= nums.length <= 105
    1 <= nums[i] <= 109
    0 <= k <= 1014
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 6, 4], 3) == 3
    assert candidate([1, 4, 4, 2, 4], 0) == 3
    assert candidate([3, 20, 13, 2, 3, 15, 24, 19, 8, 13, 19, 20, 21], 45) == 10
    assert candidate([13, 22, 29, 21, 13, 17, 5, 2, 27, 6, 10, 4, 23, 29, 27], 117) == 14
    assert candidate([27, 8, 30, 3, 13, 28, 7, 14, 21, 19, 24, 28, 29, 1, 14, 22, 6], 23) == 8
    assert candidate([10, 11, 3], 1) == 2
    assert candidate([10, 19, 26, 18, 27, 18], 9) == 4
    assert candidate([17, 24, 10, 23, 22, 15, 25, 2, 13, 24, 22, 25, 25, 21], 52) == 13
    assert candidate([28, 6, 22, 10], 12) == 2
    assert candidate([17, 17, 25, 14, 29, 28, 20, 14, 16, 22, 4, 28, 2, 5, 3, 11, 6, 20, 17], 76) == 14
    assert candidate([23, 10, 18, 21, 16, 23, 14], 2) == 3
    assert candidate([5, 13, 7], 8) == 3
    assert candidate([6, 29, 3, 19, 10, 6, 20, 26, 1, 30, 11, 25, 29, 12, 29, 14, 15, 16, 5], 64) == 12
    assert candidate([10, 26, 21, 18, 30, 25, 1], 8) == 3
    assert candidate([29, 10, 26, 1, 2, 2, 17, 7, 5, 16, 24, 27, 7, 7, 26, 26, 24], 3) == 5
    assert candidate([11, 16, 6, 12, 3, 8, 5, 29, 9, 15, 7, 9, 14, 6, 11, 14, 12, 23, 22, 14], 79) == 19
    assert candidate([5, 17, 15, 14, 27, 11, 22, 6, 4], 26) == 6
    assert candidate([13, 22, 17], 4) == 2
    assert candidate([24, 6, 14, 6, 30, 9, 6, 11, 21, 10, 12, 27, 1], 90) == 13
    assert candidate([19, 5, 2, 23, 16, 22, 3, 2, 5, 20, 17, 3, 22, 1], 15) == 7
    assert candidate([15, 20], 5) == 2
    assert candidate([9, 2, 5, 14, 19, 5, 10, 10, 2, 25, 1, 1, 1, 14, 9, 13, 5, 6, 10, 1], 80) == 18
    assert candidate([2, 29, 24, 19, 5], 24) == 3
    assert candidate([4, 10, 5], 6) == 3
    assert candidate([5, 2, 22, 7, 18, 26, 15, 4, 24, 26, 24], 19) == 6
    assert candidate([23, 21, 10], 13) == 3
    assert candidate([5, 23, 7, 2, 1, 5, 12, 2, 20, 24, 5, 4], 71) == 11
    assert candidate([22, 13, 30], 17) == 3
    assert candidate([7, 23, 29, 8, 9, 3, 4, 16, 24, 6, 18, 20, 19, 14, 5], 55) == 11
    assert candidate([3, 11, 24, 27, 10], 24) == 4
    assert candidate([12, 11, 21, 6, 13, 27, 11, 2, 27, 26, 24, 13], 0) == 2
    assert candidate([4, 10, 26, 16, 21, 26, 11, 26, 30, 24, 18, 30, 23, 26, 24], 50) == 12
    assert candidate([4, 2, 18, 14, 9, 29], 4) == 2
    assert candidate([9, 27, 19, 18], 9) == 3
    assert candidate([11, 17, 29, 9, 22, 7, 13, 14, 12, 24, 9], 47) == 10
    assert candidate([20, 10, 15, 16], 10) == 3
    assert candidate([16, 2, 6, 20, 2, 18, 16, 8, 15, 19, 22, 29, 24, 2, 26, 19], 40) == 11
    assert candidate([17, 13, 19, 28, 6, 8, 5, 25, 2, 3, 9, 4, 21, 6, 13, 10, 5, 3], 113) == 18
    assert candidate([16, 5, 10, 15], 5) == 2
    assert candidate([23, 2, 23, 27, 21], 2) == 3
    assert candidate([15, 26, 3, 14, 3, 18, 16, 19, 11, 9, 2, 18, 14, 8, 20, 9], 75) == 15
    assert candidate([13, 23, 4, 5, 2], 3) == 3
    assert candidate([3, 1, 9, 12], 8) == 3
    assert candidate([4, 27, 21, 16, 11, 5, 5, 1, 5, 10], 18) == 7
    assert candidate([14, 4, 23, 27, 8, 25, 7, 12, 12, 21, 21, 11, 20, 23, 30, 11, 12, 29, 22], 77) == 15
    assert candidate([10, 30, 25], 20) == 3
    assert candidate([4, 8, 22, 25, 27, 26, 18, 14, 18], 56) == 9
    assert candidate([2, 19, 27, 25, 23, 17, 8, 16, 28, 10, 6, 24, 6], 28) == 7
    assert candidate([27, 25, 27, 10, 23, 14, 24, 17, 12, 22, 14, 11, 19, 16, 7, 15], 21) == 9
    assert candidate([23, 11], 12) == 2
    assert candidate([20, 28, 15, 11, 22, 26, 29, 2, 16, 9], 61) == 9
    assert candidate([21, 11, 1, 17, 20, 19, 24, 10, 1, 4, 10, 30, 11, 29, 20, 12, 18, 5, 4, 27], 110) == 17
    assert candidate([22, 29, 7, 1, 26, 22, 27, 1, 16, 25, 25], 26) == 8
    assert candidate([26, 6, 24], 20) == 3
    assert candidate([29, 24, 9, 4, 2, 9, 28, 1, 25, 25, 13, 22, 27, 26, 15, 18], 2) == 4
    assert candidate([9, 19, 1, 24, 15, 19, 22, 13, 10, 8, 4, 10, 26, 23, 11, 8], 89) == 15
    assert candidate([18, 6, 20, 22, 25, 21, 19, 19, 15, 5, 7, 29, 28, 7, 17, 4], 104) == 16
    assert candidate([9, 11, 28, 24, 30, 6, 1, 30, 22, 16, 20, 19, 21, 17], 62) == 11
    assert candidate([15, 13, 29, 28], 15) == 3
    assert candidate([28, 26, 8], 18) == 2
    assert candidate([6, 12, 24, 4, 25, 23, 5, 13, 7, 5], 12) == 6
    assert candidate([8, 23, 15, 15, 3, 19, 6, 20, 12, 18, 7, 8, 18, 19, 11, 20, 4, 18], 54) == 14
    assert candidate([30, 2, 4, 7, 19, 3, 3, 14, 24, 4, 26, 17, 1, 12, 4, 11], 36) == 11
    assert candidate([12, 15, 21, 17, 7, 20, 16, 30, 8, 6, 28, 28, 23, 6, 12, 14, 19, 26, 27, 5], 87) == 16
    assert candidate([15, 1, 27, 4, 5, 20, 5, 26, 28], 38) == 6
    assert candidate([27, 14, 30, 6, 14, 29, 5, 8], 51) == 7
    assert candidate([18, 22], 4) == 2
    assert candidate([17, 28, 16, 24, 29], 5) == 3
    assert candidate([2, 22, 27, 12, 30, 9, 27, 3, 26, 23, 25, 30, 20, 19, 9, 1, 23, 14, 18, 26], 30) == 11
    assert candidate([26, 16, 9, 7, 10, 16, 26, 22, 24, 1, 30, 8, 15, 5, 28, 16, 13, 12], 84) == 15
    assert candidate([26, 8, 27, 27, 22, 28, 8, 26, 24, 15, 6, 13, 20, 12], 55) == 11
    assert candidate([19, 19, 20, 14, 19, 20, 5, 4, 14, 26, 12, 17, 14, 29, 3, 9], 94) == 16
    assert candidate([9, 19, 14, 17, 14, 20, 27, 9, 22, 29, 15, 20, 6, 25, 8, 17, 18, 24, 23], 44) == 13
    assert candidate([2, 10], 8) == 2
    assert candidate([20, 2, 27, 27, 19, 20, 8, 21, 15, 20, 14, 18, 25], 17) == 8
    assert candidate([6, 27, 6, 30, 2, 1, 7, 24, 18, 4, 2, 18, 17], 56) == 10
    assert candidate([23, 18, 30, 24, 5, 21], 33) == 6
    assert candidate([12, 16, 24, 18, 12, 20, 26, 15, 11, 23, 4, 25], 35) == 9
    assert candidate([9, 9, 11, 18], 11) == 4
    assert candidate([19, 21, 7, 15, 21, 10, 5, 27, 2, 27, 14], 63) == 9
    assert candidate([25, 17, 13, 6, 3, 19, 21, 12, 29, 1, 16, 14, 24, 27, 25, 13, 1, 5, 17], 136) == 19
    assert candidate([4, 4, 8, 9, 14, 7, 27, 8, 2, 29, 1, 28, 23, 13], 109) == 14
    assert candidate([14, 2, 18, 30, 28, 17, 25, 10, 7, 10, 19, 3, 26, 22, 12, 17, 8, 4], 24) == 8
    assert candidate([27, 17, 12, 19, 25, 1, 9, 4, 9, 20, 2, 5], 70) == 10
    assert candidate([18, 25, 12, 20, 19, 26, 2, 15, 3, 6, 29, 29, 2, 24, 4, 9], 106) == 14
    assert candidate([17, 18, 14, 1, 28, 15, 14, 13, 9, 16, 28, 9, 21, 23, 2, 11], 65) == 14
    assert candidate([17, 15, 29, 30, 12, 13, 10], 37) == 6
    assert candidate([15, 4, 11, 1, 18, 29, 9, 23, 14, 25, 15, 12, 15, 6, 30, 28], 60) == 12
    assert candidate([20, 6, 8, 15, 12, 8, 26, 7, 27, 8, 5, 25, 17, 12, 7, 1, 23, 24, 8], 62) == 14
    assert candidate([22, 21, 30, 16, 23, 24, 2, 2, 24], 39) == 7
    assert candidate([8, 9, 6, 30, 28, 2, 1, 3, 14, 8, 21, 26, 13, 29, 23, 3, 14, 9, 6, 25], 91) == 16
    assert candidate([7, 10, 16, 23, 17, 22, 28, 7, 4, 21, 25, 21, 19, 30, 13, 19, 15, 21, 23], 53) == 15
    assert candidate([25, 17, 1, 24, 3, 6, 8, 29, 19, 4, 16, 12, 9, 28, 1, 21, 13, 29], 151) == 18
    assert candidate([1, 6, 14, 9], 8) == 3
    assert candidate([5, 7, 17, 2, 23, 6, 3, 13, 2, 11, 10, 8, 18, 16, 3, 11, 26], 30) == 10
    assert candidate([27, 27, 16, 18, 24, 7, 26, 30, 21, 25, 28, 28, 29, 27, 28, 6], 0) == 3
    assert candidate([29, 16, 9, 21, 2, 16, 4, 17, 22, 11, 20, 23, 5, 22, 7, 27, 20], 85) == 15
    assert candidate([25, 5, 24, 2, 30, 15, 17, 27, 15, 15, 27], 69) == 10
    assert candidate([6, 29, 24, 14, 9, 14, 1, 1, 28, 20, 19, 21, 13, 25, 17, 24, 30, 14], 107) == 16
    assert candidate([17, 20, 2, 11, 5, 7, 28], 36) == 6


def test_check():
    check(maxFrequencyScore)


### Metadata below ###
# question_id = 3196
# question_title = Apply Operations to Maximize Frequency Score
# question_title_slug = apply-operations-to-maximize-frequency-score
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 175
# question_dislikes = 4