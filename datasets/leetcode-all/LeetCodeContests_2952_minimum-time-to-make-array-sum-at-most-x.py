from typing import List

def minimumTime(nums1: List[int], nums2: List[int], x: int) -> int:
    """
    You are given two 0-indexed integer arrays nums1 and nums2 of equal length. Every second, for all indices 0 <= i < nums1.length, value of nums1[i] is incremented by nums2[i]. After this is done, you can do the following operation:
    
     * Choose an index 0 <= i < nums1.length and make nums1[i] = 0.
    
    You are also given an integer x.
    
    Return the minimum time in which you can make the sum of all elements of nums1 to be less than or equal to x, or -1 if this is not possible.
    
    Example 1:
    
    Input: nums1 = [1,2,3], nums2 = [1,2,3], x = 4
    Output: 3
    Explanation:
    For the 1st second, we apply the operation on i = 0. Therefore nums1 = [0,2+2,3+3] = [0,4,6].
    For the 2nd second, we apply the operation on i = 1. Therefore nums1 = [0+1,0,6+3] = [1,0,9].
    For the 3rd second, we apply the operation on i = 2. Therefore nums1 = [1+1,0+2,0] = [2,2,0].
    Now sum of nums1 = 4. It can be shown that these operations are optimal, so we return 3.
    
    Example 2:
    
    Input: nums1 = [1,2,3], nums2 = [3,3,3], x = 4
    Output: -1
    Explanation: It can be shown that the sum of nums1 will always be greater than x, no matter which operations are performed.
    
    
    Constraints:
    
     * 1 <= nums1.length <= 103
     * 1 <= nums1[i] <= 103
     * 0 <= nums2[i] <= 103
     * nums1.length == nums2.length
     * 0 <= x <= 106
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3], [1, 2, 3], 4) == 3
    assert candidate([1, 2, 3], [3, 3, 3], 4) == -1
    assert candidate([4, 4, 9, 10], [4, 4, 1, 3], 16) == 4
    assert candidate([5, 3], [3, 2], 4) == 2
    assert candidate([4, 5, 3, 2, 3, 9, 5, 7, 10, 4], [4, 4, 0, 4, 1, 2, 4, 0, 4, 0], 47) == -1
    assert candidate([7, 9, 8, 5, 8, 3], [0, 1, 4, 2, 3, 1], 37) == 2
    assert candidate([8, 2, 3], [1, 4, 2], 13) == 0
    assert candidate([4, 7, 2, 3, 4, 3, 10, 8], [3, 4, 0, 1, 1, 0, 2, 2], 36) == 4
    assert candidate([2, 10, 10, 4, 6, 3], [1, 0, 0, 1, 3, 1], 35) == 0
    assert candidate([9, 5, 3], [4, 1, 3], 17) == 0
    assert candidate([1, 7, 9, 4, 8, 8, 1], [2, 2, 3, 2, 0, 1, 0], 20) == 6
    assert candidate([9, 2, 8, 3, 1, 9, 7, 6], [0, 3, 4, 1, 3, 4, 2, 1], 40) == 8
    assert candidate([10], [3], 10) == 0
    assert candidate([7, 6, 8, 2, 8, 9, 3, 3], [2, 2, 4, 0, 0, 2, 2, 3], 45) == 5
    assert candidate([4, 9, 5, 2, 3], [4, 2, 0, 4, 0], 18) == 3
    assert candidate([2, 10, 2, 7, 8, 9, 7, 6, 6], [4, 2, 1, 4, 3, 2, 4, 4, 4], 55) == -1
    assert candidate([6, 8, 10, 7, 10, 9], [4, 2, 0, 4, 4, 2], 38) == 5
    assert candidate([9, 2, 8, 5, 8, 3, 5, 2, 2], [4, 3, 4, 2, 0, 1, 4, 4, 2], 41) == -1
    assert candidate([5, 3, 2, 3, 10, 4, 7, 9, 1, 10], [2, 0, 2, 0, 3, 3, 4, 4, 0, 1], 30) == -1
    assert candidate([2, 3, 5], [0, 0, 1], 8) == 1
    assert candidate([7, 9, 7, 9], [4, 2, 0, 4], 32) == 0
    assert candidate([8, 5, 6, 4, 7, 6, 3, 9, 4], [0, 4, 2, 4, 3, 3, 1, 4, 4], 38) == -1
    assert candidate([3, 1, 1, 1], [0, 0, 3, 0], 3) == 2
    assert candidate([6, 6, 8, 7, 1, 7], [2, 2, 1, 1, 2, 3], 27) == 5
    assert candidate([10, 5], [1, 3], 14) == 1
    assert candidate([10, 7, 1, 2, 6], [4, 3, 2, 2, 4], 17) == -1
    assert candidate([9, 5, 6, 1, 9, 4, 5, 7], [0, 4, 0, 2, 2, 3, 2, 4], 24) == -1
    assert candidate([4, 1, 2, 4, 10, 7, 8], [0, 2, 0, 4, 0, 2, 1], 18) == 5
    assert candidate([4], [0], 4) == 0
    assert candidate([4, 7, 1, 7, 5, 10], [0, 4, 3, 2, 3, 1], 29) == 4
    assert candidate([9, 8, 9, 7, 4, 6, 8, 6, 4], [4, 3, 3, 3, 1, 2, 2, 1, 0], 42) == -1
    assert candidate([8, 3, 2], [3, 1, 3], 7) == 3
    assert candidate([6, 5, 2, 8, 8, 1, 6, 4], [1, 2, 1, 0, 1, 0, 3, 1], 23) == 6
    assert candidate([3, 8, 5, 4, 10, 2], [4, 1, 4, 2, 1, 0], 26) == 4
    assert candidate([5, 3], [0, 3], 4) == 2
    assert candidate([8], [4], 7) == 1
    assert candidate([1, 8, 6, 8, 6], [3, 0, 2, 4, 0], 16) == 4
    assert candidate([8, 6], [0, 3], 14) == 0
    assert candidate([3, 4, 5, 2, 4, 10, 6, 3, 6, 4], [3, 0, 0, 2, 4, 2, 4, 1, 2, 1], 28) == -1
    assert candidate([3, 2, 5, 8, 8], [1, 3, 2, 1, 0], 20) == 3
    assert candidate([9, 2, 8, 7, 5, 2, 3, 2], [3, 2, 3, 0, 4, 3, 1, 4], 37) == -1
    assert candidate([6, 4, 3, 1, 10, 5, 10, 3, 5, 9], [0, 4, 1, 2, 1, 2, 3, 3, 4, 2], 41) == -1
    assert candidate([6, 10, 7, 10, 6, 7, 7, 4], [1, 3, 0, 0, 1, 2, 1, 3], 55) == 1
    assert candidate([6, 4, 3, 1], [1, 1, 3, 3], 7) == -1
    assert candidate([2, 10, 8, 10, 1, 4, 7, 10, 5, 1], [4, 3, 1, 2, 3, 1, 3, 2, 2, 1], 29) == -1
    assert candidate([2, 8, 5], [2, 0, 2], 14) == 1
    assert candidate([7, 10, 1, 3, 7, 3, 2], [1, 1, 3, 0, 2, 2, 3], 22) == 7
    assert candidate([6, 4, 2, 3, 8, 6, 6, 8, 10], [2, 1, 4, 1, 2, 1, 0, 1, 4], 39) == 9
    assert candidate([4, 4, 8, 10, 2, 7, 9, 8, 1, 8], [1, 0, 4, 0, 3, 3, 1, 2, 2, 1], 44) == 10
    assert candidate([2, 4, 1, 8, 3, 9], [0, 2, 0, 0, 0, 4], 21) == 1
    assert candidate([6, 10], [2, 1], 8) == 1
    assert candidate([8, 6], [3, 0], 10) == 1
    assert candidate([5, 5, 5, 10], [0, 1, 0, 3], 21) == 1
    assert candidate([7, 1, 1, 2, 9, 3, 3, 2, 2], [0, 1, 4, 3, 4, 1, 2, 1, 2], 15) == -1
    assert candidate([10, 4, 1, 10, 7, 5, 6, 3, 2, 10], [4, 0, 4, 0, 3, 4, 3, 0, 0, 3], 50) == 9
    assert candidate([9, 4, 6, 2], [3, 4, 0, 4], 15) == 4
    assert candidate([7, 3, 9, 2, 9, 10, 7, 10, 10, 4], [1, 4, 2, 1, 4, 1, 1, 0, 3, 4], 69) == 8
    assert candidate([4, 5, 6], [4, 4, 0], 13) == 2
    assert candidate([2, 3, 3, 4, 4], [2, 2, 1, 1, 1], 12) == 5
    assert candidate([4, 5, 5, 3, 7], [3, 3, 2, 0, 4], 21) == 4
    assert candidate([1, 3, 3, 4], [1, 3, 2, 3], 6) == -1
    assert candidate([9, 1, 8, 9, 7, 2], [3, 3, 0, 2, 3, 4], 26) == 6
    assert candidate([5, 5, 6, 8, 6, 1, 5, 7, 8], [2, 1, 0, 3, 2, 2, 2, 2, 4], 33) == -1
    assert candidate([2, 9, 5, 5, 6, 7, 7, 9], [1, 3, 0, 3, 3, 3, 4, 2], 47) == 8
    assert candidate([3], [0], 2) == 1
    assert candidate([3, 6, 4, 8, 7, 9, 3, 3, 9], [4, 3, 2, 0, 0, 3, 3, 1, 4], 34) == -1
    assert candidate([8], [1], 6) == 1
    assert candidate([1, 7, 6, 2, 9], [4, 2, 3, 3, 0], 23) == 4
    assert candidate([9, 10, 10, 5, 2, 4], [2, 4, 0, 3, 3, 4], 40) == 0
    assert candidate([9, 10, 9, 4, 8, 9, 10, 7, 5], [2, 0, 3, 0, 2, 4, 3, 2, 4], 69) == 7
    assert candidate([1, 7, 2, 7], [1, 0, 2, 3], 10) == 2
    assert candidate([10, 4], [2, 4], 10) == 1
    assert candidate([2, 10, 3, 6, 2, 10, 4], [4, 1, 4, 4, 4, 0, 0], 30) == 7
    assert candidate([5, 9, 6], [1, 3, 2], 20) == 0
    assert candidate([4, 5, 2, 4, 2, 7], [0, 0, 0, 0, 3, 0], 23) == 1
    assert candidate([8], [0], 7) == 1
    assert candidate([3], [3], 3) == 0
    assert candidate([6, 1, 10, 10], [3, 2, 4, 0], 13) == 3
    assert candidate([8, 9, 2, 10, 10, 1, 5], [4, 3, 3, 0, 2, 1, 2], 38) == 5
    assert candidate([10, 2], [3, 4], 10) == 1
    assert candidate([8, 9, 2], [2, 4, 1], 16) == 1
    assert candidate([4, 2, 3], [4, 2, 2], 4) == -1
    assert candidate([9, 8, 7, 6, 5, 1, 4], [2, 4, 1, 2, 3, 3, 0], 28) == 7
    assert candidate([3, 4, 10, 1, 2, 4, 10, 3, 7, 2], [4, 0, 0, 1, 1, 4, 4, 4, 2, 1], 44) == -1
    assert candidate([3, 5, 5, 1, 6, 4, 3], [1, 3, 4, 3, 3, 1, 4], 23) == -1
    assert candidate([3, 8, 10, 2, 5, 10], [4, 0, 3, 2, 4, 3], 37) == 4
    assert candidate([8, 8, 10, 8, 9, 6, 1, 8], [2, 0, 0, 1, 2, 1, 0, 4], 38) == 4
    assert candidate([10, 7, 3, 10, 7, 6, 6, 10], [1, 2, 4, 0, 3, 4, 0, 3], 41) == 7
    assert candidate([6, 7, 4, 1, 9, 6], [3, 3, 3, 0, 0, 1], 32) == 2
    assert candidate([2], [2], 1) == 1
    assert candidate([8, 9, 4, 5, 6, 7], [0, 3, 4, 3, 3, 1], 27) == 6
    assert candidate([7], [1], 3) == 1
    assert candidate([9], [0], 5) == 1
    assert candidate([7, 2, 2, 2, 7, 4, 2, 10, 8], [4, 3, 2, 4, 4, 0, 1, 1, 2], 31) == -1
    assert candidate([7, 2, 6, 4, 9, 9, 1, 9, 6, 7], [0, 1, 3, 2, 3, 3, 4, 2, 2, 1], 58) == -1
    assert candidate([6, 8, 2, 3, 9, 8, 10, 9, 9], [1, 4, 2, 3, 2, 0, 1, 1, 3], 40) == -1
    assert candidate([1, 1, 5], [4, 4, 2], 3) == -1
    assert candidate([7, 5, 8, 3, 10, 2, 4, 8, 7], [4, 4, 2, 4, 2, 3, 1, 1, 1], 49) == -1
    assert candidate([4, 7, 2, 6, 9, 2], [1, 2, 1, 4, 1, 3], 28) == 3
    assert candidate([3, 6, 3, 9, 5], [0, 4, 0, 3, 1], 23) == 1


def test_check():
    check(minimumTime)


### Metadata below ###
# question_id = 2952
# question_title = Minimum Time to Make Array Sum At Most x
# question_title_slug = minimum-time-to-make-array-sum-at-most-x
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 207
# question_dislikes = 10