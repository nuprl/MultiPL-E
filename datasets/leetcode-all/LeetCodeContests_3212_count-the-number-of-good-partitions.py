from typing import List

def numberOfGoodPartitions(nums: List[int]) -> int:
    """
    You are given a 0-indexed array nums consisting of positive integers.
    A partition of an array into one or more contiguous subarrays is called good if no two subarrays contain the same number.
    Return the total number of good partitions of nums.
    Since the answer may be large, return it modulo 109 + 7.
    
    Example 1:
    
    Input: nums = [1,2,3,4]
    Output: 8
    Explanation: The 8 possible good partitions are: ([1], [2], [3], [4]), ([1], [2], [3,4]), ([1], [2,3], [4]), ([1], [2,3,4]), ([1,2], [3], [4]), ([1,2], [3,4]), ([1,2,3], [4]), and ([1,2,3,4]).
    
    Example 2:
    
    Input: nums = [1,1,1,1]
    Output: 1
    Explanation: The only possible good partition is: ([1,1,1,1]).
    
    Example 3:
    
    Input: nums = [1,2,1,3]
    Output: 2
    Explanation: The 2 possible good partitions are: ([1,2,1], [3]) and ([1,2,1,3]).
    
    
    Constraints:
    
    1 <= nums.length <= 105
    1 <= nums[i] <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4]) == 8
    assert candidate([1, 1, 1, 1]) == 1
    assert candidate([1, 2, 1, 3]) == 2
    assert candidate([1]) == 1
    assert candidate([100000]) == 1
    assert candidate([1000000000]) == 1
    assert candidate([1, 1, 1, 3, 2]) == 4
    assert candidate([1, 1, 1, 9, 7]) == 4
    assert candidate([1, 1, 5, 9, 2]) == 8
    assert candidate([1, 4, 1, 7, 5]) == 4
    assert candidate([1, 5, 1, 5, 6]) == 2
    assert candidate([1, 5, 1, 10, 8]) == 4
    assert candidate([1, 6, 8, 1, 5]) == 2
    assert candidate([1, 6, 9, 4, 10]) == 16
    assert candidate([1, 7, 1, 6, 8]) == 4
    assert candidate([1, 9, 1, 1, 7]) == 2
    assert candidate([2, 1, 6, 7, 5]) == 16
    assert candidate([2, 3, 2, 6, 9]) == 4
    assert candidate([2, 3, 2, 8, 8]) == 2
    assert candidate([2, 3, 9, 2, 6]) == 2
    assert candidate([2, 4, 2, 7, 4]) == 1
    assert candidate([2, 4, 7, 1, 2]) == 1
    assert candidate([2, 5, 1, 2, 2]) == 1
    assert candidate([2, 5, 1, 4, 9]) == 16
    assert candidate([2, 5, 6, 4, 2]) == 1
    assert candidate([2, 6, 1, 9, 5]) == 16
    assert candidate([2, 7, 8, 9, 3]) == 16
    assert candidate([2, 9, 1, 2, 4]) == 2
    assert candidate([2, 10, 4, 2, 3]) == 2
    assert candidate([3, 3, 3, 9, 9]) == 2
    assert candidate([3, 3, 8, 1, 6]) == 8
    assert candidate([3, 3, 10, 4, 2]) == 8
    assert candidate([3, 4, 5, 1, 7]) == 16
    assert candidate([3, 7, 6, 4, 9]) == 16
    assert candidate([3, 8, 10, 7, 6]) == 16
    assert candidate([3, 10, 10, 10, 4]) == 4
    assert candidate([4, 1, 2, 3, 10]) == 16
    assert candidate([4, 1, 7, 9, 4]) == 1
    assert candidate([4, 8, 4, 8, 6]) == 2
    assert candidate([5, 1, 1, 9, 3]) == 8
    assert candidate([5, 2, 8, 10, 4]) == 16
    assert candidate([5, 3, 6, 6, 6]) == 4
    assert candidate([5, 3, 8, 8, 2]) == 8
    assert candidate([5, 4, 5, 9, 9]) == 2
    assert candidate([5, 4, 10, 2, 4]) == 2
    assert candidate([5, 5, 7, 3, 1]) == 8
    assert candidate([5, 5, 8, 4, 1]) == 8
    assert candidate([5, 9, 1, 9, 2]) == 4
    assert candidate([5, 10, 1, 1, 6]) == 8
    assert candidate([6, 1, 7, 9, 10]) == 16
    assert candidate([6, 3, 5, 1, 10]) == 16
    assert candidate([6, 3, 9, 9, 3]) == 2
    assert candidate([6, 6, 5, 5, 8]) == 4
    assert candidate([6, 7, 3, 3, 8]) == 8
    assert candidate([6, 8, 6, 5, 7]) == 4
    assert candidate([6, 9, 10, 5, 8]) == 16
    assert candidate([6, 10, 2, 6, 10]) == 1
    assert candidate([6, 10, 5, 4, 3]) == 16
    assert candidate([7, 1, 2, 3, 5]) == 16
    assert candidate([7, 1, 9, 2, 1]) == 2
    assert candidate([7, 2, 1, 2, 6]) == 4
    assert candidate([7, 5, 1, 10, 10]) == 8
    assert candidate([7, 5, 7, 4, 6]) == 4
    assert candidate([7, 5, 8, 4, 6]) == 16
    assert candidate([7, 9, 4, 8, 7]) == 1
    assert candidate([7, 9, 8, 8, 4]) == 8
    assert candidate([8, 2, 2, 5, 6]) == 8
    assert candidate([8, 3, 2, 1, 9]) == 16
    assert candidate([8, 3, 4, 9, 7]) == 16
    assert candidate([8, 3, 6, 5, 1]) == 16
    assert candidate([8, 3, 8, 3, 4]) == 2
    assert candidate([8, 3, 8, 3, 10]) == 2
    assert candidate([8, 4, 4, 5, 8]) == 1
    assert candidate([8, 4, 8, 10, 9]) == 4
    assert candidate([8, 5, 5, 3, 9]) == 8
    assert candidate([8, 7, 4, 2, 1]) == 16
    assert candidate([8, 7, 6, 10, 1]) == 16
    assert candidate([8, 9, 7, 3, 6]) == 16
    assert candidate([8, 10, 5, 9, 9]) == 8
    assert candidate([9, 1, 2, 2, 3]) == 8
    assert candidate([9, 1, 4, 3, 7]) == 16
    assert candidate([9, 1, 7, 8, 9]) == 1
    assert candidate([9, 2, 7, 5, 10]) == 16
    assert candidate([9, 3, 6, 5, 5]) == 8
    assert candidate([9, 4, 7, 1, 1]) == 8
    assert candidate([9, 5, 5, 8, 3]) == 8
    assert candidate([9, 7, 2, 7, 10]) == 4
    assert candidate([9, 7, 8, 3, 2]) == 16
    assert candidate([9, 8, 2, 5, 5]) == 8
    assert candidate([9, 8, 2, 10, 7]) == 16
    assert candidate([9, 8, 3, 7, 6]) == 16
    assert candidate([9, 8, 6, 6, 8]) == 2
    assert candidate([9, 8, 8, 2, 1]) == 8
    assert candidate([9, 8, 9, 5, 7]) == 4
    assert candidate([10, 1, 3, 2, 3]) == 4
    assert candidate([10, 1, 10, 3, 5]) == 4
    assert candidate([10, 2, 1, 4, 1]) == 4
    assert candidate([10, 3, 1, 3, 4]) == 4
    assert candidate([10, 5, 6, 2, 8]) == 16
    assert candidate([10, 6, 5, 10, 2]) == 2


def test_check():
    check(numberOfGoodPartitions)


### Metadata below ###
# question_id = 3212
# question_title = Count the Number of Good Partitions
# question_title_slug = count-the-number-of-good-partitions
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 163
# question_dislikes = 1