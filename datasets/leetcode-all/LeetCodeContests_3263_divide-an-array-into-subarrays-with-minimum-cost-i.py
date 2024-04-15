from typing import List

def minimumCost(nums: List[int]) -> int:
    """
    You are given an array of integers nums of length n.
    The cost of an array is the value of its first element. For example, the cost of [1,2,3] is 1 while the cost of [3,4,1] is 3.
    You need to divide nums into 3 disjoint contiguous subarrays.
    Return the minimum possible sum of the cost of these subarrays.
    
    Example 1:
    
    Input: nums = [1,2,3,12]
    Output: 6
    Explanation: The best possible way to form 3 subarrays is: [1], [2], and [3,12] at a total cost of 1 + 2 + 3 = 6.
    The other possible ways to form 3 subarrays are:
    - [1], [2,3], and [12] at a total cost of 1 + 2 + 12 = 15.
    - [1,2], [3], and [12] at a total cost of 1 + 3 + 12 = 16.
    
    Example 2:
    
    Input: nums = [5,4,3]
    Output: 12
    Explanation: The best possible way to form 3 subarrays is: [5], [4], and [3] at a total cost of 5 + 4 + 3 = 12.
    It can be shown that 12 is the minimum cost achievable.
    
    Example 3:
    
    Input: nums = [10,3,1,1]
    Output: 12
    Explanation: The best possible way to form 3 subarrays is: [10,3], [1], and [1] at a total cost of 10 + 1 + 1 = 12.
    It can be shown that 12 is the minimum cost achievable.
    
    
    Constraints:
    
    3 <= n <= 50
    1 <= nums[i] <= 50
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 12]) == 6
    assert candidate([5, 4, 3]) == 12
    assert candidate([10, 3, 1, 1]) == 12
    assert candidate([1, 1, 1]) == 3
    assert candidate([1, 1, 2]) == 4
    assert candidate([1, 1, 3]) == 5
    assert candidate([1, 1, 4]) == 6
    assert candidate([1, 1, 5]) == 7
    assert candidate([1, 2, 1]) == 4
    assert candidate([1, 2, 2]) == 5
    assert candidate([1, 2, 3]) == 6
    assert candidate([1, 2, 4]) == 7
    assert candidate([1, 2, 5]) == 8
    assert candidate([1, 3, 1]) == 5
    assert candidate([1, 3, 2]) == 6
    assert candidate([1, 3, 3]) == 7
    assert candidate([1, 3, 4]) == 8
    assert candidate([1, 3, 5]) == 9
    assert candidate([1, 4, 1]) == 6
    assert candidate([1, 4, 2]) == 7
    assert candidate([1, 4, 3]) == 8
    assert candidate([1, 4, 4]) == 9
    assert candidate([1, 4, 5]) == 10
    assert candidate([1, 5, 1]) == 7
    assert candidate([1, 5, 2]) == 8
    assert candidate([1, 5, 3]) == 9
    assert candidate([1, 5, 4]) == 10
    assert candidate([1, 5, 5]) == 11
    assert candidate([2, 1, 1]) == 4
    assert candidate([2, 1, 2]) == 5
    assert candidate([2, 1, 3]) == 6
    assert candidate([2, 1, 4]) == 7
    assert candidate([2, 1, 5]) == 8
    assert candidate([2, 2, 1]) == 5
    assert candidate([2, 2, 2]) == 6
    assert candidate([2, 2, 3]) == 7
    assert candidate([2, 2, 4]) == 8
    assert candidate([2, 2, 5]) == 9
    assert candidate([2, 3, 1]) == 6
    assert candidate([2, 3, 2]) == 7
    assert candidate([2, 3, 3]) == 8
    assert candidate([2, 3, 4]) == 9
    assert candidate([2, 3, 5]) == 10
    assert candidate([2, 4, 1]) == 7
    assert candidate([2, 4, 2]) == 8
    assert candidate([2, 4, 3]) == 9
    assert candidate([2, 4, 4]) == 10
    assert candidate([2, 4, 5]) == 11
    assert candidate([2, 5, 1]) == 8
    assert candidate([2, 5, 2]) == 9
    assert candidate([2, 5, 3]) == 10
    assert candidate([2, 5, 4]) == 11
    assert candidate([2, 5, 5]) == 12
    assert candidate([3, 1, 1]) == 5
    assert candidate([3, 1, 2]) == 6
    assert candidate([3, 1, 3]) == 7
    assert candidate([3, 1, 4]) == 8
    assert candidate([3, 1, 5]) == 9
    assert candidate([3, 2, 1]) == 6
    assert candidate([3, 2, 2]) == 7
    assert candidate([3, 2, 3]) == 8
    assert candidate([3, 2, 4]) == 9
    assert candidate([3, 2, 5]) == 10
    assert candidate([3, 3, 1]) == 7
    assert candidate([3, 3, 2]) == 8
    assert candidate([3, 3, 3]) == 9
    assert candidate([3, 3, 4]) == 10
    assert candidate([3, 3, 5]) == 11
    assert candidate([3, 4, 1]) == 8
    assert candidate([3, 4, 2]) == 9
    assert candidate([3, 4, 3]) == 10
    assert candidate([3, 4, 4]) == 11
    assert candidate([3, 4, 5]) == 12
    assert candidate([3, 5, 1]) == 9
    assert candidate([3, 5, 2]) == 10
    assert candidate([3, 5, 3]) == 11
    assert candidate([3, 5, 4]) == 12
    assert candidate([3, 5, 5]) == 13
    assert candidate([4, 1, 1]) == 6
    assert candidate([4, 1, 2]) == 7
    assert candidate([4, 1, 3]) == 8
    assert candidate([4, 1, 4]) == 9
    assert candidate([4, 1, 5]) == 10
    assert candidate([4, 2, 1]) == 7
    assert candidate([4, 2, 2]) == 8
    assert candidate([4, 2, 3]) == 9
    assert candidate([4, 2, 4]) == 10
    assert candidate([4, 2, 5]) == 11
    assert candidate([4, 3, 1]) == 8
    assert candidate([4, 3, 2]) == 9
    assert candidate([4, 3, 3]) == 10
    assert candidate([4, 3, 4]) == 11
    assert candidate([4, 3, 5]) == 12
    assert candidate([4, 4, 1]) == 9
    assert candidate([4, 4, 2]) == 10
    assert candidate([4, 4, 3]) == 11
    assert candidate([4, 4, 4]) == 12
    assert candidate([4, 4, 5]) == 13
    assert candidate([4, 5, 1]) == 10
    assert candidate([4, 5, 2]) == 11


def test_check():
    check(minimumCost)


### Metadata below ###
# question_id = 3263
# question_title = Divide an Array Into Subarrays With Minimum Cost I
# question_title_slug = divide-an-array-into-subarrays-with-minimum-cost-i
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 40
# question_dislikes = 2