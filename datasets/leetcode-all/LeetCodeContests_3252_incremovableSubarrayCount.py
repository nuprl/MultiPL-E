from typing import List

def incremovableSubarrayCount(nums: List[int]) -> int:
    """
    You are given a 0-indexed array of positive integers nums.
    A subarray of nums is called incremovable if nums becomes strictly increasing on removing the subarray. For example, the subarray [3, 4] is an incremovable subarray of [5, 3, 4, 6, 7] because removing this subarray changes the array [5, 3, 4, 6, 7] to [5, 6, 7] which is strictly increasing.
    Return the total number of incremovable subarrays of nums.
    Note that an empty array is considered strictly increasing.
    A subarray is a contiguous non-empty sequence of elements within an array.
    
    Example 1:
    
    Input: nums = [1,2,3,4]
    Output: 10
    Explanation: The 10 incremovable subarrays are: [1], [2], [3], [4], [1,2], [2,3], [3,4], [1,2,3], [2,3,4], and [1,2,3,4], because on removing any one of these subarrays nums becomes strictly increasing. Note that you cannot select an empty subarray.
    
    Example 2:
    
    Input: nums = [6,5,7,8]
    Output: 7
    Explanation: The 7 incremovable subarrays are: [5], [6], [5,7], [6,5], [5,7,8], [6,5,7] and [6,5,7,8].
    It can be shown that there are only 7 incremovable subarrays in nums.
    
    Example 3:
    
    Input: nums = [8,7,6,6]
    Output: 3
    Explanation: The 3 incremovable subarrays are: [8,7,6], [7,6,6], and [8,7,6,6]. Note that [8,7] is not an incremovable subarray because after removing [8,7] nums becomes [6,6], which is sorted in ascending order but not strictly increasing.
    
    
    Constraints:
    
    1 <= nums.length <= 50
    1 <= nums[i] <= 50
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4]) == 10
    assert candidate([6, 5, 7, 8]) == 7
    assert candidate([8, 7, 6, 6]) == 3
    assert candidate([1]) == 1
    assert candidate([2]) == 1
    assert candidate([3]) == 1
    assert candidate([4]) == 1
    assert candidate([5]) == 1
    assert candidate([6]) == 1
    assert candidate([7]) == 1
    assert candidate([8]) == 1
    assert candidate([9]) == 1
    assert candidate([10]) == 1
    assert candidate([1, 2]) == 3
    assert candidate([1, 4]) == 3
    assert candidate([1, 8]) == 3
    assert candidate([2, 10]) == 3
    assert candidate([3, 4]) == 3
    assert candidate([3, 8]) == 3
    assert candidate([3, 10]) == 3
    assert candidate([4, 2]) == 3
    assert candidate([4, 3]) == 3
    assert candidate([4, 5]) == 3
    assert candidate([5, 1]) == 3
    assert candidate([5, 4]) == 3
    assert candidate([5, 6]) == 3
    assert candidate([5, 7]) == 3
    assert candidate([5, 9]) == 3
    assert candidate([6, 4]) == 3
    assert candidate([6, 5]) == 3
    assert candidate([6, 9]) == 3
    assert candidate([9, 3]) == 3
    assert candidate([9, 4]) == 3
    assert candidate([9, 7]) == 3
    assert candidate([9, 8]) == 3
    assert candidate([10, 5]) == 3
    assert candidate([10, 10]) == 3
    assert candidate([1, 2, 3]) == 6
    assert candidate([1, 2, 6]) == 6
    assert candidate([2, 1, 6]) == 5
    assert candidate([2, 4, 5]) == 6
    assert candidate([2, 6, 8]) == 6
    assert candidate([2, 6, 9]) == 6
    assert candidate([2, 10, 9]) == 5
    assert candidate([3, 1, 9]) == 5
    assert candidate([3, 5, 9]) == 6
    assert candidate([3, 7, 2]) == 4
    assert candidate([3, 8, 8]) == 5
    assert candidate([3, 10, 10]) == 5
    assert candidate([4, 5, 2]) == 4
    assert candidate([5, 8, 4]) == 4
    assert candidate([5, 9, 3]) == 4
    assert candidate([5, 9, 7]) == 5
    assert candidate([6, 7, 4]) == 4
    assert candidate([8, 7, 4]) == 3
    assert candidate([8, 7, 5]) == 3
    assert candidate([8, 9, 5]) == 4
    assert candidate([9, 2, 5]) == 4
    assert candidate([9, 5, 2]) == 3
    assert candidate([9, 6, 9]) == 4
    assert candidate([9, 9, 4]) == 3
    assert candidate([10, 7, 4]) == 3
    assert candidate([10, 10, 6]) == 3
    assert candidate([2, 1, 1, 4]) == 5
    assert candidate([2, 5, 7, 9]) == 10
    assert candidate([3, 5, 3, 5]) == 6
    assert candidate([3, 7, 10, 6]) == 6
    assert candidate([3, 8, 3, 8]) == 6
    assert candidate([4, 1, 3, 7]) == 6
    assert candidate([4, 3, 5, 1]) == 3
    assert candidate([4, 3, 7, 5]) == 4
    assert candidate([4, 8, 7, 6]) == 5
    assert candidate([4, 9, 10, 6]) == 6
    assert candidate([5, 4, 3, 8]) == 5
    assert candidate([5, 5, 9, 5]) == 3
    assert candidate([5, 10, 10, 9]) == 5
    assert candidate([6, 4, 4, 9]) == 5
    assert candidate([6, 5, 2, 10]) == 5
    assert candidate([7, 3, 2, 3]) == 4
    assert candidate([7, 5, 1, 10]) == 5
    assert candidate([7, 9, 7, 2]) == 4
    assert candidate([7, 9, 8, 8]) == 5
    assert candidate([7, 10, 4, 3]) == 4
    assert candidate([8, 8, 1, 7]) == 4
    assert candidate([9, 2, 8, 7]) == 3
    assert candidate([10, 5, 9, 5]) == 3
    assert candidate([10, 7, 2, 8]) == 4
    assert candidate([10, 9, 1, 3]) == 4
    assert candidate([1, 1, 4, 4, 7]) == 6
    assert candidate([1, 2, 3, 4, 5]) == 15
    assert candidate([1, 2, 8, 9, 2]) == 7
    assert candidate([1, 7, 4, 9, 2]) == 5
    assert candidate([2, 2, 4, 6, 3]) == 4
    assert candidate([2, 7, 1, 3, 9]) == 9
    assert candidate([3, 1, 9, 6, 5]) == 4
    assert candidate([3, 3, 3, 6, 1]) == 3
    assert candidate([3, 7, 1, 8, 1]) == 4
    assert candidate([4, 1, 6, 10, 2]) == 3
    assert candidate([5, 4, 8, 4, 2]) == 3
    assert candidate([6, 1, 1, 8, 10]) == 7


def test_check():
    check(incremovableSubarrayCount)


### Metadata below ###
# question_id = 3252
# question_title = Count the Number of Incremovable Subarrays I
# question_title_slug = count-the-number-of-incremovable-subarrays-i
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 38
# question_dislikes = 49