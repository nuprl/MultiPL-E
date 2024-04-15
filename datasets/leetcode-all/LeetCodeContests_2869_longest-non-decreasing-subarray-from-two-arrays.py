from typing import List

def maxNonDecreasingLength(nums1: List[int], nums2: List[int]) -> int:
    """
    You are given two 0-indexed integer arrays nums1 and nums2 of length n.
    
    Let's define another 0-indexed integer array, nums3, of length n. For each index i in the range [0, n - 1], you can assign either nums1[i] or nums2[i] to nums3[i].
    
    Your task is to maximize the length of the longest non-decreasing subarray in nums3 by choosing its values optimally.
    
    Return an integer representing the length of the longest non-decreasing subarray in nums3.
    
    Note: A subarray is a contiguous non-empty sequence of elements within an array.
    
    Example 1:
    
    Input: nums1 = [2,3,1], nums2 = [1,2,1]
    Output: 2
    Explanation: One way to construct nums3 is:
    nums3 = [nums1[0], nums2[1], nums2[2]] => [2,2,1].
    The subarray starting from index 0 and ending at index 1, [2,2], forms a non-decreasing subarray of length 2.
    We can show that 2 is the maximum achievable length.
    
    Example 2:
    
    Input: nums1 = [1,3,2,1], nums2 = [2,2,3,4]
    Output: 4
    Explanation: One way to construct nums3 is:
    nums3 = [nums1[0], nums2[1], nums2[2], nums2[3]] => [1,2,3,4].
    The entire array forms a non-decreasing subarray of length 4, making it the maximum achievable length.
    
    Example 3:
    
    Input: nums1 = [1,1], nums2 = [2,2]
    Output: 2
    Explanation: One way to construct nums3 is:
    nums3 = [nums1[0], nums1[1]] => [1,1].
    The entire array forms a non-decreasing subarray of length 2, making it the maximum achievable length.
    
    
    Constraints:
    
     * 1 <= nums1.length == nums2.length == n <= 105
     * 1 <= nums1[i], nums2[i] <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([2, 3, 1], [1, 2, 1]) == 2
    assert candidate([1, 3, 2, 1], [2, 2, 3, 4]) == 4
    assert candidate([1, 1], [2, 2]) == 2
    assert candidate([1], [1]) == 1
    assert candidate([1], [2]) == 1
    assert candidate([1, 4], [4, 19]) == 2
    assert candidate([1, 8], [10, 1]) == 2
    assert candidate([1, 11], [9, 1]) == 2
    assert candidate([1, 13], [18, 1]) == 2
    assert candidate([1, 19], [12, 20]) == 2
    assert candidate([1, 19], [18, 9]) == 2
    assert candidate([2, 20], [1, 18]) == 2
    assert candidate([3, 5], [13, 3]) == 2
    assert candidate([3, 6], [10, 12]) == 2
    assert candidate([3, 7], [8, 3]) == 2
    assert candidate([3, 8], [15, 2]) == 2
    assert candidate([3, 9], [11, 3]) == 2
    assert candidate([3, 12], [7, 3]) == 2
    assert candidate([3, 12], [20, 3]) == 2
    assert candidate([3, 20], [5, 17]) == 2
    assert candidate([4, 2], [10, 4]) == 2
    assert candidate([4, 12], [6, 4]) == 2
    assert candidate([4, 15], [3, 3]) == 2
    assert candidate([5, 5], [19, 8]) == 2
    assert candidate([5, 7], [19, 5]) == 2
    assert candidate([5, 11], [2, 5]) == 2
    assert candidate([5, 14], [8, 3]) == 2
    assert candidate([5, 15], [16, 5]) == 2
    assert candidate([5, 20], [4, 5]) == 2
    assert candidate([5, 20], [10, 17]) == 2
    assert candidate([6, 7], [3, 2]) == 2
    assert candidate([6, 14], [5, 5]) == 2
    assert candidate([6, 14], [18, 6]) == 2
    assert candidate([6, 16], [16, 20]) == 2
    assert candidate([6, 17], [4, 20]) == 2
    assert candidate([7, 3], [16, 7]) == 2
    assert candidate([7, 4], [15, 7]) == 2
    assert candidate([7, 9], [3, 18]) == 2
    assert candidate([7, 10], [10, 14]) == 2
    assert candidate([7, 11], [5, 7]) == 2
    assert candidate([7, 12], [20, 5]) == 2
    assert candidate([7, 20], [12, 8]) == 2
    assert candidate([8, 5], [13, 8]) == 2
    assert candidate([8, 11], [9, 3]) == 2
    assert candidate([8, 16], [9, 8]) == 2
    assert candidate([8, 17], [2, 8]) == 2
    assert candidate([8, 18], [16, 12]) == 2
    assert candidate([4, 2], [10, 4]) == 2
    assert candidate([9, 1], [11, 9]) == 2
    assert candidate([9, 6], [8, 14]) == 2
    assert candidate([9, 9], [11, 8]) == 2
    assert candidate([9, 12], [20, 9]) == 2
    assert candidate([9, 15], [20, 9]) == 2
    assert candidate([9, 16], [11, 15]) == 2
    assert candidate([9, 19], [17, 9]) == 2
    assert candidate([10, 19], [17, 10]) == 2
    assert candidate([11, 1], [3, 11]) == 2
    assert candidate([11, 3], [9, 17]) == 2
    assert candidate([11, 6], [9, 17]) == 2
    assert candidate([11, 19], [17, 11]) == 2
    assert candidate([11, 69], [26, 62]) == 2
    assert candidate([12, 1], [10, 12]) == 2
    assert candidate([12, 10], [16, 2]) == 1
    assert candidate([13, 6], [20, 13]) == 2
    assert candidate([13, 16], [5, 13]) == 2
    assert candidate([14, 2], [2, 14]) == 2
    assert candidate([14, 4], [2, 13]) == 2
    assert candidate([15, 10], [17, 15]) == 2
    assert candidate([15, 11], [19, 2]) == 1
    assert candidate([16, 9], [5, 16]) == 2
    assert candidate([16, 17], [9, 16]) == 2
    assert candidate([17, 8], [11, 10]) == 1
    assert candidate([17, 10], [9, 17]) == 2
    assert candidate([17, 10], [18, 7]) == 1
    assert candidate([17, 11], [19, 17]) == 2
    assert candidate([17, 14], [17, 17]) == 2
    assert candidate([17, 17], [15, 17]) == 2
    assert candidate([17, 17], [16, 1]) == 2
    assert candidate([18, 4], [1, 6]) == 2
    assert candidate([18, 9], [10, 18]) == 2
    assert candidate([18, 9], [17, 18]) == 2
    assert candidate([18, 10], [1, 18]) == 2
    assert candidate([18, 104], [117, 18]) == 2
    assert candidate([19, 2], [1, 19]) == 2
    assert candidate([19, 5], [15, 5]) == 1
    assert candidate([19, 5], [52, 10]) == 1
    assert candidate([19, 15], [12, 19]) == 2
    assert candidate([19, 15], [18, 4]) == 1
    assert candidate([20, 1], [1, 20]) == 2
    assert candidate([20, 5], [2, 3]) == 2
    assert candidate([20, 5], [14, 8]) == 1
    assert candidate([20, 7], [12, 20]) == 2
    assert candidate([20, 12], [2, 20]) == 2
    assert candidate([20, 16], [8, 5]) == 2
    assert candidate([20, 18], [18, 20]) == 2
    assert candidate([25, 83], [28, 18]) == 2
    assert candidate([26, 47], [87, 26]) == 2
    assert candidate([28, 41], [87, 3]) == 2
    assert candidate([36, 53], [66, 3]) == 2
    assert candidate([44, 34], [53, 44]) == 2


def test_check():
    check(maxNonDecreasingLength)


### Metadata below ###
# question_id = 2869
# question_title = Longest Non-decreasing Subarray From Two Arrays
# question_title_slug = longest-non-decreasing-subarray-from-two-arrays
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 505
# question_dislikes = 10