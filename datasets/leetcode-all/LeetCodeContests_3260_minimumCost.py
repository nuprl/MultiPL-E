from typing import List

def minimumCost(nums: List[int], k: int, dist: int) -> int:
    """
    You are given a 0-indexed array of integers nums of length n, and two positive integers k and dist.
    The cost of an array is the value of its first element. For example, the cost of [1,2,3] is 1 while the cost of [3,4,1] is 3.
    You need to divide nums into k disjoint contiguous subarrays, such that the difference between the starting index of the second subarray and the starting index of the kth subarray should be less than or equal to dist. In other words, if you divide nums into the subarrays nums[0..(i1 - 1)], nums[i1..(i2 - 1)], ..., nums[ik-1..(n - 1)], then ik-1 - i1 <= dist.
    Return the minimum possible sum of the cost of these subarrays.
    
    Example 1:
    
    Input: nums = [1,3,2,6,4,2], k = 3, dist = 3
    Output: 5
    Explanation: The best possible way to divide nums into 3 subarrays is: [1,3], [2,6,4], and [2]. This choice is valid because ik-1 - i1 is 5 - 2 = 3 which is equal to dist. The total cost is nums[0] + nums[2] + nums[5] which is 1 + 2 + 2 = 5.
    It can be shown that there is no possible way to divide nums into 3 subarrays at a cost lower than 5.
    
    Example 2:
    
    Input: nums = [10,1,2,2,2,1], k = 4, dist = 3
    Output: 15
    Explanation: The best possible way to divide nums into 4 subarrays is: [10], [1], [2], and [2,2,1]. This choice is valid because ik-1 - i1 is 3 - 1 = 2 which is less than dist. The total cost is nums[0] + nums[1] + nums[2] + nums[3] which is 10 + 1 + 2 + 2 = 15.
    The division [10], [1], [2,2,2], and [1] is not valid, because the difference between ik-1 and i1 is 5 - 1 = 4, which is greater than dist.
    It can be shown that there is no possible way to divide nums into 4 subarrays at a cost lower than 15.
    
    Example 3:
    
    Input: nums = [10,8,18,9], k = 3, dist = 1
    Output: 36
    Explanation: The best possible way to divide nums into 4 subarrays is: [10], [8], and [18,9]. This choice is valid because ik-1 - i1 is 2 - 1 = 1 which is equal to dist.The total cost is nums[0] + nums[1] + nums[2] which is 10 + 8 + 18 = 36.
    The division [10], [8,18], and [9] is not valid, because the difference between ik-1 and i1 is 3 - 1 = 2, which is greater than dist.
    It can be shown that there is no possible way to divide nums into 3 subarrays at a cost lower than 36.
    
    
    Constraints:
    
    3 <= n <= 105
    1 <= nums[i] <= 109
    3 <= k <= n
    k - 2 <= dist <= n - 2
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 3, 2, 6, 4, 2], 3, 3) == 5
    assert candidate([10, 1, 2, 2, 2, 1], 4, 3) == 15
    assert candidate([10, 8, 18, 9], 3, 1) == 36
    assert candidate([1, 1, 1], 3, 1) == 3
    assert candidate([1, 1, 3], 3, 1) == 5
    assert candidate([1, 2, 2], 3, 1) == 5
    assert candidate([1, 2, 5], 3, 1) == 8
    assert candidate([1, 4, 4], 3, 1) == 9
    assert candidate([2, 2, 1], 3, 1) == 5
    assert candidate([2, 3, 2], 3, 1) == 7
    assert candidate([2, 5, 4], 3, 1) == 11
    assert candidate([3, 1, 2], 3, 1) == 6
    assert candidate([3, 1, 3], 3, 1) == 7
    assert candidate([3, 2, 2], 3, 1) == 7
    assert candidate([3, 3, 2], 3, 1) == 8
    assert candidate([3, 4, 1], 3, 1) == 8
    assert candidate([3, 5, 3], 3, 1) == 11
    assert candidate([4, 1, 4], 3, 1) == 9
    assert candidate([4, 1, 5], 3, 1) == 10
    assert candidate([4, 2, 1], 3, 1) == 7
    assert candidate([4, 2, 2], 3, 1) == 8
    assert candidate([4, 2, 4], 3, 1) == 10
    assert candidate([4, 2, 5], 3, 1) == 11
    assert candidate([4, 3, 1], 3, 1) == 8
    assert candidate([4, 3, 2], 3, 1) == 9
    assert candidate([4, 5, 3], 3, 1) == 12
    assert candidate([5, 2, 1], 3, 1) == 8
    assert candidate([5, 3, 5], 3, 1) == 13
    assert candidate([50, 50, 50], 3, 1) == 150
    assert candidate([1, 5, 3, 6], 3, 2) == 9
    assert candidate([1, 5, 3, 7], 3, 1) == 9
    assert candidate([1, 5, 3, 7], 3, 2) == 9
    assert candidate([1, 5, 3, 8], 3, 1) == 9
    assert candidate([1, 5, 3, 8], 3, 2) == 9
    assert candidate([1, 5, 4, 6], 4, 2) == 16
    assert candidate([1, 6, 3, 5], 3, 2) == 9
    assert candidate([1, 6, 3, 8], 3, 2) == 10
    assert candidate([1, 6, 4, 5], 4, 2) == 16
    assert candidate([1, 7, 4, 6], 4, 2) == 18
    assert candidate([1, 7, 4, 8], 4, 2) == 20
    assert candidate([1, 8, 3, 8], 3, 1) == 12
    assert candidate([1, 8, 4, 7], 4, 2) == 20
    assert candidate([2, 5, 3, 8], 3, 2) == 10
    assert candidate([2, 5, 4, 7], 4, 2) == 18
    assert candidate([2, 5, 4, 8], 4, 2) == 19
    assert candidate([2, 6, 3, 5], 3, 1) == 10
    assert candidate([2, 6, 3, 6], 3, 1) == 11
    assert candidate([2, 6, 4, 5], 4, 2) == 17
    assert candidate([2, 6, 4, 7], 4, 2) == 19
    assert candidate([2, 6, 4, 8], 4, 2) == 20
    assert candidate([2, 7, 3, 5], 3, 2) == 10
    assert candidate([2, 7, 3, 8], 3, 2) == 12
    assert candidate([2, 7, 4, 6], 4, 2) == 19
    assert candidate([2, 8, 3, 5], 3, 1) == 10
    assert candidate([2, 8, 4, 5], 4, 2) == 19
    assert candidate([3, 5, 3, 5], 3, 1) == 11
    assert candidate([3, 5, 3, 5], 3, 2) == 11
    assert candidate([3, 5, 3, 8], 3, 2) == 11
    assert candidate([3, 5, 4, 7], 4, 2) == 19
    assert candidate([3, 6, 3, 5], 3, 1) == 11
    assert candidate([3, 6, 3, 7], 3, 2) == 12
    assert candidate([3, 6, 3, 8], 3, 1) == 12
    assert candidate([3, 6, 4, 5], 4, 2) == 18
    assert candidate([3, 7, 3, 5], 3, 1) == 11
    assert candidate([3, 7, 3, 5], 3, 2) == 11
    assert candidate([3, 7, 3, 6], 3, 1) == 12
    assert candidate([3, 7, 3, 8], 3, 2) == 13
    assert candidate([3, 7, 4, 7], 4, 2) == 21
    assert candidate([3, 8, 3, 5], 3, 1) == 11
    assert candidate([3, 8, 4, 6], 4, 2) == 21
    assert candidate([4, 5, 3, 5], 3, 2) == 12
    assert candidate([4, 5, 3, 6], 3, 2) == 12
    assert candidate([4, 5, 3, 8], 3, 2) == 12
    assert candidate([4, 5, 4, 5], 4, 2) == 18
    assert candidate([4, 6, 3, 6], 3, 1) == 13
    assert candidate([4, 6, 3, 7], 3, 1) == 13
    assert candidate([4, 6, 4, 5], 4, 2) == 19
    assert candidate([4, 6, 4, 8], 4, 2) == 22
    assert candidate([4, 7, 3, 6], 3, 2) == 13
    assert candidate([4, 7, 4, 5], 4, 2) == 20
    assert candidate([4, 7, 4, 7], 4, 2) == 22
    assert candidate([4, 8, 3, 5], 3, 2) == 12
    assert candidate([4, 8, 3, 6], 3, 1) == 13
    assert candidate([4, 8, 3, 7], 3, 2) == 14
    assert candidate([4, 8, 4, 6], 4, 2) == 22
    assert candidate([4, 8, 4, 8], 4, 2) == 24
    assert candidate([1, 5, 6, 6, 3, 7, 2], 6, 5) == 23
    assert candidate([1, 6, 4, 6, 2, 9, 11], 4, 3) == 13
    assert candidate([1, 6, 4, 7, 9, 6, 1], 4, 4) == 12
    assert candidate([1, 6, 5, 6, 4, 9, 11], 5, 5) == 22
    assert candidate([1, 6, 5, 7, 8, 7, 5], 5, 4) == 25
    assert candidate([1, 6, 5, 8, 11, 10, 6], 5, 3) == 31
    assert candidate([1, 6, 6, 8, 4, 8, 7], 6, 4) == 33
    assert candidate([1, 7, 6, 8, 5, 10, 10], 6, 5) == 37
    assert candidate([1, 8, 3, 8, 11, 11, 10], 3, 5) == 12
    assert candidate([1, 8, 4, 7, 11, 1, 8], 4, 4) == 13
    assert candidate([1, 8, 6, 5, 6, 12, 12], 6, 5) == 38
    assert candidate([1, 8, 6, 6, 12, 5, 2], 6, 5) == 28
    assert candidate([2, 5, 3, 5, 7, 4, 3], 3, 3) == 9
    assert candidate([2, 5, 4, 6, 6, 1, 3], 4, 5) == 10


def test_check():
    check(minimumCost)


### Metadata below ###
# question_id = 3260
# question_title = Divide an Array Into Subarrays With Minimum Cost II
# question_title_slug = divide-an-array-into-subarrays-with-minimum-cost-ii
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 54
# question_dislikes = 2