from typing import List

def isGood(nums: List[int]) -> bool:
    """
    You are given an integer array nums. We consider an array good if it is a permutation of an array base[n].
    
    base[n] = [1, 2, ..., n - 1, n, n] (in other words, it is an array of length n + 1 which contains 1 to n - 1 exactly once, plus two occurrences of n). For example, base[1] = [1, 1] and base[3] = [1, 2, 3, 3].
    
    Return true if the given array is good, otherwise return false.
    
    Note: A permutation of integers represents an arrangement of these numbers.
    
    Example 1:
    
    Input: nums = [2, 1, 3]
    Output: false
    Explanation: Since the maximum element of the array is 3, the only candidate n for which this array could be a permutation of base[n], is n = 3. However, base[3] has four elements but array nums has three. Therefore, it can not be a permutation of base[3] = [1, 2, 3, 3]. So the answer is false.
    
    Example 2:
    
    Input: nums = [1, 3, 3, 2]
    Output: true
    Explanation: Since the maximum element of the array is 3, the only candidate n for which this array could be a permutation of base[n], is n = 3. It can be seen that nums is a permutation of base[3] = [1, 2, 3, 3] (by swapping the second and fourth elements in nums, we reach base[3]). Therefore, the answer is true.
    
    Example 3:
    
    Input: nums = [1, 1]
    Output: true
    Explanation: Since the maximum element of the array is 1, the only candidate n for which this array could be a permutation of base[n], is n = 1. It can be seen that nums is a permutation of base[1] = [1, 1]. Therefore, the answer is true.
    
    Example 4:
    
    Input: nums = [3, 4, 4, 1, 2, 1]
    Output: false
    Explanation: Since the maximum element of the array is 4, the only candidate n for which this array could be a permutation of base[n], is n = 4. However, base[4] has five elements but array nums has six. Therefore, it can not be a permutation of base[4] = [1, 2, 3, 4, 4]. So the answer is false.
    
    
    Constraints:
    
     * 1 <= nums.length <= 100
     * 1 <= num[i] <= 200
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 3, 3, 2]) == True
    assert candidate([2, 1, 3]) == False
    assert candidate([1, 1]) == True
    assert candidate([1, 2, 2]) == True
    assert candidate([3, 4, 4, 1, 2, 1]) == False
    assert candidate([2, 2, 1]) == True
    assert candidate([1]) == False
    assert candidate([2]) == False
    assert candidate([3]) == False
    assert candidate([3, 3, 1, 2]) == True
    assert candidate([1, 3, 4, 4, 2]) == True
    assert candidate([4]) == False
    assert candidate([1, 4, 2, 4, 3]) == True
    assert candidate([5]) == False
    assert candidate([4, 4, 1, 2, 3]) == True
    assert candidate([6]) == False
    assert candidate([4, 4, 2, 3, 1]) == True
    assert candidate([8]) == False
    assert candidate([9]) == False
    assert candidate([5, 5, 1, 3, 2, 4]) == True
    assert candidate([1, 5, 3, 6, 6, 4, 2]) == True
    assert candidate([5, 4, 6, 6, 3, 2, 1]) == True
    assert candidate([10]) == False
    assert candidate([6, 3, 6, 4, 2, 1, 5]) == True
    assert candidate([6, 3, 6, 5, 1, 2, 4]) == True
    assert candidate([12]) == False
    assert candidate([7, 2, 5, 7, 3, 6, 1, 4]) == True
    assert candidate([1, 2, 8, 8, 6, 5, 4, 3, 7]) == True
    assert candidate([1, 8, 4, 8, 2, 7, 6, 3, 5]) == True
    assert candidate([13]) == False
    assert candidate([14]) == False
    assert candidate([2, 8, 6, 1, 7, 5, 3, 4, 8]) == True
    assert candidate([4, 1, 3, 2, 8, 5, 8, 6, 7]) == True
    assert candidate([15]) == False
    assert candidate([7, 2, 1, 5, 6, 8, 8, 4, 3]) == True
    assert candidate([82]) == False
    assert candidate([1, 8]) == False
    assert candidate([8, 6, 2, 5, 7, 4, 1, 8, 3]) == True
    assert candidate([4, 6, 1, 9, 8, 9, 5, 7, 3, 2]) == True
    assert candidate([1, 13]) == False
    assert candidate([2, 3]) == False
    assert candidate([9, 5, 8, 9, 6, 1, 2, 7, 4, 3]) == True
    assert candidate([1, 2, 10, 9, 10, 5, 6, 4, 8, 7, 3]) == True
    assert candidate([1, 9, 2, 6, 5, 4, 7, 10, 3, 10, 8]) == True
    assert candidate([1, 10, 7, 8, 10, 4, 6, 3, 5, 2, 9]) == True
    assert candidate([8, 2, 1, 4, 3, 10, 9, 5, 10, 7, 6]) == True
    assert candidate([10, 9, 5, 3, 6, 4, 2, 10, 8, 7, 1]) == True
    assert candidate([2, 9]) == False
    assert candidate([1, 4, 5, 10, 11, 2, 9, 7, 6, 11, 3, 8]) == True
    assert candidate([2, 11]) == False
    assert candidate([11, 5, 9, 10, 3, 11, 1, 2, 8, 4, 7, 6]) == True
    assert candidate([11, 9, 8, 1, 12, 4, 2, 15, 16, 10, 13, 6, 3, 16, 7, 5, 14]) == True
    assert candidate([11, 16, 9, 5, 14, 13, 4, 1, 3, 16, 15, 8, 10, 7, 12, 2, 6]) == True
    assert candidate([2, 12]) == False
    assert candidate([17, 1, 18, 11, 9, 4, 7, 6, 3, 21, 16, 14, 10, 8, 20, 21, 5, 2, 12, 19, 15, 13]) == True
    assert candidate([3, 1]) == False
    assert candidate([20, 13, 7, 10, 16, 12, 19, 2, 21, 17, 3, 11, 5, 15, 21, 1, 18, 6, 8, 14, 9, 4]) == True
    assert candidate([8, 19, 16, 17, 20, 15, 11, 4, 22, 3, 13, 10, 1, 18, 9, 12, 22, 7, 6, 2, 5, 21, 14]) == True
    assert candidate([22, 1, 17, 13, 8, 22, 9, 5, 21, 6, 14, 12, 10, 11, 2, 18, 4, 7, 19, 20, 3, 15, 16]) == True
    assert candidate([21, 15, 16, 13, 3, 4, 11, 22, 7, 14, 20, 10, 18, 17, 6, 8, 9, 1, 19, 5, 2, 12, 23, 24, 24]) == True
    assert candidate([22, 24, 24, 12, 17, 15, 14, 16, 8, 11, 23, 5, 2, 10, 6, 21, 9, 13, 3, 20, 19, 7, 4, 18, 1]) == True
    assert candidate([3, 2]) == False
    assert candidate([6, 16, 26, 9, 4, 24, 12, 26, 22, 3, 11, 23, 15, 2, 17, 5, 1, 21, 14, 19, 18, 20, 13, 25, 8, 7, 10]) == True
    assert candidate([29, 24, 5, 6, 4, 25, 9, 8, 21, 13, 27, 7, 20, 18, 3, 15, 23, 28, 29, 19, 17, 10, 22, 26, 1, 11, 12, 14, 16, 2]) == True
    assert candidate([25, 21, 6, 10, 20, 15, 16, 26, 7, 3, 30, 1, 12, 29, 11, 30, 14, 19, 2, 28, 23, 9, 8, 24, 17, 5, 4, 27, 22, 18, 13]) == True
    assert candidate([3, 11]) == False
    assert candidate([2, 25, 20, 30, 4, 6, 1, 29, 15, 11, 10, 19, 14, 12, 32, 3, 21, 27, 16, 17, 28, 13, 5, 32, 8, 24, 22, 7, 31, 23, 18, 26, 9]) == True
    assert candidate([4, 10]) == False
    assert candidate([4, 12]) == False
    assert candidate([5, 9]) == False
    assert candidate([5, 12]) == False
    assert candidate([5, 13]) == False
    assert candidate([4, 29, 5, 24, 19, 1, 8, 31, 18, 21, 9, 28, 32, 27, 10, 17, 22, 2, 11, 15, 13, 23, 6, 16, 7, 30, 12, 33, 14, 25, 33, 26, 3, 20]) == True
    assert candidate([6, 1]) == False
    assert candidate([30, 32, 1, 35, 19, 34, 4, 23, 18, 6, 11, 8, 22, 33, 31, 16, 17, 20, 24, 10, 21, 7, 14, 15, 29, 9, 12, 2, 36, 3, 26, 36, 5, 13, 25, 27, 28]) == True
    assert candidate([5, 34, 42, 17, 9, 44, 40, 24, 38, 21, 30, 14, 39, 11, 18, 36, 4, 43, 12, 32, 2, 6, 45, 46, 37, 47, 8, 3, 26, 1, 31, 28, 16, 20, 22, 35, 25, 15, 10, 29, 7, 27, 19, 33, 41, 47, 23, 13]) == True
    assert candidate([6, 7]) == False
    assert candidate([5, 41, 8, 2, 32, 24, 9, 44, 27, 6, 22, 36, 14, 21, 43, 28, 45, 37, 17, 18, 20, 26, 3, 12, 10, 33, 30, 13, 29, 38, 4, 47, 46, 15, 25, 11, 1, 19, 47, 16, 39, 31, 40, 34, 23, 7, 42, 35]) == True
    assert candidate([6, 10]) == False
    assert candidate([6, 12]) == False
    assert candidate([6, 15]) == False
    assert candidate([7, 9]) == False
    assert candidate([8, 4]) == False
    assert candidate([8, 6]) == False
    assert candidate([26, 35, 9, 3, 46, 33, 13, 8, 47, 27, 17, 40, 15, 20, 37, 12, 16, 44, 34, 2, 14, 30, 1, 29, 10, 11, 25, 18, 43, 42, 6, 5, 47, 38, 41, 32, 24, 31, 7, 4, 45, 19, 39, 22, 28, 36, 21, 23]) == True
    assert candidate([8, 9]) == False
    assert candidate([8, 10]) == False
    assert candidate([8, 13]) == False
    assert candidate([32, 39, 25, 49, 6, 48, 9, 7, 34, 3, 8, 26, 14, 27, 43, 30, 1, 21, 36, 10, 31, 38, 40, 12, 2, 46, 20, 15, 11, 24, 22, 28, 33, 4, 19, 18, 44, 41, 35, 29, 16, 37, 45, 47, 49, 23, 42, 13, 5, 17]) == True
    assert candidate([9, 7]) == False
    assert candidate([18, 35, 44, 41, 8, 33, 28, 9, 3, 14, 43, 56, 6, 10, 25, 53, 61, 22, 17, 23, 32, 50, 31, 13, 1, 29, 45, 34, 30, 48, 36, 58, 46, 15, 4, 7, 52, 60, 16, 12, 54, 19, 24, 40, 26, 55, 49, 42, 21, 38, 2, 20, 57, 61, 5, 37, 47, 27, 39, 11, 51, 59]) == True
    assert candidate([9, 9]) == False
    assert candidate([10, 4]) == False
    assert candidate([10, 11]) == False
    assert candidate([11, 1]) == False
    assert candidate([60, 62, 16, 59, 8, 49, 51, 41, 42, 40, 46, 3, 10, 13, 53, 2, 63, 54, 32, 33, 31, 14, 12, 15, 1, 66, 61, 18, 52, 4, 55, 11, 26, 28, 47, 21, 25, 43, 65, 58, 45, 50, 17, 64, 23, 22, 30, 9, 38, 19, 24, 44, 37, 39, 48, 20, 35, 36, 27, 34, 56, 57, 29, 5, 7, 6, 66]) == True
    assert candidate([46, 9, 21, 14, 24, 15, 6, 58, 22, 40, 63, 39, 49, 65, 30, 5, 43, 36, 29, 55, 67, 45, 61, 35, 67, 56, 16, 23, 50, 17, 19, 13, 26, 66, 47, 59, 2, 51, 27, 28, 31, 1, 44, 42, 53, 57, 11, 25, 4, 54, 37, 20, 48, 52, 41, 32, 10, 7, 64, 34, 60, 12, 33, 38, 3, 18, 62, 8]) == True
    assert candidate([11, 5]) == False
    assert candidate([57, 40, 35, 55, 42, 24, 43, 29, 30, 59, 21, 52, 67, 72, 32, 78, 13, 51, 36, 48, 74, 64, 69, 65, 9, 4, 37, 31, 6, 27, 7, 2, 38, 61, 15, 19, 71, 49, 44, 47, 46, 54, 76, 26, 63, 17, 22, 3, 16, 12, 18, 41, 25, 62, 8, 10, 23, 50, 56, 11, 20, 5, 28, 77, 66, 53, 14, 33, 68, 34, 73, 45, 1, 78, 39, 70, 75, 60, 58]) == True
    assert candidate([14, 38, 18, 10, 21, 9, 67, 68, 23, 19, 80, 13, 74, 75, 32, 55, 65, 45, 5, 28, 43, 8, 17, 42, 40, 44, 31, 1, 7, 25, 6, 47, 27, 50, 4, 76, 63, 52, 71, 34, 83, 56, 77, 81, 16, 12, 60, 79, 46, 41, 24, 35, 33, 2, 49, 70, 78, 36, 48, 69, 26, 66, 37, 72, 61, 30, 22, 58, 20, 39, 82, 64, 73, 59, 57, 3, 51, 29, 83, 53, 15, 54, 11, 62]) == True


def test_check():
    check(isGood)


### Metadata below ###
# question_id = 2892
# question_title = Check if Array is Good
# question_title_slug = check-if-array-is-good
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 233
# question_dislikes = 43