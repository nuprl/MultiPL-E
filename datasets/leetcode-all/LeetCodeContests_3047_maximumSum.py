from typing import List

def maximumSum(nums: List[int]) -> int:
    """
    You are given a 1-indexed array nums of n integers.
    
    A set of numbers is complete if the product of every pair of its elements is a perfect square.
    
    For a subset of the indices set {1, 2, ..., n} represented as {i1, i2, ..., ik}, we define its element-sum as: nums[i1] + nums[i2] + ... + nums[ik].
    
    Return the maximum element-sum of a complete subset of the indices set {1, 2, ..., n}.
    
    A perfect square is a number that can be expressed as the product of an integer by itself.
    
    Example 1:
    
    Input: nums = [8,7,3,5,7,2,4,9]
    Output: 16
    Explanation: Apart from the subsets consisting of a single index, there are two other complete subsets of indices: {1,4} and {2,8}.
    The sum of the elements corresponding to indices 1 and 4 is equal to nums[1] + nums[4] = 8 + 5 = 13.
    The sum of the elements corresponding to indices 2 and 8 is equal to nums[2] + nums[8] = 7 + 9 = 16.
    Hence, the maximum element-sum of a complete subset of indices is 16.
    
    Example 2:
    
    Input: nums = [5,10,3,10,1,13,7,9,4]
    Output: 19
    Explanation: Apart from the subsets consisting of a single index, there are four other complete subsets of indices: {1,4}, {1,9}, {2,8}, {4,9}, and {1,4,9}.
    The sum of the elements corresponding to indices 1 and 4 is equal to nums[1] + nums[4] = 5 + 10 = 15.
    The sum of the elements corresponding to indices 1 and 9 is equal to nums[1] + nums[9] = 5 + 4 = 9.
    The sum of the elements corresponding to indices 2 and 8 is equal to nums[2] + nums[8] = 10 + 9 = 19.
    The sum of the elements corresponding to indices 4 and 9 is equal to nums[4] + nums[9] = 10 + 4 = 14.
    The sum of the elements corresponding to indices 1, 4, and 9 is equal to nums[1] + nums[4] + nums[9] = 5 + 10 + 4 = 19.
    Hence, the maximum element-sum of a complete subset of indices is 19.
    
    
    Constraints:
    
     * 1 <= n == nums.length <= 104
     * 1 <= nums[i] <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([8, 7, 3, 5, 7, 2, 4, 9]) == 16
    assert candidate([5, 10, 3, 10, 1, 13, 7, 9, 4]) == 19
    assert candidate([1, 1, 1, 1]) == 2
    assert candidate([1, 100, 100, 1]) == 100
    assert candidate([998244353, 998244353, 998244353, 998244353]) == 1996488706
    assert candidate([1000000000, 1, 1, 1000000000]) == 2000000000
    assert candidate([1, 1, 1000000000, 1]) == 1000000000
    assert candidate([5, 10, 3, 10, 1, 13, 7, 20, 4]) == 30
    assert candidate([5, 3, 3, 10, 1, 13, 7, 67, 4]) == 70
    assert candidate([35, 45, 29, 16, 42, 49, 25, 19, 46]) == 97
    assert candidate([34, 43, 47, 50, 45]) == 84
    assert candidate([4, 31, 45, 34, 44]) == 45
    assert candidate([12, 5, 49, 26]) == 49
    assert candidate([41]) == 41
    assert candidate([38, 9, 37, 11, 20, 43]) == 49
    assert candidate([47, 50, 17, 49, 12, 22]) == 96
    assert candidate([23, 13, 17, 3, 21, 23]) == 26
    assert candidate([38, 28]) == 38
    assert candidate([16, 31, 37, 29, 28, 34, 25, 36]) == 67
    assert candidate([19, 46, 37, 44, 4, 40, 24, 17, 49]) == 112
    assert candidate([28, 40, 37]) == 40
    assert candidate([19, 6, 30, 23, 25, 45, 15, 2, 3, 46]) == 46
    assert candidate([5, 16, 4, 13, 37, 44, 49, 7]) == 49
    assert candidate([40, 8, 19, 26]) == 66
    assert candidate([3, 37, 2]) == 37
    assert candidate([1, 5, 35, 20, 32, 18, 6, 49, 34, 15]) == 55
    assert candidate([25, 31, 4, 20, 45]) == 45
    assert candidate([32, 3, 25, 15, 37, 37, 21, 24, 8, 33]) == 55
    assert candidate([13]) == 13
    assert candidate([41, 25, 20, 28, 40, 22, 37, 43, 6, 32]) == 75
    assert candidate([23, 9, 7, 24, 30, 34, 10, 47]) == 56
    assert candidate([11, 31, 1, 34, 8, 20, 15, 20, 49]) == 94
    assert candidate([41, 21, 4, 15, 25, 38, 26, 7, 6]) == 62
    assert candidate([46, 31, 28, 34, 12, 40, 11, 31, 8, 25]) == 88
    assert candidate([50]) == 50
    assert candidate([41, 43, 17, 35]) == 76
    assert candidate([20, 6]) == 20
    assert candidate([43, 18, 10, 19, 20, 9, 49]) == 62
    assert candidate([3, 39, 29, 5, 6, 36, 38, 26, 14, 10]) == 65
    assert candidate([47, 2, 48, 16, 10, 3, 45, 20, 39]) == 102
    assert candidate([11, 47, 27, 17, 7]) == 47
    assert candidate([48, 17, 41, 23, 40, 9, 3, 26, 44, 34]) == 115
    assert candidate([47, 2, 42, 10, 15, 44, 35, 50]) == 57
    assert candidate([45, 48, 50, 24, 23, 14, 2, 33]) == 81
    assert candidate([7, 39, 27, 39, 43, 42, 31, 37, 15]) == 76
    assert candidate([10, 36, 23, 31]) == 41
    assert candidate([27, 27, 13, 37]) == 64
    assert candidate([34, 17, 26, 13]) == 47
    assert candidate([9, 42]) == 42
    assert candidate([23, 42, 4, 28, 30, 36, 30, 39]) == 81
    assert candidate([10, 28, 28, 21, 25, 14, 38]) == 38
    assert candidate([40, 34, 26, 9, 23, 15, 23, 27, 49]) == 98
    assert candidate([27, 42, 40, 2, 1]) == 42
    assert candidate([48, 19, 21, 21, 32, 20, 50, 41, 49, 30]) == 118
    assert candidate([10, 13, 6, 39, 9]) == 49
    assert candidate([50, 37, 24, 4, 10, 43, 35]) == 54
    assert candidate([39, 24]) == 39
    assert candidate([21]) == 21
    assert candidate([20, 15]) == 20
    assert candidate([23, 27, 42, 3, 33, 36, 43, 32, 27, 48, 40, 22, 5, 36, 48]) == 64
    assert candidate([39, 46, 12, 14, 25, 37, 24, 44, 6, 38, 4]) == 90
    assert candidate([36, 5, 23, 17, 32, 47, 23, 41, 18, 44, 21, 4, 22, 6, 21]) == 71
    assert candidate([46, 26, 37, 17, 15, 26, 45, 45, 17, 42, 16, 14, 36, 40]) == 80
    assert candidate([46, 40, 16, 48, 24, 1, 13, 15, 6, 5, 12, 15, 4]) == 100
    assert candidate([11, 27, 28, 26, 4, 22, 10, 49, 4, 23, 30, 6, 5]) == 76
    assert candidate([37, 17, 17, 18, 10, 28, 47, 38, 43, 20, 10]) == 98
    assert candidate([12, 17, 9, 30, 38, 20, 28, 36, 34, 15, 4, 15, 48]) == 76
    assert candidate([28, 32, 22, 9, 33, 26, 10, 15, 15, 37, 33, 48, 2, 14, 35]) == 70
    assert candidate([35, 28, 45, 34, 49, 45, 38, 15, 36, 33, 15, 16]) == 105
    assert candidate([50, 18, 24, 30, 6, 49, 3, 20, 22, 19, 25, 35, 30, 33]) == 102
    assert candidate([10, 19, 37, 1, 31, 6, 2, 37, 10, 1, 36, 48, 7, 40]) == 85
    assert candidate([45, 49, 32, 44, 12, 39, 8, 7, 3, 48, 37, 27, 41, 20, 18]) == 92
    assert candidate([40, 9, 16, 40, 9, 28, 29, 36, 4, 17, 29]) == 84
    assert candidate([21, 32, 24, 39, 2, 13, 37, 33, 50, 43, 9, 43, 14]) == 110
    assert candidate([36, 25, 21, 29, 42, 40, 16, 41, 22, 24, 45, 7, 33]) == 87
    assert candidate([32, 33, 7, 45, 23, 13, 45, 4, 15, 12]) == 92
    assert candidate([10, 7, 1, 15, 12, 22, 34, 3, 36, 44, 10, 12]) == 61
    assert candidate([26, 4, 44, 3, 37, 50, 27, 22, 48, 14, 12, 3, 39, 31]) == 77
    assert candidate([47, 48, 8, 24, 1, 17, 32, 13, 19, 25, 15, 30, 12]) == 90
    assert candidate([31, 18, 11, 28, 7, 34, 32, 38, 47, 44, 1, 13, 46]) == 106
    assert candidate([47, 12, 35, 10, 37, 36, 44, 38, 19, 31, 28, 21, 3, 34]) == 76
    assert candidate([19, 47, 46, 5, 7, 42, 35, 3, 39, 2, 1, 31]) == 77
    assert candidate([15, 50, 14, 27, 37, 44, 11, 38, 23, 39, 27, 36, 22]) == 88
    assert candidate([31, 31, 18, 24, 9, 27, 33, 10, 23, 38, 44, 4, 17, 11, 14]) == 78
    assert candidate([38, 27, 13, 20, 36, 23, 6, 7, 37, 20, 49, 31, 25, 12]) == 95
    assert candidate([6, 21, 11, 15, 17, 47, 50, 14, 24, 18, 38, 19, 48, 43]) == 50
    assert candidate([31, 4, 1, 5, 50, 46, 14, 17, 13, 14, 17, 39, 46, 18]) == 50
    assert candidate([39, 13, 6, 45, 44, 14, 44, 37, 24, 20, 21, 47, 6, 6, 5]) == 108
    assert candidate([17, 16, 48, 41, 7, 39, 50, 29, 2, 33]) == 60
    assert candidate([3, 8, 19, 47, 29, 4, 16, 31, 11, 30]) == 61
    assert candidate([20, 1, 46, 36, 35, 32, 49, 14, 48, 25, 17, 50, 22]) == 104
    assert candidate([49, 20, 12, 42, 33, 21, 29, 30, 35, 4, 5, 50]) == 126
    assert candidate([36, 1, 8, 14, 39, 2, 31, 23, 10, 46, 42]) == 60
    assert candidate([33, 29, 23, 4, 48, 31, 31, 26, 11, 39]) == 55
    assert candidate([33, 36, 31, 21, 2, 41, 14, 36, 6, 1, 22, 13, 34]) == 72
    assert candidate([35, 32, 43, 20, 4, 13, 6, 19, 36, 20]) == 91
    assert candidate([16, 41, 16, 41, 11, 39, 40, 7, 24, 28, 13]) == 81
    assert candidate([32, 24, 29, 24, 29, 45, 10, 37, 22, 35, 37, 28, 15]) == 78
    assert candidate([45, 8, 19, 1, 33, 2, 32, 40, 16, 33, 44, 27]) == 62
    assert candidate([3, 42, 14, 18, 1, 20, 19, 7, 37, 3, 2, 3, 48]) == 58


def test_check():
    check(maximumSum)


### Metadata below ###
# question_id = 3047
# question_title = Maximum Element-Sum of a Complete Subset of Indices
# question_title_slug = maximum-element-sum-of-a-complete-subset-of-indices
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 157
# question_dislikes = 27