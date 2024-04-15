from typing import List

def longestAlternatingSubarray(nums: List[int], threshold: int) -> int:
    """
    You are given a 0-indexed integer array nums and an integer threshold.
    
    Find the length of the longest subarray of nums starting at index l and ending at index r (0 <= l <= r < nums.length) that satisfies the following conditions:
    
     * nums[l] % 2 == 0
     * For all indices i in the range [l, r - 1], nums[i] % 2 != nums[i + 1] % 2
     * For all indices i in the range [l, r], nums[i] <= threshold
    
    Return an integer denoting the length of the longest such subarray.
    
    Note: A subarray is a contiguous non-empty sequence of elements within an array.
    
    Example 1:
    
    Input: nums = [3,2,5,4], threshold = 5
    Output: 3
    Explanation: In this example, we can select the subarray that starts at l = 1 and ends at r = 3 => [2,5,4]. This subarray satisfies the conditions.
    Hence, the answer is the length of the subarray, 3. We can show that 3 is the maximum possible achievable length.
    
    Example 2:
    
    Input: nums = [1,2], threshold = 2
    Output: 1
    Explanation: In this example, we can select the subarray that starts at l = 1 and ends at r = 1 => [2].
    It satisfies all the conditions and we can show that 1 is the maximum possible achievable length.
    
    Example 3:
    
    Input: nums = [2,3,4,5], threshold = 4
    Output: 3
    Explanation: In this example, we can select the subarray that starts at l = 0 and ends at r = 2 => [2,3,4].
    It satisfies all the conditions.
    Hence, the answer is the length of the subarray, 3. We can show that 3 is the maximum possible achievable length.
    
    
    Constraints:
    
     * 1 <= nums.length <= 100
     * 1 <= nums[i] <= 100
     * 1 <= threshold <= 100
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([3, 2, 5, 4], 5) == 3
    assert candidate([1, 2], 2) == 1
    assert candidate([2, 3, 4, 5], 4) == 3
    assert candidate([1], 1) == 0
    assert candidate([2], 2) == 1
    assert candidate([3], 3) == 0
    assert candidate([4], 1) == 0
    assert candidate([5], 3) == 0
    assert candidate([6], 5) == 0
    assert candidate([7], 2) == 0
    assert candidate([8], 1) == 0
    assert candidate([9], 7) == 0
    assert candidate([10], 7) == 0
    assert candidate([1, 3], 16) == 0
    assert candidate([1, 6], 2) == 0
    assert candidate([1, 10], 6) == 0
    assert candidate([1, 10], 7) == 0
    assert candidate([2, 2], 18) == 1
    assert candidate([2, 4], 7) == 1
    assert candidate([2, 5], 2) == 1
    assert candidate([2, 6], 15) == 1
    assert candidate([2, 7], 9) == 2
    assert candidate([2, 8], 4) == 1
    assert candidate([2, 8], 8) == 1
    assert candidate([2, 8], 16) == 1
    assert candidate([2, 9], 14) == 2
    assert candidate([3, 1], 9) == 0
    assert candidate([3, 4], 10) == 1
    assert candidate([3, 10], 3) == 0
    assert candidate([4, 2], 11) == 1
    assert candidate([4, 2], 15) == 1
    assert candidate([4, 4], 9) == 1
    assert candidate([4, 7], 8) == 2
    assert candidate([4, 9], 17) == 2
    assert candidate([5, 8], 5) == 0
    assert candidate([5, 8], 15) == 1
    assert candidate([6, 2], 10) == 1
    assert candidate([6, 4], 14) == 1
    assert candidate([6, 4], 16) == 1
    assert candidate([6, 5], 10) == 2
    assert candidate([7, 3], 8) == 0
    assert candidate([7, 4], 7) == 1
    assert candidate([7, 5], 1) == 0
    assert candidate([7, 10], 52) == 1
    assert candidate([7, 17], 31) == 0
    assert candidate([8, 4], 6) == 1
    assert candidate([8, 8], 20) == 1
    assert candidate([9, 2], 11) == 1
    assert candidate([9, 4], 15) == 1
    assert candidate([10, 3], 11) == 2
    assert candidate([10, 4], 7) == 1
    assert candidate([10, 5], 20) == 2
    assert candidate([10, 7], 11) == 2
    assert candidate([10, 8], 4) == 0
    assert candidate([10, 18], 43) == 1
    assert candidate([12, 34], 7) == 0
    assert candidate([12, 35], 8) == 0
    assert candidate([13, 9], 53) == 0
    assert candidate([15, 13], 23) == 0
    assert candidate([15, 15], 18) == 0
    assert candidate([17, 2], 17) == 1
    assert candidate([23, 37], 35) == 0
    assert candidate([24, 11], 54) == 2
    assert candidate([27, 9], 55) == 0
    assert candidate([27, 17], 40) == 0
    assert candidate([33, 4], 43) == 1
    assert candidate([41, 16], 9) == 0
    assert candidate([47, 44], 20) == 0
    assert candidate([49, 39], 52) == 0
    assert candidate([50, 8], 19) == 1
    assert candidate([76, 46], 91) == 1
    assert candidate([1, 1, 7], 4) == 0
    assert candidate([1, 3, 1], 18) == 0
    assert candidate([1, 4, 3], 1) == 0
    assert candidate([1, 5, 3], 8) == 0
    assert candidate([1, 10, 5], 9) == 0
    assert candidate([2, 1, 8], 6) == 2
    assert candidate([2, 10, 5], 7) == 1
    assert candidate([3, 2, 8], 18) == 1
    assert candidate([3, 3, 10], 20) == 1
    assert candidate([3, 4, 2], 19) == 1
    assert candidate([3, 6, 10], 6) == 1
    assert candidate([3, 8, 9], 19) == 2
    assert candidate([4, 3, 1], 4) == 2
    assert candidate([4, 4, 4], 8) == 1
    assert candidate([4, 5, 10], 3) == 0
    assert candidate([4, 10, 2], 4) == 1
    assert candidate([4, 10, 3], 8) == 1
    assert candidate([4, 10, 3], 10) == 2
    assert candidate([4, 40, 8], 45) == 1
    assert candidate([5, 3, 9], 7) == 0
    assert candidate([5, 5, 6], 7) == 1
    assert candidate([6, 2, 2], 16) == 1
    assert candidate([6, 2, 4], 17) == 1
    assert candidate([6, 3, 4], 6) == 3
    assert candidate([6, 5, 2], 17) == 3
    assert candidate([6, 5, 3], 17) == 2
    assert candidate([6, 7, 2], 14) == 3
    assert candidate([7, 1, 10], 9) == 0
    assert candidate([7, 5, 6], 8) == 1


def test_check():
    check(longestAlternatingSubarray)


### Metadata below ###
# question_id = 2866
# question_title = Longest Even Odd Subarray With Threshold
# question_title_slug = longest-even-odd-subarray-with-threshold
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 248
# question_dislikes = 243