from typing import List

def maximumSumOfHeights(maxHeights: List[int]) -> int:
    """
    You are given a 0-indexed array maxHeights of n integers.
    
    You are tasked with building n towers in the coordinate line. The ith tower is built at coordinate i and has a height of heights[i].
    
    A configuration of towers is beautiful if the following conditions hold:
    
     1. 1 <= heights[i] <= maxHeights[i]
     2. heights is a mountain array.
    
    Array heights is a mountain if there exists an index i such that:
    
     * For all 0 < j <= i, heights[j - 1] <= heights[j]
     * For all i <= k < n - 1, heights[k + 1] <= heights[k]
    
    Return the maximum possible sum of heights of a beautiful configuration of towers.
    
    Example 1:
    
    Input: maxHeights = [5,3,4,1,1]
    Output: 13
    Explanation: One beautiful configuration with a maximum sum is heights = [5,3,3,1,1]. This configuration is beautiful since:
    - 1 <= heights[i] <= maxHeights[i]
    - heights is a mountain of peak i = 0.
    It can be shown that there exists no other beautiful configuration with a sum of heights greater than 13.
    
    Example 2:
    
    Input: maxHeights = [6,5,3,9,2,7]
    Output: 22
    Explanation: One beautiful configuration with a maximum sum is heights = [3,3,3,9,2,2]. This configuration is beautiful since:
    - 1 <= heights[i] <= maxHeights[i]
    - heights is a mountain of peak i = 3.
    It can be shown that there exists no other beautiful configuration with a sum of heights greater than 22.
    
    Example 3:
    
    Input: maxHeights = [3,2,5,5,2,3]
    Output: 18
    Explanation: One beautiful configuration with a maximum sum is heights = [2,2,5,5,2,2]. This configuration is beautiful since:
    - 1 <= heights[i] <= maxHeights[i]
    - heights is a mountain of peak i = 2.
    Note that, for this configuration, i = 3 can also be considered a peak.
    It can be shown that there exists no other beautiful configuration with a sum of heights greater than 18.
    
    
    Constraints:
    
     * 1 <= n == maxHeights <= 103
     * 1 <= maxHeights[i] <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([5, 3, 4, 1, 1]) == 13
    assert candidate([6, 5, 3, 9, 2, 7]) == 22
    assert candidate([3, 2, 5, 5, 2, 3]) == 18
    assert candidate([1000000000]) == 1000000000
    assert candidate([1]) == 1
    assert candidate([933754743]) == 933754743
    assert candidate([1, 1000000000]) == 1000000001
    assert candidate([1000000000, 1000000000]) == 2000000000
    assert candidate([999999999, 1000000000]) == 1999999999
    assert candidate([1000000000, 999999999]) == 1999999999
    assert candidate([30, 1]) == 31
    assert candidate([1, 12, 19]) == 32
    assert candidate([1000000000, 1000000000, 1000000000]) == 3000000000
    assert candidate([999999999, 1000000000, 999999999]) == 2999999998
    assert candidate([1000000000, 999999999, 999999998]) == 2999999997
    assert candidate([999999998, 999999999, 1000000000]) == 2999999997
    assert candidate([1, 1, 1]) == 3
    assert candidate([1, 1, 4, 3, 3, 3, 6]) == 20
    assert candidate([2, 4, 1, 3, 5]) == 11
    assert candidate([1, 5, 2, 5, 6, 4, 6, 3, 4, 5]) == 33
    assert candidate([3, 6, 3, 5, 5, 1, 2, 5, 5, 6]) == 24
    assert candidate([1, 6, 5, 6, 2, 4, 1, 5]) == 23
    assert candidate([5, 1, 6, 5, 4, 4, 2]) == 23
    assert candidate([3, 4, 3, 1, 1, 3]) == 13
    assert candidate([4, 1, 6, 5, 3, 6]) == 19
    assert candidate([3, 5, 5, 6, 4, 6, 5, 6]) == 35
    assert candidate([6, 4, 3, 3]) == 16
    assert candidate([6, 4, 3, 6, 1, 2, 2, 3]) == 20
    assert candidate([6, 5, 1, 4, 6, 1, 5]) == 16
    assert candidate([2, 3, 4, 4, 3, 2, 3, 5, 5, 5]) == 30
    assert candidate([5, 4, 6, 1, 2]) == 16
    assert candidate([1, 4, 2]) == 7
    assert candidate([5, 2, 4, 4]) == 12
    assert candidate([1, 5, 5, 3, 3]) == 17
    assert candidate([3, 1, 1, 4, 5, 5, 4, 6]) == 25
    assert candidate([1, 4, 3, 4, 5, 1]) == 17
    assert candidate([5, 5, 3, 1, 1, 2, 5, 5]) == 18
    assert candidate([3, 1, 3, 2, 6, 1, 4, 4, 6]) == 20
    assert candidate([5, 3, 3]) == 11
    assert candidate([5, 2, 1, 4, 3, 5]) == 14
    assert candidate([1, 3, 2, 1]) == 7
    assert candidate([1, 3, 6]) == 10
    assert candidate([5, 5, 5, 3, 3, 3, 3]) == 27
    assert candidate([1, 3, 3, 2, 1, 2]) == 11
    assert candidate([5, 5, 4, 1, 4, 4, 5, 6, 4]) == 27
    assert candidate([3, 5, 5, 6, 2]) == 21
    assert candidate([4, 6, 6, 1]) == 17
    assert candidate([4, 2, 6, 1, 4, 1, 5, 3, 6]) == 18
    assert candidate([4, 1, 6, 3, 6, 6]) == 20
    assert candidate([5, 2, 1, 4, 1, 6, 1, 5, 3, 4]) == 18
    assert candidate([1, 4, 6, 3, 5, 1]) == 18
    assert candidate([6, 1, 2, 5]) == 9
    assert candidate([6, 1, 5, 1, 6, 2, 2]) == 14
    assert candidate([6, 1, 2, 3, 4, 4]) == 15
    assert candidate([6, 1, 5]) == 8
    assert candidate([1, 6, 6, 3, 5, 6, 1, 1]) == 24
    assert candidate([2, 6, 1, 5, 1, 2, 3]) == 13
    assert candidate([3, 5, 1, 6, 3, 6]) == 15
    assert candidate([4, 4, 5, 3]) == 16
    assert candidate([3, 5, 4, 4, 3, 1, 1, 6]) == 22
    assert candidate([5, 6, 4, 4, 5, 1, 2, 3, 5, 6]) == 28
    assert candidate([2, 5, 1, 5, 5]) == 13
    assert candidate([1, 2, 6, 2, 6, 5, 5]) == 23
    assert candidate([1, 1, 6, 4, 5]) == 16
    assert candidate([3, 4, 1, 6, 2]) == 11
    assert candidate([1, 3, 3, 5, 6, 4, 6, 5, 2, 2]) == 34
    assert candidate([2, 4, 6, 4, 6, 3, 1, 5, 6]) == 26
    assert candidate([1, 6, 1, 6, 4]) == 13
    assert candidate([4, 2, 1]) == 7
    assert candidate([1, 2, 4, 1]) == 8
    assert candidate([1, 3, 3, 2, 5, 1, 4, 3, 1, 5]) == 17
    assert candidate([4, 3, 1, 4]) == 9
    assert candidate([5, 1, 3, 4, 5]) == 14
    assert candidate([1, 5, 4, 2]) == 12
    assert candidate([2, 6, 4, 3, 2, 2, 2, 5, 6, 5]) == 30
    assert candidate([2, 6, 1, 2, 1, 1, 2, 4]) == 14
    assert candidate([1, 2, 5, 3, 3, 3, 5]) == 20
    assert candidate([2, 5, 2, 2, 1]) == 12
    assert candidate([3, 5, 3, 4]) == 14
    assert candidate([4, 6, 6, 3, 4, 1, 6]) == 24
    assert candidate([2, 3, 5, 3, 4, 1, 1, 1, 3, 2]) == 21
    assert candidate([6, 6, 5, 3, 5, 4, 5]) == 29
    assert candidate([5, 5, 2, 2, 4, 2, 3, 2, 4, 4]) == 26
    assert candidate([1, 2, 5]) == 8
    assert candidate([3, 6, 2, 4, 5, 2, 2, 5, 1]) == 22
    assert candidate([6, 2, 6, 3, 4, 6, 2]) == 22
    assert candidate([6, 2, 5]) == 10
    assert candidate([5, 4, 2, 6]) == 13
    assert candidate([2, 6, 5, 3]) == 16
    assert candidate([4, 5, 4, 1, 6, 5, 1, 3]) == 18
    assert candidate([4, 1, 2, 4, 6, 2, 6, 3]) == 20
    assert candidate([6, 4, 4, 4, 2]) == 20
    assert candidate([5, 5, 4, 2]) == 16
    assert candidate([5, 3, 3, 4, 2, 2, 1, 4]) == 20
    assert candidate([6, 5, 6, 6, 6]) == 28
    assert candidate([6, 3, 5, 6, 2, 2, 3]) == 23
    assert candidate([4, 6, 4, 5]) == 18
    assert candidate([3, 5, 4, 2, 1, 1, 5, 6, 1]) == 19
    assert candidate([2, 3, 5, 6, 2, 4]) == 20
    assert candidate([4, 5, 2, 1, 4, 6, 6, 1, 6, 2]) == 23


def test_check():
    check(maximumSumOfHeights)


### Metadata below ###
# question_id = 3114
# question_title = Beautiful Towers I
# question_title_slug = beautiful-towers-i
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 160
# question_dislikes = 26