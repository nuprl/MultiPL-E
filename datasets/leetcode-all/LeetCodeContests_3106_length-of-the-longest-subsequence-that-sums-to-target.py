from typing import List

def lengthOfLongestSubsequence(nums: List[int], target: int) -> int:
    """
    You are given a 0-indexed array of integers nums, and an integer target.
    
    Return the length of the longest subsequence of nums that sums up to target. If no such subsequence exists, return -1.
    
    A subsequence is an array that can be derived from another array by deleting some or no elements without changing the order of the remaining elements.
    
    Example 1:
    
    Input: nums = [1,2,3,4,5], target = 9
    Output: 3
    Explanation: There are 3 subsequences with a sum equal to 9: [4,5], [1,3,5], and [2,3,4]. The longest subsequences are [1,3,5], and [2,3,4]. Hence, the answer is 3.
    
    Example 2:
    
    Input: nums = [4,1,3,2,1,5], target = 7
    Output: 4
    Explanation: There are 5 subsequences with a sum equal to 7: [4,3], [4,1,2], [4,2,1], [1,1,5], and [1,3,2,1]. The longest subsequence is [1,3,2,1]. Hence, the answer is 4.
    
    Example 3:
    
    Input: nums = [1,1,5,4,5], target = 3
    Output: -1
    Explanation: It can be shown that nums has no subsequence that sums up to 3.
    
    
    Constraints:
    
     * 1 <= nums.length <= 1000
     * 1 <= nums[i] <= 1000
     * 1 <= target <= 1000
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4, 5], 9) == 3
    assert candidate([4, 1, 3, 2, 1, 5], 7) == 4
    assert candidate([1, 1, 5, 4, 5], 3) == -1
    assert candidate([1000], 12) == -1
    assert candidate([1000], 1000) == 1
    assert candidate([1, 2], 10) == -1
    assert candidate([1, 1000], 5) == -1
    assert candidate([2, 3], 3) == 1
    assert candidate([2, 3], 5) == 2
    assert candidate([2, 3, 5], 5) == 2
    assert candidate([1, 3, 3, 7], 1000) == -1
    assert candidate([1, 3, 3, 7], 2) == -1
    assert candidate([1, 3, 3, 8], 7) == 3
    assert candidate([1, 1, 2, 1], 2) == 2
    assert candidate([1, 1, 1, 1], 5) == -1
    assert candidate([1, 1, 1, 2], 3) == 3
    assert candidate([9, 12, 8, 4, 11, 13, 15, 7, 5], 84) == 9
    assert candidate([11, 5, 9, 11, 12, 13, 12, 5, 1, 8], 87) == 10
    assert candidate([9, 11, 11, 15, 4, 14, 3, 2, 13, 7], 89) == 10
    assert candidate([11, 13, 6, 13, 10], 53) == 5
    assert candidate([10, 3, 5, 11, 6, 12], 47) == 6
    assert candidate([13, 3, 6, 6, 6, 15, 4], 53) == 7
    assert candidate([1, 6, 15, 6, 14, 13, 14], 69) == 7
    assert candidate([10, 7, 8, 14, 15], 54) == 5
    assert candidate([14, 15, 8, 10, 8, 7], 62) == 6
    assert candidate([7, 9, 14, 14, 9, 14, 5, 12, 10], 94) == 9
    assert candidate([1, 10, 6, 14, 5, 13, 3, 7, 10, 10], 79) == 10
    assert candidate([5, 2, 8, 6, 7, 12, 13, 4, 1], 58) == 9
    assert candidate([12, 8, 2, 4, 1], 27) == 5
    assert candidate([10, 14, 11, 13, 2, 11], 61) == 6
    assert candidate([10, 2, 13, 5, 7, 15], 52) == 6
    assert candidate([3, 1, 10, 1, 10, 1, 2, 9, 5, 13], 55) == 10
    assert candidate([5, 13, 2, 13, 9, 4, 5, 7], 58) == 8
    assert candidate([1, 15, 5, 12, 13, 10, 14, 8], 78) == 8
    assert candidate([7, 4, 14, 10, 13], 48) == 5
    assert candidate([6, 14, 14, 6, 2, 9, 1, 4, 10], 66) == 9
    assert candidate([14, 15, 7, 5, 7, 10, 6, 14, 10, 11], 99) == 10
    assert candidate([15, 13, 8, 8, 6], 50) == 5
    assert candidate([2, 6, 8, 9, 13, 3], 41) == 6
    assert candidate([13, 15, 9, 3, 8, 1, 9, 2, 15, 5], 80) == 10
    assert candidate([5, 13, 9, 11, 6, 1], 45) == 6
    assert candidate([7, 10, 15, 7, 14, 2], 55) == 6
    assert candidate([12, 14, 13, 13, 13], 65) == 5
    assert candidate([12, 8, 7, 9, 3, 10, 3, 8, 2], 62) == 9
    assert candidate([11, 1, 14, 13, 14, 4, 14, 11], 82) == 8
    assert candidate([5, 9, 11, 2, 5, 2, 7, 11, 5, 3], 60) == 10
    assert candidate([5, 15, 3, 13, 14, 15, 10], 75) == 7
    assert candidate([10, 8, 2, 2, 9], 31) == 5
    assert candidate([7, 15, 4, 3, 9, 15, 12, 1, 12], 78) == 9
    assert candidate([3, 1, 12, 15, 5, 10], 46) == 6
    assert candidate([5, 3, 12, 7, 5, 2, 12, 10, 12, 5], 73) == 10
    assert candidate([6, 10, 3, 1, 7, 11, 9, 8, 13, 12], 80) == 10
    assert candidate([11, 3, 4, 11, 9], 38) == 5
    assert candidate([15, 12, 12, 13, 6, 6, 4, 1], 69) == 8
    assert candidate([9, 2, 10, 7, 10, 11, 14, 11, 8], 82) == 9
    assert candidate([4, 4, 3, 9, 6, 8, 4, 7, 7], 52) == 9
    assert candidate([10, 14, 4, 15, 9, 5], 57) == 6
    assert candidate([4, 13, 2, 3, 13, 11, 8, 6], 60) == 8
    assert candidate([1, 7, 8, 14, 15, 9, 8, 10, 13, 7], 92) == 10
    assert candidate([7, 7, 6, 14, 7, 4], 45) == 6
    assert candidate([9, 10, 9, 7, 14, 3, 6, 4, 6], 68) == 9
    assert candidate([15, 13, 14, 5, 7, 13, 11, 14], 92) == 8
    assert candidate([1, 1, 10, 12, 5, 6, 15, 6, 8], 64) == 9
    assert candidate([14, 13, 13, 11, 14, 13, 8], 86) == 7
    assert candidate([3, 14, 4, 2, 10, 3, 7], 43) == 7
    assert candidate([6, 1, 3, 11, 9, 2, 10, 6, 12], 60) == 9
    assert candidate([6, 2, 5, 4, 12], 29) == 5
    assert candidate([7, 11, 15, 1, 9, 9, 11], 63) == 7
    assert candidate([7, 12, 10, 15, 6, 15, 14, 2], 81) == 8
    assert candidate([12, 3, 10, 12, 13, 3, 4, 7, 15], 79) == 9
    assert candidate([14, 6, 11, 2, 10, 1, 12, 9, 2], 67) == 9
    assert candidate([5, 8, 12, 6, 15, 13, 11], 70) == 7
    assert candidate([11, 6, 1, 6, 2, 6, 15], 47) == 7
    assert candidate([12, 7, 15, 10, 5, 4, 7, 12, 12], 84) == 9
    assert candidate([11, 4, 4, 9, 10, 7, 12], 57) == 7
    assert candidate([4, 12, 15, 6, 15, 1, 4, 4, 2], 63) == 9
    assert candidate([3, 13, 4, 15, 1], 36) == 5
    assert candidate([14, 3, 7, 14, 7, 7, 1, 6], 59) == 8
    assert candidate([15, 13, 1, 14, 6, 8], 57) == 6
    assert candidate([14, 2, 3, 10, 15], 44) == 5
    assert candidate([5, 5, 3, 7, 12, 10, 11], 53) == 7
    assert candidate([3, 7, 3, 5, 3, 14, 8], 43) == 7
    assert candidate([5, 7, 9, 14, 9, 14, 4, 1, 4], 67) == 9
    assert candidate([12, 7, 8, 6, 3, 9, 7, 3, 4, 4], 63) == 10
    assert candidate([9, 12, 1, 4, 9, 6, 15, 9, 7], 72) == 9
    assert candidate([9, 13, 12, 10, 4, 9, 9, 4, 4, 13], 87) == 10
    assert candidate([13, 5, 6, 8, 2, 13, 1, 5, 6], 59) == 9
    assert candidate([7, 9, 8, 9, 9, 3, 5], 50) == 7
    assert candidate([15, 1, 14, 8, 2, 1, 10, 15, 15], 81) == 9
    assert candidate([13, 14, 1, 9, 12, 2], 51) == 6
    assert candidate([13, 12, 12, 13, 8, 11, 3, 14, 13], 99) == 9
    assert candidate([2, 2, 1, 12, 10, 7, 11, 5, 5], 55) == 9
    assert candidate([13, 10, 3, 4, 10, 3], 43) == 6
    assert candidate([8, 9, 1, 5, 8, 7, 6, 8], 52) == 8
    assert candidate([10, 1, 4, 10, 9, 13, 14], 61) == 7
    assert candidate([3, 14, 11, 4, 7, 9, 7, 6, 8, 11], 80) == 10
    assert candidate([4, 11, 6, 6, 14, 12, 2, 9, 1], 65) == 9
    assert candidate([9, 2, 15, 12, 15, 6, 4, 12], 75) == 8
    assert candidate([4, 3, 5, 3, 2], 17) == 5
    assert candidate([4, 3, 13, 6, 9], 35) == 5


def test_check():
    check(lengthOfLongestSubsequence)


### Metadata below ###
# question_id = 3106
# question_title = Length of the Longest Subsequence That Sums to Target
# question_title_slug = length-of-the-longest-subsequence-that-sums-to-target
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 141
# question_dislikes = 19