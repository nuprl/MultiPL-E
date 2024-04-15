from typing import List

def countInterestingSubarrays(nums: List[int], modulo: int, k: int) -> int:
    """
    You are given a 0-indexed integer array nums, an integer modulo, and an integer k.
    
    Your task is to find the count of subarrays that are interesting.
    
    A subarray nums[l..r] is interesting if the following condition holds:
    
     * Let cnt be the number of indices i in the range [l, r] such that nums[i] % modulo == k. Then, cnt % modulo == k.
    
    Return an integer denoting the count of interesting subarrays.
    
    Note: A subarray is a contiguous non-empty sequence of elements within an array.
    
    Example 1:
    
    Input: nums = [3,2,4], modulo = 2, k = 1
    Output: 3
    Explanation: In this example the interesting subarrays are:
    The subarray nums[0..0] which is [3].
    - There is only one index, i = 0, in the range [0, 0] that satisfies nums[i] % modulo == k.
    - Hence, cnt = 1 and cnt % modulo == k.
    The subarray nums[0..1] which is [3,2].
    - There is only one index, i = 0, in the range [0, 1] that satisfies nums[i] % modulo == k.
    - Hence, cnt = 1 and cnt % modulo == k.
    The subarray nums[0..2] which is [3,2,4].
    - There is only one index, i = 0, in the range [0, 2] that satisfies nums[i] % modulo == k.
    - Hence, cnt = 1 and cnt % modulo == k.
    It can be shown that there are no other interesting subarrays. So, the answer is 3.
    
    Example 2:
    
    Input: nums = [3,1,9,6], modulo = 3, k = 0
    Output: 2
    Explanation: In this example the interesting subarrays are:
    The subarray nums[0..3] which is [3,1,9,6].
    - There are three indices, i = 0, 2, 3, in the range [0, 3] that satisfy nums[i] % modulo == k.
    - Hence, cnt = 3 and cnt % modulo == k.
    The subarray nums[1..1] which is [1].
    - There is no index, i, in the range [1, 1] that satisfies nums[i] % modulo == k.
    - Hence, cnt = 0 and cnt % modulo == k.
    It can be shown that there are no other interesting subarrays. So, the answer is 2.
    
    Constraints:
    
     * 1 <= nums.length <= 105
     * 1 <= nums[i] <= 109
     * 1 <= modulo <= 109
     * 0 <= k < modulo
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([3, 2, 4], 2, 1) == 3
    assert candidate([3, 1, 9, 6], 3, 0) == 2
    assert candidate([11, 12, 21, 31], 10, 1) == 5
    assert candidate([2, 4], 7, 2) == 0
    assert candidate([2, 7], 7, 0) == 1
    assert candidate([2, 45], 13, 2) == 0
    assert candidate([3, 3], 5, 3) == 0
    assert candidate([3, 4], 8, 3) == 0
    assert candidate([4, 5], 1, 0) == 3
    assert candidate([5, 1], 6, 1) == 2
    assert candidate([7, 2], 7, 0) == 1
    assert candidate([7, 4], 7, 0) == 1
    assert candidate([8, 8], 4, 0) == 0
    assert candidate([9, 2], 2, 0) == 1
    assert candidate([18, 43], 3, 0) == 1
    assert candidate([19, 67], 47, 19) == 0
    assert candidate([20, 8], 41, 8) == 0
    assert candidate([26, 5], 21, 5) == 0
    assert candidate([81, 36], 4, 0) == 1
    assert candidate([2, 1, 5], 9, 1) == 4
    assert candidate([2, 2, 5], 3, 2) == 2
    assert candidate([2, 2, 5], 4, 2) == 2
    assert candidate([2, 3, 2], 6, 2) == 1
    assert candidate([3, 2, 5], 1, 0) == 6
    assert candidate([5, 1, 6], 2, 1) == 3
    assert candidate([5, 2, 8], 2, 0) == 3
    assert candidate([6, 5, 6], 6, 0) == 1
    assert candidate([7, 1, 2], 1, 0) == 6
    assert candidate([7, 2, 9], 4, 1) == 3
    assert candidate([7, 5, 6], 4, 1) == 4
    assert candidate([9, 1, 6], 7, 1) == 4
    assert candidate([40, 1, 24], 41, 1) == 4
    assert candidate([48, 36, 27], 9, 0) == 1
    assert candidate([1, 9, 6, 1], 2, 1) == 6
    assert candidate([2, 2, 1, 2], 3, 2) == 3
    assert candidate([3, 5, 4, 2], 5, 0) == 4
    assert candidate([4, 18, 38, 15], 21, 4) == 0
    assert candidate([6, 6, 1, 4], 7, 6) == 0
    assert candidate([7, 5, 2, 1], 1, 0) == 10
    assert candidate([7, 5, 3, 4], 3, 1) == 6
    assert candidate([8, 6, 5, 6], 3, 0) == 2
    assert candidate([8, 7, 3, 2], 6, 2) == 1
    assert candidate([9, 2, 2, 6], 7, 2) == 3
    assert candidate([9, 7, 4, 1], 2, 1) == 6
    assert candidate([9, 7, 8, 9], 5, 4) == 0
    assert candidate([9, 48, 32, 11], 2, 0) == 6
    assert candidate([53, 44, 40, 37], 2, 0) == 6
    assert candidate([91, 5, 60, 93], 59, 1) == 6
    assert candidate([2, 1, 1, 3, 5], 4, 1) == 6
    assert candidate([2, 2, 5, 4, 3], 5, 2) == 4
    assert candidate([2, 2, 5, 6, 1], 1, 0) == 15
    assert candidate([2, 6, 2, 3, 1], 9, 2) == 3
    assert candidate([2, 7, 4, 8, 5], 2, 0) == 7
    assert candidate([4, 2, 1, 8, 8], 3, 2) == 4
    assert candidate([4, 2, 8, 8, 2], 9, 2) == 2
    assert candidate([5, 6, 3, 9, 3], 9, 3) == 0
    assert candidate([6, 7, 1, 9, 2], 1, 0) == 15
    assert candidate([6, 9, 5, 1, 6], 5, 1) == 7
    assert candidate([7, 3, 6, 2, 6], 1, 0) == 15
    assert candidate([7, 7, 9, 5, 8], 4, 1) == 5
    assert candidate([7, 9, 1, 3, 2], 8, 1) == 5
    assert candidate([8, 6, 9, 4, 4], 9, 4) == 0
    assert candidate([8, 8, 6, 8, 9], 9, 8) == 0
    assert candidate([9, 7, 8, 7, 8], 7, 0) == 3
    assert candidate([26, 9, 14, 4, 24], 26, 0) == 10
    assert candidate([31, 30, 24, 34, 20], 22, 2) == 0
    assert candidate([39, 41, 6, 30, 38], 43, 6) == 0
    assert candidate([1, 2, 7, 1, 6, 6], 5, 1) == 8
    assert candidate([1, 6, 2, 1, 9, 7], 3, 1) == 11
    assert candidate([1, 7, 8, 2, 5, 9], 7, 1) == 10
    assert candidate([2, 4, 6, 6, 5, 1], 8, 6) == 0
    assert candidate([2, 8, 2, 9, 2, 8], 5, 2) == 6
    assert candidate([2, 9, 1, 6, 5, 7], 7, 2) == 5
    assert candidate([2, 9, 1, 6, 6, 7], 9, 6) == 0
    assert candidate([2, 9, 6, 8, 8, 3], 1, 0) == 21
    assert candidate([4, 8, 4, 3, 7, 5], 4, 0) == 6
    assert candidate([4, 9, 4, 9, 7, 7], 9, 0) == 5
    assert candidate([5, 3, 7, 9, 8, 7], 3, 0) == 5
    assert candidate([7, 1, 6, 1, 7, 2], 6, 1) == 7
    assert candidate([7, 3, 1, 9, 1, 3], 5, 1) == 10
    assert candidate([7, 4, 9, 8, 3, 4], 1, 0) == 21
    assert candidate([7, 5, 1, 7, 7, 7], 8, 7) == 0
    assert candidate([8, 4, 5, 6, 7, 4], 4, 0) == 6
    assert candidate([8, 7, 3, 8, 4, 8], 8, 0) == 4
    assert candidate([8, 7, 5, 5, 2, 1], 5, 0) == 6
    assert candidate([8, 18, 36, 50, 12, 37], 18, 0) == 7
    assert candidate([9, 9, 6, 7, 2, 3], 5, 2) == 8
    assert candidate([16, 1, 33, 39, 15, 1], 30, 1) == 12
    assert candidate([17, 25, 9, 20, 41, 26], 38, 3) == 0
    assert candidate([21, 26, 39, 21, 31, 49], 22, 21) == 0
    assert candidate([37, 44, 17, 22, 50, 15], 6, 2) == 4
    assert candidate([40, 10, 31, 40, 30, 32], 50, 40) == 0
    assert candidate([40, 22, 22, 35, 2, 16], 24, 16) == 0
    assert candidate([98, 23, 66, 13, 70, 34], 74, 13) == 0
    assert candidate([1, 1, 4, 8, 3, 2, 7], 9, 1) == 7
    assert candidate([1, 8, 6, 3, 2, 8, 8], 2, 0) == 13
    assert candidate([1, 9, 2, 1, 5, 4, 8], 4, 1) == 8
    assert candidate([4, 6, 8, 3, 4, 3, 4], 7, 4) == 0
    assert candidate([5, 4, 5, 8, 9, 1, 9], 4, 1) == 11
    assert candidate([5, 4, 6, 1, 3, 2, 7], 9, 1) == 16


def test_check():
    check(countInterestingSubarrays)


### Metadata below ###
# question_id = 2915
# question_title = Count of Interesting Subarrays
# question_title_slug = count-of-interesting-subarrays
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 449
# question_dislikes = 62