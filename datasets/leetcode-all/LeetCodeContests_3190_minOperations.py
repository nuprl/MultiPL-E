from typing import List

def minOperations(nums1: List[int], nums2: List[int]) -> int:
    """
    You are given two 0-indexed integer arrays, nums1 and nums2, both having length n.
    You are allowed to perform a series of operations (possibly none).
    In an operation, you select an index i in the range [0, n - 1] and swap the values of nums1[i] and nums2[i].
    Your task is to find the minimum number of operations required to satisfy the following conditions:
    
    nums1[n - 1] is equal to the maximum value among all elements of nums1, i.e., nums1[n - 1] = max(nums1[0], nums1[1], ..., nums1[n - 1]).
    nums2[n - 1] is equal to the maximum value among all elements of nums2, i.e., nums2[n - 1] = max(nums2[0], nums2[1], ..., nums2[n - 1]).
    
    Return an integer denoting the minimum number of operations needed to meet both conditions, or -1 if it is impossible to satisfy both conditions.
    
    Example 1:
    
    Input: nums1 = [1,2,7], nums2 = [4,5,3]
    Output: 1
    Explanation: In this example, an operation can be performed using index i = 2.
    When nums1[2] and nums2[2] are swapped, nums1 becomes [1,2,3] and nums2 becomes [4,5,7].
    Both conditions are now satisfied.
    It can be shown that the minimum number of operations needed to be performed is 1.
    So, the answer is 1.
    
    Example 2:
    
    Input: nums1 = [2,3,4,5,9], nums2 = [8,8,4,4,4]
    Output: 2
    Explanation: In this example, the following operations can be performed:
    First operation using index i = 4.
    When nums1[4] and nums2[4] are swapped, nums1 becomes [2,3,4,5,4], and nums2 becomes [8,8,4,4,9].
    Another operation using index i = 3.
    When nums1[3] and nums2[3] are swapped, nums1 becomes [2,3,4,4,4], and nums2 becomes [8,8,4,5,9].
    Both conditions are now satisfied.
    It can be shown that the minimum number of operations needed to be performed is 2.
    So, the answer is 2.   
    
    Example 3:
    
    Input: nums1 = [1,5,4], nums2 = [2,5,3]
    Output: -1
    Explanation: In this example, it is not possible to satisfy both conditions. 
    So, the answer is -1.
    
    
    Constraints:
    
    1 <= n == nums1.length == nums2.length <= 1000
    1 <= nums1[i] <= 109
    1 <= nums2[i] <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 7], [4, 5, 3]) == 1
    assert candidate([2, 3, 4, 5, 9], [8, 8, 4, 4, 4]) == 2
    assert candidate([1, 5, 4], [2, 5, 3]) == -1
    assert candidate([1], [1]) == 0
    assert candidate([1, 2], [2, 1]) == 1
    assert candidate([1, 1, 10], [1, 5, 1]) == 1
    assert candidate([1, 4, 16], [16, 16, 16]) == 0
    assert candidate([1, 5, 15], [1, 1, 1]) == 0
    assert candidate([2, 5, 7], [2, 2, 2]) == 0
    assert candidate([8, 9, 10], [10, 9, 9]) == 1
    assert candidate([9, 14, 14], [14, 11, 14]) == 0
    assert candidate([16, 16, 16], [6, 7, 16]) == 0
    assert candidate([19, 7, 19], [5, 19, 19]) == 0
    assert candidate([1, 1, 8, 9], [1, 7, 1, 1]) == 1
    assert candidate([1, 5, 9, 9], [9, 9, 8, 9]) == 0
    assert candidate([1, 7, 7, 7], [7, 3, 3, 7]) == 0
    assert candidate([10, 18, 12, 12], [19, 6, 5, 12]) == -1
    assert candidate([12, 9, 11, 12], [3, 9, 9, 9]) == 0
    assert candidate([15, 54, 22, 54], [54, 19, 54, 54]) == 0
    assert candidate([20, 20, 20, 20], [5, 8, 19, 20]) == 0
    assert candidate([1, 3, 4, 6, 7], [1, 1, 1, 1, 1]) == 0
    assert candidate([1, 11, 17, 1, 18], [1, 1, 1, 18, 1]) == 1
    assert candidate([3, 3, 3, 14, 14], [3, 3, 4, 3, 3]) == 1
    assert candidate([4, 4, 8, 4, 17], [4, 8, 4, 14, 4]) == 2
    assert candidate([4, 12, 11, 11, 12], [12, 6, 12, 12, 12]) == 0
    assert candidate([6, 21, 87, 63, 87], [87, 87, 23, 63, 63]) == 2
    assert candidate([10, 6, 6, 6, 10], [6, 6, 10, 10, 6]) == 2
    assert candidate([16, 12, 15, 15, 16], [8, 16, 16, 15, 15]) == 2
    assert candidate([17, 3, 6, 6, 17], [3, 17, 6, 14, 6]) == 2
    assert candidate([19, 13, 18, 18, 19], [5, 13, 13, 13, 13]) == 0
    assert candidate([20, 20, 53, 20, 68], [20, 28, 20, 61, 20]) == 2
    assert candidate([6, 6, 2, 4, 4, 6], [1, 1, 6, 4, 4, 4]) == 1
    assert candidate([8, 6, 6, 6, 7, 8], [5, 8, 8, 8, 7, 7]) == 2
    assert candidate([15, 1, 15, 6, 12, 15], [1, 15, 2, 15, 15, 15]) == 0
    assert candidate([17, 13, 19, 9, 6, 14], [17, 14, 15, 1, 19, 19]) == -1
    assert candidate([20, 8, 10, 12, 17, 20], [7, 20, 20, 20, 20, 20]) == 0
    assert candidate([20, 18, 15, 11, 17, 20], [7, 15, 13, 7, 20, 12]) == -1
    assert candidate([20, 20, 20, 20, 19, 20], [3, 6, 7, 15, 20, 20]) == 0
    assert candidate([28, 43, 79, 32, 40, 3], [95, 25, 74, 16, 82, 56]) == -1
    assert candidate([29, 81, 58, 99, 41, 36], [15, 34, 47, 57, 31, 95]) == -1
    assert candidate([1, 1, 4, 1, 7, 1, 15], [1, 1, 1, 4, 1, 9, 1]) == 2
    assert candidate([1, 4, 4, 4, 7, 4, 9], [9, 9, 4, 6, 4, 9, 4]) == 2
    assert candidate([2, 88, 17, 88, 68, 68, 88], [88, 16, 88, 68, 68, 68, 68]) == 2
    assert candidate([3, 3, 5, 3, 3, 3, 18], [3, 4, 3, 11, 13, 14, 3]) == 2
    assert candidate([3, 41, 98, 71, 71, 71, 98], [98, 98, 49, 71, 85, 94, 71]) == 2
    assert candidate([5, 5, 27, 53, 5, 59, 65], [5, 16, 5, 5, 58, 5, 5]) == 2
    assert candidate([5, 6, 11, 11, 13, 11, 14], [14, 14, 11, 11, 11, 14, 11]) == 2
    assert candidate([6, 5, 1, 10, 8, 4, 5], [3, 8, 8, 3, 6, 1, 4]) == -1
    assert candidate([14, 3, 4, 4, 4, 4, 14], [2, 14, 4, 4, 5, 12, 4]) == 2
    assert candidate([14, 28, 68, 68, 65, 67, 68], [68, 68, 49, 64, 68, 67, 67]) == 3
    assert candidate([19, 19, 8, 9, 10, 13, 19], [1, 5, 19, 19, 19, 13, 13]) == 3
    assert candidate([20, 6, 20, 20, 20, 20, 20], [3, 20, 7, 9, 13, 14, 20]) == 0
    assert candidate([85, 85, 62, 85, 78, 84, 85], [5, 37, 85, 76, 85, 85, 85]) == 0
    assert candidate([1, 2, 2, 2, 2, 2, 2, 10], [10, 2, 2, 2, 7, 8, 9, 2]) == 1
    assert candidate([1, 9, 3, 3, 4, 9, 9, 9], [9, 2, 9, 9, 9, 6, 8, 9]) == 0
    assert candidate([3, 3, 4, 3, 3, 3, 3, 8], [3, 3, 3, 5, 7, 7, 8, 3]) == 2
    assert candidate([4, 8, 11, 19, 16, 16, 19, 19], [19, 19, 19, 13, 16, 16, 16, 16]) == 3
    assert candidate([8, 20, 4, 9, 9, 4, 4, 20], [9, 14, 10, 1, 1, 20, 16, 15]) == 2
    assert candidate([9, 9, 1, 2, 2, 6, 8, 9], [1, 1, 9, 2, 2, 2, 2, 2]) == 1
    assert candidate([10, 4, 10, 9, 10, 10, 10, 10], [4, 10, 9, 9, 9, 9, 9, 9]) == 1
    assert candidate([13, 95, 19, 56, 59, 95, 95, 95], [95, 14, 95, 95, 95, 83, 88, 95]) == 0
    assert candidate([19, 7, 19, 8, 9, 15, 9, 19], [7, 19, 7, 19, 9, 9, 18, 9]) == 3
    assert candidate([19, 19, 3, 3, 15, 16, 3, 19], [2, 2, 3, 7, 3, 3, 17, 3]) == 2
    assert candidate([1, 8, 8, 5, 8, 8, 8, 7, 8], [8, 2, 4, 8, 5, 6, 6, 8, 8]) == 0
    assert candidate([1, 10, 10, 5, 10, 8, 10, 10, 10], [10, 2, 4, 10, 7, 8, 8, 8, 8]) == 2
    assert candidate([2, 7, 7, 7, 7, 7, 7, 17, 18], [18, 7, 10, 11, 13, 15, 17, 7, 7]) == 2
    assert candidate([3, 13, 22, 24, 13, 13, 13, 81, 91], [91, 13, 13, 13, 45, 59, 71, 13, 13]) == 4
    assert candidate([4, 4, 9, 4, 16, 4, 17, 4, 18], [4, 8, 4, 14, 4, 16, 4, 18, 4]) == 4
    assert candidate([6, 9, 65, 13, 65, 65, 28, 28, 65], [65, 65, 13, 65, 24, 27, 28, 34, 28]) == 4
    assert candidate([8, 3, 5, 6, 6, 3, 3, 3, 8], [1, 3, 3, 3, 3, 7, 7, 8, 3]) == 3
    assert candidate([10, 1, 10, 10, 10, 9, 9, 9, 10], [1, 10, 5, 6, 8, 9, 9, 10, 9]) == 2
    assert candidate([15, 15, 3, 5, 15, 15, 9, 13, 15], [1, 2, 15, 15, 6, 8, 9, 9, 9]) == 2
    assert candidate([16, 3, 3, 7, 3, 11, 3, 3, 16], [2, 3, 6, 3, 10, 3, 15, 16, 3]) == 4
    assert candidate([16, 3, 16, 7, 16, 16, 10, 10, 16], [2, 16, 4, 16, 9, 10, 10, 13, 10]) == 3
    assert candidate([80, 80, 18, 39, 39, 62, 39, 39, 80], [2, 10, 80, 39, 42, 39, 66, 66, 39]) == 4
    assert candidate([1, 1, 1, 1, 1, 1, 1, 7, 1, 9], [9, 1, 3, 3, 3, 5, 5, 1, 9, 1]) == 2
    assert candidate([1, 2, 2, 2, 2, 5, 8, 2, 2, 9], [9, 2, 2, 2, 4, 2, 2, 9, 9, 2]) == 3
    assert candidate([1, 2, 18, 18, 10, 18, 18, 17, 18, 18], [18, 18, 5, 5, 18, 13, 14, 18, 18, 18]) == 0
    assert candidate([1, 3, 1, 1, 1, 1, 16, 16, 1, 19], [1, 1, 7, 7, 9, 12, 1, 1, 18, 1]) == 4
    assert candidate([1, 9, 3, 9, 4, 5, 7, 8, 8, 9], [9, 1, 9, 3, 9, 9, 7, 7, 7, 7]) == 4
    assert candidate([2, 2, 2, 2, 10, 11, 2, 2, 2, 20], [2, 3, 9, 9, 2, 2, 12, 14, 19, 2]) == 3
    assert candidate([3, 15, 6, 7, 7, 10, 7, 7, 15, 15], [15, 6, 15, 7, 9, 7, 12, 13, 7, 7]) == 4
    assert candidate([5, 20, 20, 8, 8, 12, 20, 19, 20, 20], [20, 6, 7, 20, 20, 20, 15, 20, 20, 20]) == 0
    assert candidate([8, 8, 8, 8, 8, 8, 8, 8, 6, 8], [1, 2, 3, 4, 4, 5, 5, 5, 8, 8]) == 0
    assert candidate([9, 3, 3, 3, 3, 6, 7, 7, 3, 9], [3, 3, 4, 5, 5, 3, 3, 3, 7, 3]) == 4
    assert candidate([9, 8, 6, 2, 1, 10, 9, 7, 9, 4], [6, 2, 8, 2, 5, 3, 6, 5, 6, 10]) == -1
    assert candidate([10, 2, 2, 2, 3, 2, 2, 2, 2, 10], [1, 10, 2, 2, 2, 6, 6, 8, 10, 2]) == 3
    assert candidate([12, 19, 10, 4, 17, 12, 18, 6, 7, 7], [20, 5, 15, 7, 10, 8, 2, 16, 14, 1]) == -1
    assert candidate([17, 31, 31, 34, 31, 42, 31, 65, 31, 89], [89, 31, 32, 31, 37, 31, 45, 31, 84, 31]) == 4
    assert candidate([19, 7, 7, 19, 9, 19, 19, 19, 17, 19], [6, 19, 19, 8, 19, 10, 10, 16, 19, 19]) == 0
    assert candidate([20, 20, 7, 20, 8, 11, 11, 11, 11, 20], [5, 6, 20, 7, 20, 11, 15, 18, 20, 11]) == 4
    assert candidate([90, 7, 90, 13, 90, 33, 33, 83, 33, 90], [6, 90, 13, 90, 22, 33, 62, 33, 86, 33]) == 4
    assert candidate([1, 1, 1, 1, 1, 10, 1, 15, 16, 17, 20], [1, 2, 2, 9, 10, 1, 14, 1, 1, 1, 1]) == 5
    assert candidate([1, 1, 1, 1, 3, 1, 1, 6, 1, 1, 8], [1, 1, 1, 3, 1, 3, 5, 1, 6, 7, 1]) == 3
    assert candidate([1, 2, 2, 6, 2, 2, 2, 2, 2, 2, 10], [10, 2, 4, 2, 6, 6, 7, 8, 9, 9, 2]) == 2
    assert candidate([1, 2, 3, 20, 8, 8, 19, 19, 19, 20, 20], [20, 20, 20, 5, 20, 20, 20, 19, 19, 19, 19]) == 3
    assert candidate([1, 2, 4, 9, 5, 9, 9, 6, 7, 6, 9], [9, 9, 9, 4, 9, 5, 5, 6, 6, 7, 6]) == 5
    assert candidate([1, 7, 7, 7, 7, 7, 13, 16, 7, 19, 19], [19, 7, 10, 11, 11, 12, 7, 7, 16, 7, 7]) == 4
    assert candidate([1, 10, 4, 10, 10, 10, 6, 10, 7, 9, 10], [10, 3, 10, 5, 5, 6, 10, 7, 10, 9, 9]) == 4
    assert candidate([1, 20, 20, 7, 20, 20, 13, 17, 17, 19, 20], [20, 2, 4, 20, 7, 7, 20, 20, 17, 17, 17]) == 4


def test_check():
    check(minOperations)


### Metadata below ###
# question_id = 3190
# question_title = Minimum Operations to Maximize Last Elements in Arrays
# question_title_slug = minimum-operations-to-maximize-last-elements-in-arrays
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 152
# question_dislikes = 12