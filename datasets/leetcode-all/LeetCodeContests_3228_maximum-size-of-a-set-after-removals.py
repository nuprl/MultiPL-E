from typing import List

def maximumSetSize(nums1: List[int], nums2: List[int]) -> int:
    """
    You are given two 0-indexed integer arrays nums1 and nums2 of even length n.
    You must remove n / 2 elements from nums1 and n / 2 elements from nums2. After the removals, you insert the remaining elements of nums1 and nums2 into a set s.
    Return the maximum possible size of the set s.
    
    Example 1:
    
    Input: nums1 = [1,2,1,2], nums2 = [1,1,1,1]
    Output: 2
    Explanation: We remove two occurences of 1 from nums1 and nums2. After the removals, the arrays become equal to nums1 = [2,2] and nums2 = [1,1]. Therefore, s = {1,2}.
    It can be shown that 2 is the maximum possible size of the set s after the removals.
    
    Example 2:
    
    Input: nums1 = [1,2,3,4,5,6], nums2 = [2,3,2,3,2,3]
    Output: 5
    Explanation: We remove 2, 3, and 6 from nums1, as well as 2 and two occurrences of 3 from nums2. After the removals, the arrays become equal to nums1 = [1,4,5] and nums2 = [2,3,2]. Therefore, s = {1,2,3,4,5}.
    It can be shown that 5 is the maximum possible size of the set s after the removals.
    
    Example 3:
    
    Input: nums1 = [1,1,2,2,3,3], nums2 = [4,4,5,5,6,6]
    Output: 6
    Explanation: We remove 1, 2, and 3 from nums1, as well as 4, 5, and 6 from nums2. After the removals, the arrays become equal to nums1 = [1,2,3] and nums2 = [4,5,6]. Therefore, s = {1,2,3,4,5,6}.
    It can be shown that 6 is the maximum possible size of the set s after the removals.
    
    
    Constraints:
    
    n == nums1.length == nums2.length
    1 <= n <= 2 * 104
    n is even.
    1 <= nums1[i], nums2[i] <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 1, 2], [1, 1, 1, 1]) == 2
    assert candidate([1, 2, 3, 4, 5, 6], [2, 3, 2, 3, 2, 3]) == 5
    assert candidate([1, 1, 2, 2, 3, 3], [4, 4, 5, 5, 6, 6]) == 6
    assert candidate([1, 2, 1, 1], [1, 2, 3, 4]) == 4
    assert candidate([1, 1, 1, 1], [12, 23, 41, 9]) == 3
    assert candidate([12, 23, 41, 9], [1, 1, 1, 1]) == 3
    assert candidate([9, 8, 4, 7], [5, 5, 9, 5]) == 4
    assert candidate([8, 9], [4, 3]) == 2
    assert candidate([7, 1], [6, 10]) == 2
    assert candidate([10, 3], [5, 6]) == 2
    assert candidate([3, 6], [6, 6]) == 2
    assert candidate([5, 1], [6, 6]) == 2
    assert candidate([10, 7], [8, 4]) == 2
    assert candidate([10, 8, 7, 9], [7, 9, 9, 5]) == 4
    assert candidate([1, 10, 6, 5], [3, 7, 10, 10]) == 4
    assert candidate([5, 2, 8, 6], [7, 4, 1, 1]) == 4
    assert candidate([2, 4, 1, 4], [10, 2, 4, 10]) == 4
    assert candidate([5, 7], [3, 1]) == 2
    assert candidate([1, 10, 1, 2], [9, 5, 8, 5]) == 4
    assert candidate([9, 4], [5, 7]) == 2
    assert candidate([1, 5, 10, 8], [1, 7, 4, 10]) == 4
    assert candidate([6, 6, 2, 9], [1, 4, 10, 7]) == 4
    assert candidate([7, 10], [6, 10]) == 2
    assert candidate([8, 8], [6, 3]) == 2
    assert candidate([6, 8], [9, 3]) == 2
    assert candidate([3, 8, 1, 9], [2, 5, 4, 5]) == 4
    assert candidate([6, 1, 4, 7], [10, 7, 2, 2]) == 4
    assert candidate([8, 7, 9, 3], [10, 3, 8, 2]) == 4
    assert candidate([1, 4, 5, 9], [2, 5, 2, 7]) == 4
    assert candidate([3, 5], [5, 3]) == 2
    assert candidate([1, 10, 8, 2], [2, 9, 10, 7]) == 4
    assert candidate([3, 9], [1, 4]) == 2
    assert candidate([1, 5], [10, 5]) == 2
    assert candidate([7, 5], [2, 10]) == 2
    assert candidate([6, 10], [3, 1]) == 2
    assert candidate([9, 8, 1, 3], [4, 9, 8, 6]) == 4
    assert candidate([4, 1], [9, 9]) == 2
    assert candidate([10, 7], [10, 8]) == 2
    assert candidate([4, 4, 3, 9], [6, 8, 4, 7]) == 4
    assert candidate([4, 10, 4, 9], [5, 7, 4, 2]) == 4
    assert candidate([8, 6], [1, 7]) == 2
    assert candidate([9, 8, 10, 7], [3, 7, 7, 6]) == 4
    assert candidate([4, 10, 9, 10], [9, 7, 3, 6]) == 4
    assert candidate([6, 7], [5, 7]) == 2
    assert candidate([1, 1, 10, 5], [6, 6, 8, 5]) == 4
    assert candidate([5, 3, 4, 2], [10, 3, 7, 10]) == 4
    assert candidate([1, 3], [9, 2]) == 2
    assert candidate([6, 1, 6, 2], [5, 4, 6, 7]) == 4
    assert candidate([9, 9], [8, 7]) == 2
    assert candidate([6, 2, 9, 3], [10, 3, 4, 7]) == 4
    assert candidate([6, 2, 10, 1], [9, 2, 6, 5]) == 4
    assert candidate([6, 5, 6, 1], [6, 2, 6, 9]) == 4
    assert candidate([10, 5, 4, 7], [5, 4, 4, 9]) == 4
    assert candidate([7, 10, 4, 6], [1, 4, 4, 2]) == 4
    assert candidate([3, 4], [1, 8]) == 2
    assert candidate([7, 7], [7, 1]) == 2
    assert candidate([1, 1, 2, 2, 1, 1], [1, 3, 2, 2, 2, 1]) == 3
    assert candidate([3, 3, 3, 2, 1, 2, 1, 2], [1, 2, 3, 2, 2, 3, 3, 1]) == 3
    assert candidate([1, 3, 3, 2], [2, 2, 1, 3]) == 3
    assert candidate([1, 1, 1, 3, 3, 3, 1, 1], [3, 2, 3, 2, 3, 3, 3, 3]) == 3
    assert candidate([3, 3, 1, 1, 3, 2], [2, 2, 1, 1, 2, 2]) == 3
    assert candidate([2, 3, 2, 3, 3, 1], [2, 3, 1, 2, 1, 1]) == 3
    assert candidate([1, 1, 3, 3, 1, 3, 3, 3], [2, 3, 1, 3, 1, 1, 1, 3]) == 3
    assert candidate([2, 3, 2, 2, 1, 3, 1, 1], [3, 1, 2, 2, 3, 1, 2, 2]) == 3
    assert candidate([2, 2, 2, 3, 1, 1, 3, 3], [3, 1, 3, 1, 2, 3, 2, 2]) == 3
    assert candidate([3, 3, 1, 3, 2, 2, 3, 1], [3, 1, 2, 3, 1, 3, 2, 1]) == 3
    assert candidate([1, 1, 1, 2, 1, 1, 1, 1, 1, 2], [3, 1, 3, 3, 1, 1, 3, 2, 1, 3]) == 3
    assert candidate([3, 2, 2, 3], [1, 1, 1, 3]) == 3
    assert candidate([2, 3, 3, 1, 2, 1, 2, 2], [1, 2, 2, 1, 2, 1, 2, 2]) == 3
    assert candidate([1, 2, 1, 3, 2, 3], [3, 3, 1, 1, 3, 3]) == 3
    assert candidate([1, 3, 1, 3, 3, 3, 3, 2, 2, 2], [2, 1, 3, 2, 2, 3, 3, 1, 1, 3]) == 3
    assert candidate([1, 3, 1, 1, 2, 2, 1, 1], [2, 3, 3, 1, 3, 2, 3, 2]) == 3
    assert candidate([2, 3, 2, 2, 2, 2, 1, 2], [3, 1, 2, 3, 3, 1, 2, 1]) == 3
    assert candidate([3, 3, 2, 1, 2, 3], [2, 1, 1, 3, 2, 2]) == 3
    assert candidate([1, 3, 1, 2, 1, 1, 2, 3], [1, 2, 2, 3, 2, 3, 3, 3]) == 3
    assert candidate([1, 1, 1, 3, 1, 2, 1, 1], [2, 3, 3, 2, 3, 3, 1, 1]) == 3
    assert candidate([3, 1, 3, 3, 2, 2, 2, 3, 1, 1], [1, 1, 2, 1, 3, 3, 1, 3, 2, 1]) == 3
    assert candidate([1, 1, 1, 2, 3, 2, 1, 1], [2, 1, 2, 2, 2, 1, 3, 3]) == 3
    assert candidate([2, 1, 3, 2, 2, 2, 2, 2], [1, 3, 3, 2, 2, 2, 3, 1]) == 3
    assert candidate([1, 3, 1, 1], [1, 3, 1, 2]) == 3
    assert candidate([1, 3, 3, 1, 3, 2], [2, 1, 3, 2, 2, 2]) == 3
    assert candidate([3, 2, 3, 3, 2, 2], [1, 3, 1, 3, 1, 1]) == 3
    assert candidate([1, 3, 1, 3, 2, 3], [2, 1, 1, 1, 2, 3]) == 3
    assert candidate([1, 1, 3, 1, 3, 1], [3, 3, 1, 2, 2, 1]) == 3
    assert candidate([2, 2, 2, 2, 2, 3, 1, 3], [2, 3, 3, 2, 1, 2, 3, 1]) == 3
    assert candidate([1, 3, 1, 2, 3, 1], [3, 3, 2, 2, 1, 3]) == 3
    assert candidate([2, 1, 2, 2, 1, 3], [1, 1, 1, 3, 2, 3]) == 3
    assert candidate([2, 2, 1, 2, 1, 3, 3, 1], [3, 1, 3, 1, 1, 3, 3, 1]) == 3
    assert candidate([3, 1, 3, 3, 2, 3], [1, 3, 3, 2, 2, 1]) == 3
    assert candidate([3, 2, 1, 3, 3, 2], [1, 1, 3, 3, 1, 2]) == 3
    assert candidate([2, 1, 3, 2, 3, 3], [2, 2, 2, 3, 2, 1]) == 3
    assert candidate([3, 3, 3, 1, 2, 2, 3, 1], [3, 1, 2, 3, 2, 3, 2, 1]) == 3
    assert candidate([3, 1, 3, 1, 2, 1, 2, 2, 2, 2], [2, 1, 3, 1, 1, 1, 2, 2, 1, 3]) == 3
    assert candidate([1, 2, 2, 1, 3, 3], [1, 1, 1, 3, 2, 2]) == 3
    assert candidate([2, 1, 2, 3], [3, 2, 3, 2]) == 3
    assert candidate([3, 1, 2, 2], [2, 1, 1, 1]) == 3
    assert candidate([2, 2, 3, 2], [2, 1, 3, 3]) == 3
    assert candidate([3, 3, 2, 1, 3, 3, 2, 3], [3, 1, 2, 3, 2, 2, 1, 3]) == 3
    assert candidate([3, 3, 3, 1, 2, 2], [1, 3, 1, 2, 2, 3]) == 3
    assert candidate([3, 1, 1, 3, 1, 1, 3, 2], [3, 2, 3, 3, 3, 1, 2, 3]) == 3


def test_check():
    check(maximumSetSize)


### Metadata below ###
# question_id = 3228
# question_title = Maximum Size of a Set After Removals
# question_title_slug = maximum-size-of-a-set-after-removals
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 116
# question_dislikes = 11