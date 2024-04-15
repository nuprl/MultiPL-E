from typing import List

def countSubMultisets(nums: List[int], l: int, r: int) -> int:
    """
    You are given a 0-indexed array nums of non-negative integers, and two integers l and r.
    
    Return the count of sub-multisets within nums where the sum of elements in each subset falls within the inclusive range of [l, r].
    
    Since the answer may be large, return it modulo 109 + 7.
    
    A sub-multiset is an unordered collection of elements of the array in which a given value x can occur 0, 1, ..., occ[x] times, where occ[x] is the number of occurrences of x in the array.
    
    Note that:
    
     * Two sub-multisets are the same if sorting both sub-multisets results in identical multisets.
     * The sum of an empty multiset is 0.
    
    Example 1:
    
    Input: nums = [1,2,2,3], l = 6, r = 6
    Output: 1
    Explanation: The only subset of nums that has a sum of 6 is {1, 2, 3}.
    
    Example 2:
    
    Input: nums = [2,1,4,2,7], l = 1, r = 5
    Output: 7
    Explanation: The subsets of nums that have a sum within the range [1, 5] are {1}, {2}, {4}, {2, 2}, {1, 2}, {1, 4}, and {1, 2, 2}.
    
    Example 3:
    
    Input: nums = [1,2,1,3,5,2], l = 3, r = 5
    Output: 9
    Explanation: The subsets of nums that have a sum within the range [3, 5] are {3}, {5}, {1, 2}, {1, 3}, {2, 2}, {2, 3}, {1, 1, 2}, {1, 1, 3}, and {1, 2, 2}.
    
    Constraints:
    
     * 1 <= nums.length <= 2 * 104
     * 0 <= nums[i] <= 2 * 104
     * Sum of nums does not exceed 2 * 104.
     * 0 <= l <= r <= 2 * 104
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 2, 3], 6, 6) == 1
    assert candidate([2, 1, 4, 2, 7], 1, 5) == 7
    assert candidate([1, 2, 1, 3, 5, 2], 3, 5) == 9
    assert candidate([0, 0, 1, 2, 3], 2, 3) == 9
    assert candidate([0, 0, 0, 0, 0], 0, 0) == 6
    assert candidate([0, 0, 0, 1, 2, 5, 2, 3], 0, 3) == 20
    assert candidate([1, 1], 2, 2) == 1
    assert candidate([1, 1, 1], 2, 2) == 1
    assert candidate([1, 1, 2], 2, 4) == 4
    assert candidate([1, 2, 1], 2, 2) == 2
    assert candidate([1, 2, 2], 3, 5) == 3
    assert candidate([2, 1, 1], 1, 2) == 3
    assert candidate([2, 1, 2], 2, 2) == 1
    assert candidate([2, 2, 1], 4, 5) == 2
    assert candidate([2, 2, 2], 3, 6) == 2
    assert candidate([1, 1, 1, 1], 3, 3) == 1
    assert candidate([1, 1, 1, 2], 1, 1) == 1
    assert candidate([1, 1, 1, 3], 4, 4) == 1
    assert candidate([1, 1, 2, 1], 3, 4) == 3
    assert candidate([1, 1, 2, 2], 2, 3) == 3
    assert candidate([1, 1, 2, 3], 4, 5) == 4
    assert candidate([1, 1, 3, 1], 2, 3) == 3
    assert candidate([1, 1, 3, 2], 6, 6) == 1
    assert candidate([1, 1, 3, 3], 8, 8) == 1
    assert candidate([1, 2, 1, 1], 3, 3) == 2
    assert candidate([1, 2, 1, 2], 4, 5) == 3
    assert candidate([1, 2, 1, 3], 4, 7) == 6
    assert candidate([1, 2, 2, 1], 4, 5) == 3
    assert candidate([1, 2, 2, 2], 1, 7) == 7
    assert candidate([1, 2, 2, 3], 3, 8) == 9
    assert candidate([1, 2, 3, 1], 1, 4) == 7
    assert candidate([1, 2, 3, 2], 4, 8) == 7
    assert candidate([1, 2, 3, 3], 6, 6) == 2
    assert candidate([1, 3, 1, 1], 6, 6) == 1
    assert candidate([1, 3, 1, 2], 7, 7) == 1
    assert candidate([1, 3, 1, 3], 5, 6) == 2
    assert candidate([1, 3, 2, 1], 2, 2) == 2
    assert candidate([1, 3, 2, 2], 7, 8) == 2
    assert candidate([1, 3, 2, 3], 1, 9) == 11
    assert candidate([1, 3, 3, 1], 7, 7) == 1
    assert candidate([1, 3, 3, 2], 1, 6) == 8
    assert candidate([1, 3, 3, 3], 9, 10) == 2
    assert candidate([2, 1, 1, 1], 2, 3) == 4
    assert candidate([2, 1, 1, 2], 1, 4) == 6
    assert candidate([2, 1, 1, 3], 7, 7) == 1
    assert candidate([2, 1, 2, 1], 3, 3) == 1
    assert candidate([2, 1, 2, 2], 6, 7) == 2
    assert candidate([2, 1, 2, 3], 7, 7) == 1
    assert candidate([2, 1, 3, 1], 4, 4) == 2
    assert candidate([2, 1, 3, 2], 3, 4) == 4
    assert candidate([2, 1, 3, 3], 1, 5) == 6
    assert candidate([2, 2, 1, 1], 6, 6) == 1
    assert candidate([2, 2, 1, 2], 2, 4) == 3
    assert candidate([2, 2, 1, 3], 6, 8) == 3
    assert candidate([2, 2, 2, 1], 4, 7) == 4
    assert candidate([2, 2, 2, 2], 3, 7) == 2
    assert candidate([2, 2, 2, 3], 5, 6) == 2
    assert candidate([2, 2, 3, 1], 7, 7) == 1
    assert candidate([2, 2, 3, 2], 5, 9) == 4
    assert candidate([2, 2, 3, 3], 4, 10) == 6
    assert candidate([2, 3, 1, 1], 4, 6) == 5
    assert candidate([2, 3, 1, 2], 3, 4) == 4
    assert candidate([2, 3, 1, 3], 2, 8) == 9
    assert candidate([2, 3, 2, 1], 3, 3) == 2
    assert candidate([2, 3, 2, 2], 3, 3) == 1
    assert candidate([2, 3, 2, 3], 5, 6) == 2
    assert candidate([2, 3, 3, 1], 9, 9) == 1
    assert candidate([2, 3, 3, 2], 8, 8) == 1
    assert candidate([2, 3, 3, 3], 3, 5) == 2
    assert candidate([3, 1, 1, 1], 4, 4) == 1
    assert candidate([3, 1, 1, 2], 7, 7) == 1
    assert candidate([3, 1, 1, 3], 1, 1) == 1
    assert candidate([3, 1, 2, 1], 4, 4) == 2
    assert candidate([3, 1, 2, 2], 3, 8) == 9
    assert candidate([3, 1, 2, 3], 5, 9) == 6
    assert candidate([3, 1, 3, 1], 1, 4) == 4
    assert candidate([3, 1, 3, 2], 3, 5) == 4
    assert candidate([3, 1, 3, 3], 9, 10) == 2
    assert candidate([3, 2, 1, 1], 1, 5) == 9
    assert candidate([3, 2, 1, 2], 1, 6) == 9
    assert candidate([3, 2, 1, 3], 5, 7) == 4
    assert candidate([3, 2, 2, 1], 4, 4) == 2
    assert candidate([3, 2, 2, 2], 6, 7) == 2
    assert candidate([3, 2, 2, 3], 2, 7) == 6
    assert candidate([3, 2, 3, 1], 2, 3) == 3
    assert candidate([3, 2, 3, 2], 8, 10) == 2
    assert candidate([3, 2, 3, 3], 1, 11) == 7
    assert candidate([3, 3, 1, 1], 8, 8) == 1
    assert candidate([3, 3, 1, 2], 2, 5) == 5
    assert candidate([3, 3, 1, 3], 1, 7) == 5
    assert candidate([3, 3, 2, 1], 4, 6) == 4
    assert candidate([3, 3, 2, 2], 7, 10) == 3
    assert candidate([3, 3, 2, 3], 4, 10) == 4
    assert candidate([3, 3, 3, 1], 6, 9) == 3
    assert candidate([3, 3, 3, 2], 11, 11) == 1
    assert candidate([3, 3, 3, 3], 8, 9) == 1
    assert candidate([1, 1, 1, 1, 1], 3, 5) == 3
    assert candidate([1, 1, 1, 1, 2], 2, 5) == 7
    assert candidate([1, 1, 1, 1, 3], 6, 7) == 2
    assert candidate([1, 1, 1, 1, 4], 8, 8) == 1


def test_check():
    check(countSubMultisets)


### Metadata below ###
# question_id = 3091
# question_title = Count of Sub-Multisets With Bounded Sum
# question_title_slug = count-of-sub-multisets-with-bounded-sum
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 125
# question_dislikes = 19