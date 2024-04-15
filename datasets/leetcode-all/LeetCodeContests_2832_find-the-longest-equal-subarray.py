from typing import List

def longestEqualSubarray(nums: List[int], k: int) -> int:
    """
    You are given a 0-indexed integer array nums and an integer k.
    
    A subarray is called equal if all of its elements are equal. Note that the empty subarray is an equal subarray.
    
    Return the length of the longest possible equal subarray after deleting at most k elements from nums.
    
    A subarray is a contiguous, possibly empty sequence of elements within an array.
    
    Example 1:
    
    Input: nums = [1,3,2,3,1,3], k = 3
    Output: 3
    Explanation: It's optimal to delete the elements at index 2 and index 4.
    After deleting them, nums becomes equal to [1, 3, 3, 3].
    The longest equal subarray starts at i = 1 and ends at j = 3 with length equal to 3.
    It can be proven that no longer equal subarrays can be created.
    
    Example 2:
    
    Input: nums = [1,1,2,2,1,1], k = 2
    Output: 4
    Explanation: It's optimal to delete the elements at index 2 and index 3.
    After deleting them, nums becomes equal to [1, 1, 1, 1].
    The array itself is an equal subarray, so the answer is 4.
    It can be proven that no longer equal subarrays can be created.
    
    
    Constraints:
    
     * 1 <= nums.length <= 105
     * 1 <= nums[i] <= nums.length
     * 0 <= k <= nums.length
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 3, 2, 3, 1, 3], 3) == 3
    assert candidate([1, 1, 2, 2, 1, 1], 2) == 4
    assert candidate([1], 0) == 1
    assert candidate([1], 1) == 1
    assert candidate([2, 1], 1) == 1
    assert candidate([2, 2], 1) == 2
    assert candidate([1, 1], 0) == 2
    assert candidate([2, 1], 0) == 1
    assert candidate([1, 2], 1) == 1
    assert candidate([2, 2], 2) == 2
    assert candidate([2, 3, 2], 1) == 2
    assert candidate([3, 2, 2], 1) == 2
    assert candidate([3, 1, 1], 2) == 2
    assert candidate([1, 2, 3], 2) == 1
    assert candidate([1, 2, 3], 3) == 1
    assert candidate([2, 3, 1], 2) == 1
    assert candidate([2, 2, 1], 1) == 2
    assert candidate([1, 3, 2], 3) == 1
    assert candidate([2, 3, 3], 3) == 2
    assert candidate([3, 2, 3], 3) == 2
    assert candidate([2, 2, 3], 0) == 2
    assert candidate([2, 2, 2], 1) == 3
    assert candidate([1, 2, 1], 0) == 1
    assert candidate([3, 3, 3], 2) == 3
    assert candidate([1, 2, 2], 1) == 2
    assert candidate([1, 1, 3], 1) == 2
    assert candidate([1, 2, 3], 1) == 1
    assert candidate([1, 2, 2], 3) == 2
    assert candidate([3, 2, 4, 2], 1) == 2
    assert candidate([3, 4, 2, 1], 0) == 1
    assert candidate([1, 3, 4, 2], 0) == 1
    assert candidate([2, 4, 2, 2], 3) == 3
    assert candidate([4, 2, 2, 3], 1) == 2
    assert candidate([4, 1, 3, 2], 4) == 1
    assert candidate([1, 1, 2, 1], 4) == 3
    assert candidate([2, 4, 1, 3], 3) == 1
    assert candidate([1, 1, 1, 2], 3) == 3
    assert candidate([4, 2, 1, 4], 4) == 2
    assert candidate([1, 1, 4, 1], 4) == 3
    assert candidate([2, 1, 4, 1], 4) == 2
    assert candidate([2, 4, 3, 3], 2) == 2
    assert candidate([1, 2, 2, 4], 3) == 2
    assert candidate([2, 2, 2, 4], 3) == 3
    assert candidate([2, 3, 3, 1], 3) == 2
    assert candidate([2, 4, 1, 4], 1) == 2
    assert candidate([3, 4, 1, 4], 2) == 2
    assert candidate([3, 2, 3, 1], 3) == 2
    assert candidate([3, 1, 1, 3], 3) == 2
    assert candidate([2, 3, 2, 5, 1], 0) == 1
    assert candidate([5, 3, 3, 1, 3], 3) == 3
    assert candidate([4, 4, 2, 2, 4], 1) == 2
    assert candidate([5, 4, 2, 3, 3], 5) == 2
    assert candidate([4, 4, 4, 3, 4], 1) == 4
    assert candidate([1, 5, 5, 5, 3], 2) == 3
    assert candidate([2, 1, 4, 5, 2], 1) == 1
    assert candidate([5, 1, 5, 2, 3], 3) == 2
    assert candidate([5, 3, 2, 3, 4], 1) == 2
    assert candidate([3, 2, 1, 4, 1], 0) == 1
    assert candidate([3, 2, 2, 5, 3], 5) == 2
    assert candidate([2, 2, 4, 4, 2], 1) == 2
    assert candidate([4, 3, 3, 4, 3], 2) == 3
    assert candidate([1, 5, 4, 3, 4], 0) == 1
    assert candidate([4, 4, 2, 5, 3], 0) == 2
    assert candidate([3, 3, 5, 2, 3], 4) == 3
    assert candidate([1, 1, 1, 1, 3], 5) == 4
    assert candidate([1, 3, 2, 5, 1], 1) == 1
    assert candidate([3, 3, 1, 4, 5], 2) == 2
    assert candidate([1, 2, 5, 5, 4], 3) == 2
    assert candidate([3, 1, 5, 3, 1, 1], 0) == 2
    assert candidate([6, 4, 1, 5, 5, 3], 0) == 2
    assert candidate([2, 2, 2, 1, 2, 4], 4) == 4
    assert candidate([1, 1, 2, 2, 6, 2], 1) == 3
    assert candidate([1, 2, 3, 6, 6, 2], 4) == 2
    assert candidate([2, 4, 5, 1, 4, 1], 2) == 2
    assert candidate([1, 5, 6, 4, 6, 3], 3) == 2
    assert candidate([5, 4, 2, 4, 1, 3], 2) == 2
    assert candidate([2, 1, 1, 3, 1, 3], 2) == 3
    assert candidate([2, 4, 6, 6, 6, 4], 3) == 3
    assert candidate([3, 6, 2, 5, 4, 5], 1) == 2
    assert candidate([1, 1, 5, 6, 1, 4], 4) == 3
    assert candidate([4, 6, 6, 6, 2, 4], 3) == 3
    assert candidate([2, 5, 5, 5, 6, 4], 1) == 3
    assert candidate([2, 3, 3, 2, 3, 3], 2) == 4
    assert candidate([5, 2, 5, 3, 3, 2], 6) == 2
    assert candidate([3, 5, 3, 2, 3, 6], 6) == 3
    assert candidate([4, 3, 2, 5, 4, 2], 4) == 2
    assert candidate([1, 2, 4, 2, 1, 3], 3) == 2
    assert candidate([3, 1, 3, 4, 1, 6], 6) == 2
    assert candidate([2, 3, 7, 7, 3, 2, 2], 7) == 3
    assert candidate([5, 6, 7, 7, 4, 4, 2], 5) == 2
    assert candidate([7, 2, 4, 1, 3, 3, 4], 4) == 2
    assert candidate([5, 3, 1, 7, 5, 5, 7], 6) == 3
    assert candidate([4, 2, 6, 2, 3, 4, 6], 6) == 2
    assert candidate([2, 7, 6, 7, 3, 7, 4], 5) == 3
    assert candidate([3, 2, 5, 1, 4, 3, 4], 4) == 2
    assert candidate([2, 3, 3, 7, 2, 5, 1], 2) == 2
    assert candidate([4, 1, 6, 7, 5, 3, 5], 1) == 2
    assert candidate([3, 1, 4, 1, 5, 5, 6], 6) == 2
    assert candidate([1, 5, 5, 7, 7, 7, 4], 0) == 3
    assert candidate([5, 7, 4, 4, 1, 6, 7], 5) == 2


def test_check():
    check(longestEqualSubarray)


### Metadata below ###
# question_id = 2832
# question_title = Find the Longest Equal Subarray
# question_title_slug = find-the-longest-equal-subarray
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 579
# question_dislikes = 14