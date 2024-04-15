from typing import List

def countPairs(nums: List[int], target: int) -> int:
    """
    Given a 0-indexed integer array nums of length n and an integer target, return the number of pairs (i, j) where 0 <= i < j < n and nums[i] + nums[j] < target.
    
    Example 1:
    
    Input: nums = [-1,1,2,3,1], target = 2
    Output: 3
    Explanation: There are 3 pairs of indices that satisfy the conditions in the statement:
    - (0, 1) since 0 < 1 and nums[0] + nums[1] = 0 < target
    - (0, 2) since 0 < 2 and nums[0] + nums[2] = 1 < target
    - (0, 4) since 0 < 4 and nums[0] + nums[4] = 0 < target
    Note that (0, 3) is not counted since nums[0] + nums[3] is not strictly less than the target.
    
    Example 2:
    
    Input: nums = [-6,2,5,-2,-7,-1,3], target = -2
    Output: 10
    Explanation: There are 10 pairs of indices that satisfy the conditions in the statement:
    - (0, 1) since 0 < 1 and nums[0] + nums[1] = -4 < target
    - (0, 3) since 0 < 3 and nums[0] + nums[3] = -8 < target
    - (0, 4) since 0 < 4 and nums[0] + nums[4] = -13 < target
    - (0, 5) since 0 < 5 and nums[0] + nums[5] = -7 < target
    - (0, 6) since 0 < 6 and nums[0] + nums[6] = -3 < target
    - (1, 4) since 1 < 4 and nums[1] + nums[4] = -5 < target
    - (3, 4) since 3 < 4 and nums[3] + nums[4] = -9 < target
    - (3, 5) since 3 < 5 and nums[3] + nums[5] = -3 < target
    - (4, 5) since 4 < 5 and nums[4] + nums[5] = -8 < target
    - (4, 6) since 4 < 6 and nums[4] + nums[6] = -4 < target
    
    
    Constraints:
    
     * 1 <= nums.length == n <= 50
     * -50 <= nums[i], target <= 50
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([-1, 1, 2, 3, 1], 2) == 3
    assert candidate([-6, 2, 5, -2, -7, -1, 3], -2) == 10
    assert candidate([9, -5, -5, 5, -5, -4, -6, 6, -6], 3) == 27
    assert candidate([-8, -5, 5, -4, 10], 2) == 6
    assert candidate([-5, 0, -7, -1, 9, 8, -9, 9], -14) == 1
    assert candidate([6, -1, 7, 4, 2, 3], 8) == 8
    assert candidate([2, 8, 2, 8, 7], 10) == 3
    assert candidate([-6, 1, 1, -1, -10, -7, 1, -5, -4, 0], -15) == 2
    assert candidate([10, -2, -1, 7, 8, 5, 3, -4, -9], -10) == 2
    assert candidate([3, 8, -3, 4, 10, -6], 1) == 4
    assert candidate([-4, -6, -7, 8], -13) == 0
    assert candidate([-4, 0, 10, 8, -2], 0) == 3
    assert candidate([-8, -5, -3, 1, -7], -6) == 7
    assert candidate([4, -8, -2, 5, 2, -9, 6, 5, -4], -4) == 9
    assert candidate([-1, -5, 4, 4, -10], -6) == 2
    assert candidate([-5, 4, -6, -5, -10, -1, 10, 3], 6) == 24
    assert candidate([-9, 6, -4, 10, 1, 8], 11) == 11
    assert candidate([-10, -6, -8, -9, 6, 6, -6, -6, -3], -2) == 25
    assert candidate([-7, 7, 6, -9, -4, 10, 8, -8, 2, 2], -1) == 17
    assert candidate([0, -1, 0, -6, -9], -9) == 2
    assert candidate([8, -10, -9, 6, -3, 5, -2, -2, -7], -4) == 15
    assert candidate([-1, 3, 8, 3], 2) == 0
    assert candidate([7, 2, 9, -10, -4, 4, -3, 0], -20) == 0
    assert candidate([6, 4, 1, -7], 7) == 4
    assert candidate([3, 8, 6, -2, 6, 1, 7], 7) == 7
    assert candidate([1, 3, -10, 5, -8, 0, -5, -9], -7) == 11
    assert candidate([-6, 9, 2, 4, -9, 2, 4, -6, 6, -9], 11) == 40
    assert candidate([-10, -7, -5, -1, 2, 4, -6, 6], -3) == 15
    assert candidate([-1, 0, 1, 9, -2, -8, -8, 7], 1) == 16
    assert candidate([1, 9, 3, 2, 9, -5, 6, 0, -6, 6], 9) == 29
    assert candidate([-3, -3, -4, 1, 4, 9], 6) == 11
    assert candidate([-10, 3, -5, 2, -10, 7, 9], 4) == 14
    assert candidate([7, 10, 9, 8, -9, 1, -7, 10, -4, 2], 4) == 21
    assert candidate([9, -9, 0, 5, 4], 14) == 9
    assert candidate([7, 9, 7, -10, -6, -8, -5], 2) == 14
    assert candidate([8, -5, 0, 4], 0) == 2
    assert candidate([5, 2, -1, 9, -1, -1], 4) == 6
    assert candidate([-7, -4, 3, 9, 10, 5, -1, 1, -7], -4) == 8
    assert candidate([0, 8, 9, -9, 8, -2, -1, 2, 5], -1) == 7
    assert candidate([10, 4, -9, 8, -10, 3], -7) == 1
    assert candidate([-6, -6, 6, -4, -5, -1, 10, -8, 1], -13) == 2
    assert candidate([7, 3, -4, 1, -9, -8, 10, 4, -1], -2) == 13
    assert candidate([4, 3, -3, 1, -3, -1], -2) == 3
    assert candidate([10, -8, -9, -7, 2, -10, 4, 7, 6, 6], 14) == 41
    assert candidate([9, -5, -4, -2, 9], 4) == 3
    assert candidate([-1, 2, -3, -4, -10, -8, 2], -1) == 16
    assert candidate([-8, -9, -10, 0, -5, -5], -15) == 3
    assert candidate([-8, 9, -10, 2, -10, -6, -1, -8], -4) == 19
    assert candidate([4, -7, 8, 7, -4, 3, 7, 7, -2, -10], 4) == 25
    assert candidate([6, 3, 4, 5, -4], 0) == 1
    assert candidate([2, -4, 5, 3, 7, 10, 9, -1, 9, 0], 9) == 23
    assert candidate([-2, -5, 9, -3, -8, 5, -1, 3, -9], 1) == 23
    assert candidate([0, -2, -3, -1, -6, -7, 3], -10) == 1
    assert candidate([10, 4, -3, 9, -8, 6], 14) == 11
    assert candidate([-10, -6, 6, -7, 1, -7, 9, 3, 1], 15) == 35
    assert candidate([2, -3, -6, -2, 5], -4) == 3
    assert candidate([-10, -8, 8, -2], 0) == 4
    assert candidate([-2, 2, -7, -5, 1, 6, 8], 0) == 9
    assert candidate([4, -4, -5, -8, 9], -10) == 2
    assert candidate([-5, -4, -6, -7, 9, -10, 0, 4, 9, -1], -7) == 13
    assert candidate([-10, -6, 6, -3, 10, -6, 4, -8], -9) == 8
    assert candidate([-8, -1, -9, 1], -17) == 0
    assert candidate([6, -4, 2, 1, 10, -1], 1) == 4
    assert candidate([9, 4, -8, 8, 9, -4], -16) == 0
    assert candidate([9, -4, 8, -9, -2, -2], -11) == 1
    assert candidate([-7, 1, 3, 7, 6, 3], 10) == 12
    assert candidate([10, 10, -2, -4], 8) == 3
    assert candidate([-3, 2, 6, -6, 9], 3) == 4
    assert candidate([5, 0, 2, 4, 2, -7], 2) == 5
    assert candidate([4, -5, -4, -2, -9, -6, -10, -10, 2, -8], -19) == 1
    assert candidate([-10, 10, -9, -2, 3, -2, -7, -1, -6, 7], -17) == 1
    assert candidate([-9, -9, 3, 7, -9, -10, 2, 3, -4], -13) == 7
    assert candidate([-5, -4, -10, 7], 14) == 6
    assert candidate([-3, 4, -6, -6, 1, -10, -1, -8], -11) == 7
    assert candidate([-7, 1, -5, 8, -7, -3, 2, -2, -2, 7], -5) == 14
    assert candidate([8, 0, -8, -8, -1, 5], 0) == 8
    assert candidate([9, 7, 2, 4, 3], 7) == 2
    assert candidate([8, -1, -5, 7, 7, 5, -6, 2], -2) == 5
    assert candidate([-1, 3, 3, 3, 9], 8) == 6
    assert candidate([-8, 0, -1, -6, -9, 2, 3, 1], -9) == 4
    assert candidate([3, -3, -7, -6, -5, -2], -2) == 12
    assert candidate([3, 6, 0, -4, -2, 5], -6) == 0
    assert candidate([-8, 9, 2, 5, 9, -4, 3], 6) == 12
    assert candidate([0, -6, -5, -8, -4, 0, 7], 7) == 19
    assert candidate([0, 9, 2, -4], -8) == 0
    assert candidate([-7, 9, -3, -5, -9, -3, -8, -2, 1, 2], -8) == 15
    assert candidate([4, 10, -7, 0, -3, 5, 9, 6, 8, -4], 13) == 34
    assert candidate([2, -6, 0, 5, -9, -8, 6, 5], -3) == 11
    assert candidate([-4, 6, -2, 10, -5, -7, -8, -1], -5) == 13
    assert candidate([10, 4, 8, -1, 9, -5, -1, -7, -9], 19) == 35
    assert candidate([-6, 5, 3, -2, 0, 3, -7, -7], -8) == 5
    assert candidate([-3, -1, 7, 4, -10, -6, 2], -4) == 7
    assert candidate([-7, 8, 3, -1, 2, 1, -10], -7) == 5
    assert candidate([7, -3, -5, 9, -10, -1, -3, -3, -3, 1], 6) == 36
    assert candidate([-5, -10, -7, -3, -2, -2], -15) == 1
    assert candidate([-4, 6, -9, -8, -9, -9], -17) == 3
    assert candidate([-3, -8, -6, -4, -8, -10, -2, 5, -2], 1) == 32
    assert candidate([1, 1, -6, 8, 2, 10, -7, -9, -9], -7) == 10
    assert candidate([-9, -6, -3, 5, -4], 2) == 9
    assert candidate([-5, 10, -5, 1, 7, -8, 8, -6, -6], 2) == 19


def test_check():
    check(countPairs)


### Metadata below ###
# question_id = 2917
# question_title = Count Pairs Whose Sum is Less than Target
# question_title_slug = count-pairs-whose-sum-is-less-than-target
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 358
# question_dislikes = 23