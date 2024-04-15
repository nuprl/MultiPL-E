from typing import List

def maxSubarrayLength(nums: List[int], k: int) -> int:
    """
    You are given an integer array nums and an integer k.
    The frequency of an element x is the number of times it occurs in an array.
    An array is called good if the frequency of each element in this array is less than or equal to k.
    Return the length of the longest good subarray of nums.
    A subarray is a contiguous non-empty sequence of elements within an array.
    
    Example 1:
    
    Input: nums = [1,2,3,1,2,3,1,2], k = 2
    Output: 6
    Explanation: The longest possible good subarray is [1,2,3,1,2,3] since the values 1, 2, and 3 occur at most twice in this subarray. Note that the subarrays [2,3,1,2,3,1] and [3,1,2,3,1,2] are also good.
    It can be shown that there are no good subarrays with length more than 6.
    
    Example 2:
    
    Input: nums = [1,2,1,2,1,2,1,2], k = 1
    Output: 2
    Explanation: The longest possible good subarray is [1,2] since the values 1 and 2 occur at most once in this subarray. Note that the subarray [2,1] is also good.
    It can be shown that there are no good subarrays with length more than 2.
    
    Example 3:
    
    Input: nums = [5,5,5,5,5,5,5], k = 4
    Output: 4
    Explanation: The longest possible good subarray is [5,5,5,5] since the value 5 occurs 4 times in this subarray.
    It can be shown that there are no good subarrays with length more than 4.
    
    
    Constraints:
    
    1 <= nums.length <= 105
    1 <= nums[i] <= 109
    1 <= k <= nums.length
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 1, 2, 3, 1, 2], 2) == 6
    assert candidate([1, 2, 1, 2, 1, 2, 1, 2], 1) == 2
    assert candidate([5, 5, 5, 5, 5, 5, 5], 4) == 4
    assert candidate([1], 1) == 1
    assert candidate([2], 1) == 1
    assert candidate([3], 1) == 1
    assert candidate([4], 1) == 1
    assert candidate([5], 1) == 1
    assert candidate([6], 1) == 1
    assert candidate([7], 1) == 1
    assert candidate([8], 1) == 1
    assert candidate([9], 1) == 1
    assert candidate([10], 1) == 1
    assert candidate([1, 11], 2) == 2
    assert candidate([2, 11], 1) == 2
    assert candidate([3, 5], 2) == 2
    assert candidate([4, 6], 2) == 2
    assert candidate([5, 8], 2) == 2
    assert candidate([6, 7], 1) == 2
    assert candidate([7, 9], 2) == 2
    assert candidate([8, 8], 1) == 1
    assert candidate([9, 8], 1) == 2
    assert candidate([10, 5], 1) == 2
    assert candidate([1, 1, 2], 2) == 3
    assert candidate([1, 1, 5], 2) == 3
    assert candidate([1, 2, 3], 1) == 3
    assert candidate([1, 2, 4], 1) == 3
    assert candidate([1, 3, 3], 2) == 3
    assert candidate([1, 3, 5], 1) == 3
    assert candidate([1, 4, 1], 1) == 2
    assert candidate([1, 4, 1], 2) == 3
    assert candidate([1, 5, 1], 2) == 3
    assert candidate([1, 5, 5], 2) == 3
    assert candidate([1, 6, 4], 1) == 3
    assert candidate([1, 6, 4], 2) == 3
    assert candidate([1, 7, 1], 1) == 2
    assert candidate([1, 7, 5], 2) == 3
    assert candidate([1, 8, 2], 1) == 3
    assert candidate([1, 8, 4], 1) == 3
    assert candidate([1, 9, 2], 1) == 3
    assert candidate([1, 9, 2], 2) == 3
    assert candidate([1, 10, 2], 1) == 3
    assert candidate([2, 1, 2], 2) == 3
    assert candidate([2, 2, 3], 1) == 2
    assert candidate([2, 2, 4], 2) == 3
    assert candidate([2, 3, 3], 2) == 3
    assert candidate([2, 3, 4], 2) == 3
    assert candidate([2, 4, 1], 2) == 3
    assert candidate([2, 4, 2], 2) == 3
    assert candidate([2, 5, 2], 1) == 2
    assert candidate([2, 5, 4], 1) == 3
    assert candidate([2, 6, 2], 1) == 2
    assert candidate([2, 6, 3], 2) == 3
    assert candidate([2, 7, 1], 1) == 3
    assert candidate([2, 7, 2], 2) == 3
    assert candidate([2, 8, 2], 2) == 3
    assert candidate([2, 8, 5], 2) == 3
    assert candidate([2, 9, 2], 1) == 2
    assert candidate([2, 9, 5], 1) == 3
    assert candidate([2, 10, 1], 2) == 3
    assert candidate([2, 10, 3], 2) == 3
    assert candidate([3, 1, 1], 1) == 2
    assert candidate([3, 1, 4], 1) == 3
    assert candidate([3, 2, 3], 1) == 2
    assert candidate([3, 2, 4], 1) == 3
    assert candidate([3, 3, 1], 2) == 3
    assert candidate([3, 3, 3], 2) == 2
    assert candidate([3, 4, 1], 2) == 3
    assert candidate([3, 4, 2], 2) == 3
    assert candidate([3, 5, 4], 2) == 3
    assert candidate([3, 5, 5], 1) == 2
    assert candidate([3, 6, 2], 2) == 3
    assert candidate([3, 6, 4], 2) == 3
    assert candidate([3, 7, 5], 1) == 3
    assert candidate([3, 7, 5], 2) == 3
    assert candidate([3, 8, 1], 2) == 3
    assert candidate([3, 8, 2], 1) == 3
    assert candidate([3, 9, 1], 1) == 3
    assert candidate([3, 9, 4], 2) == 3
    assert candidate([3, 10, 1], 1) == 3
    assert candidate([3, 10, 3], 2) == 3
    assert candidate([4, 1, 2], 1) == 3
    assert candidate([4, 1, 5], 2) == 3
    assert candidate([4, 2, 4], 2) == 3
    assert candidate([4, 2, 5], 2) == 3
    assert candidate([4, 3, 1], 1) == 3
    assert candidate([4, 3, 3], 1) == 2
    assert candidate([4, 4, 3], 2) == 3
    assert candidate([4, 4, 5], 2) == 3
    assert candidate([4, 5, 2], 2) == 3
    assert candidate([4, 5, 4], 2) == 3
    assert candidate([4, 6, 1], 2) == 3
    assert candidate([4, 6, 2], 1) == 3
    assert candidate([4, 7, 1], 1) == 3
    assert candidate([4, 7, 4], 2) == 3
    assert candidate([4, 8, 2], 2) == 3
    assert candidate([4, 8, 4], 2) == 3
    assert candidate([4, 9, 2], 1) == 3
    assert candidate([4, 9, 3], 2) == 3
    assert candidate([4, 10, 2], 1) == 3


def test_check():
    check(maxSubarrayLength)


### Metadata below ###
# question_id = 3225
# question_title = Length of Longest Subarray With at Most K Frequency
# question_title_slug = length-of-longest-subarray-with-at-most-k-frequency
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 139
# question_dislikes = 5