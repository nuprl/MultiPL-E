from typing import List

def minimumAddedCoins(coins: List[int], target: int) -> int:
    """
    You are given a 0-indexed integer array coins, representing the values of the coins available, and an integer target.
    An integer x is obtainable if there exists a subsequence of coins that sums to x.
    Return the minimum number of coins of any value that need to be added to the array so that every integer in the range [1, target] is obtainable.
    A subsequence of an array is a new non-empty array that is formed from the original array by deleting some (possibly none) of the elements without disturbing the relative positions of the remaining elements.
    
    Example 1:
    
    Input: coins = [1,4,10], target = 19
    Output: 2
    Explanation: We need to add coins 2 and 8. The resulting array will be [1,2,4,8,10].
    It can be shown that all integers from 1 to 19 are obtainable from the resulting array, and that 2 is the minimum number of coins that need to be added to the array. 
    
    Example 2:
    
    Input: coins = [1,4,10,5,7,19], target = 19
    Output: 1
    Explanation: We only need to add the coin 2. The resulting array will be [1,2,4,5,7,10,19].
    It can be shown that all integers from 1 to 19 are obtainable from the resulting array, and that 1 is the minimum number of coins that need to be added to the array. 
    
    Example 3:
    
    Input: coins = [1,1,1], target = 20
    Output: 3
    Explanation: We need to add coins 4, 8, and 16. The resulting array will be [1,1,1,4,8,16].
    It can be shown that all integers from 1 to 20 are obtainable from the resulting array, and that 3 is the minimum number of coins that need to be added to the array.
    
    
    Constraints:
    
    1 <= target <= 105
    1 <= coins.length <= 105
    1 <= coins[i] <= target
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 4, 10], 19) == 2
    assert candidate([1, 4, 10, 5, 7, 19], 19) == 1
    assert candidate([1, 1, 1], 20) == 3
    assert candidate([1], 100000) == 16
    assert candidate([100000], 100000) == 17
    assert candidate([2], 5) == 2
    assert candidate([5, 6, 7], 10) == 3
    assert candidate([5, 6, 7], 15) == 3
    assert candidate([4, 11, 13, 15, 7, 5, 12, 11, 5, 9], 34) == 2
    assert candidate([8, 12, 9], 27) == 3
    assert candidate([2, 13, 7, 1, 11], 35) == 1
    assert candidate([10, 3, 5, 11, 6], 27) == 2
    assert candidate([6, 6, 6, 15, 4], 31) == 2
    assert candidate([6, 15, 6], 22) == 3
    assert candidate([8, 14, 15, 4, 14, 15, 8, 10, 8], 42) == 2
    assert candidate([9, 14, 14, 9, 14, 5, 12, 10, 11], 17) == 3
    assert candidate([14, 5, 13, 3, 7, 10, 10, 10], 32) == 2
    assert candidate([8, 6, 7, 12], 26) == 3
    assert candidate([15, 1, 12], 43) == 4
    assert candidate([4, 1, 4, 10], 16) == 1
    assert candidate([10, 2, 13, 5, 7, 15], 26) == 2
    assert candidate([10, 1, 10], 10) == 3
    assert candidate([9, 5, 13, 8], 30) == 3
    assert candidate([13, 9, 4, 5], 37) == 3
    assert candidate([1, 15, 5, 12, 13, 10, 14, 8, 1, 7], 29) == 1
    assert candidate([14, 14, 6, 2, 9, 1, 4, 10], 38) == 0
    assert candidate([7, 10, 6, 14, 10, 11, 2], 45) == 2
    assert candidate([6, 3, 2, 6, 8, 9, 13, 3, 12, 13], 47) == 1
    assert candidate([8, 1, 9, 2, 15], 34) == 1
    assert candidate([5, 13, 9, 11, 6, 1], 27) == 2
    assert candidate([10, 15, 7, 14, 2, 2, 12, 14, 13], 45) == 2
    assert candidate([9, 3, 10, 3, 8, 2, 7, 11, 1], 26) == 0
    assert candidate([9, 11, 2, 5, 2, 7, 11], 28) == 1
    assert candidate([5, 5, 15, 3, 13], 17) == 2
    assert candidate([2, 2, 9, 10, 7, 15, 4, 3, 9, 15], 16) == 1
    assert candidate([3, 1, 12, 15, 5, 10], 34) == 1
    assert candidate([12, 7, 5, 2, 12], 50) == 3
    assert candidate([11, 6, 10, 3, 1, 7, 11], 44) == 1
    assert candidate([13, 12, 1, 11, 3, 4, 11, 9, 13, 13], 41) == 1
    assert candidate([6, 4, 1, 9, 9, 2, 10, 7], 48) == 0
    assert candidate([10, 4, 4, 3, 9, 6, 8, 4, 7, 7], 22) == 2
    assert candidate([15, 9, 5, 7, 4, 13], 19) == 2
    assert candidate([13, 11, 8, 6, 11], 16) == 3
    assert candidate([8, 14, 15, 9, 8, 10, 13, 7, 3], 42) == 2
    assert candidate([6, 14, 7, 4, 10, 9, 10, 9, 7], 22) == 2
    assert candidate([4, 6, 7, 15, 13, 14, 5, 7], 16) == 2
    assert candidate([10, 12, 5], 32) == 3
    assert candidate([8, 5, 14, 13, 13, 11, 14, 13], 43) == 3
    assert candidate([3, 14, 4, 2, 10, 3, 7], 50) == 2
    assert candidate([1, 3, 11, 9, 2, 10, 6, 12], 12) == 0
    assert candidate([2, 5, 4, 12, 6, 7, 11, 15], 17) == 1
    assert candidate([7, 12, 10, 15, 6, 15, 14, 2, 9, 12], 24) == 2
    assert candidate([4, 7, 15, 10, 14], 38) == 2
    assert candidate([10, 1, 12, 9], 16) == 3
    assert candidate([5, 8, 12, 6, 15, 13, 11, 5], 35) == 3
    assert candidate([6, 2, 6], 39) == 3
    assert candidate([15, 10, 5, 4, 7, 12, 12, 5, 11], 30) == 2
    assert candidate([9, 10, 7, 12, 10, 4], 35) == 2
    assert candidate([4, 4, 2], 8) == 1
    assert candidate([13, 4, 15, 1, 8], 25) == 1
    assert candidate([14, 7, 7, 1, 6, 14, 3, 15, 13], 18) == 1
    assert candidate([8, 2, 14, 2, 3, 10, 15, 5], 31) == 1
    assert candidate([3, 7, 12, 10, 11, 5, 3], 36) == 2
    assert candidate([5, 3, 14, 8, 10], 33) == 2
    assert candidate([9, 14, 9, 14, 4, 1, 4, 12, 12], 41) == 1
    assert candidate([6, 3, 9, 7, 3, 4, 4, 15, 15, 10], 47) == 2
    assert candidate([4, 9, 6], 43) == 3
    assert candidate([12, 9, 13, 12, 10, 4, 9, 9, 4], 28) == 2
    assert candidate([6, 8, 2, 13, 1, 5, 6], 31) == 1
    assert candidate([9, 8, 9, 9, 3, 5, 10, 15, 1], 45) == 1
    assert candidate([1, 10, 15, 15], 24) == 3
    assert candidate([9, 12, 2], 43) == 4
    assert candidate([14, 13, 10, 2, 2], 16) == 2
    assert candidate([11, 5, 5, 13, 4, 13, 10, 3, 4], 21) == 2
    assert candidate([8, 9, 1, 5, 8, 7, 6, 8, 6], 47) == 2
    assert candidate([4, 10, 9], 18) == 3
    assert candidate([7, 9, 7, 6, 8, 11], 50) == 3
    assert candidate([11, 6, 6, 14, 12, 2], 46) == 2
    assert candidate([8, 9, 2], 31) == 3
    assert candidate([12, 1, 4, 3, 5, 3], 18) == 1
    assert candidate([4, 3, 13], 34) == 3
    assert candidate([9, 11, 3], 22) == 3
    assert candidate([1, 11, 15, 1, 10, 13, 7, 6, 12], 28) == 1
    assert candidate([1, 10, 8, 7, 12], 19) == 2
    assert candidate([1, 5, 15, 13, 8, 4, 5, 7], 29) == 1
    assert candidate([3, 8, 13, 8, 5, 3, 7, 2, 9, 8], 50) == 1
    assert candidate([4, 13, 12], 47) == 4
    assert candidate([9, 3, 10, 9, 11], 48) == 3
    assert candidate([8, 7, 6, 1, 9, 5, 5], 13) == 2
    assert candidate([11, 9, 1, 15], 16) == 3
    assert candidate([8, 13, 8], 27) == 3
    assert candidate([7, 10, 11, 3, 10, 14], 36) == 2
    assert candidate([14, 9, 6, 11, 13, 8, 8, 5, 6], 22) == 3
    assert candidate([9, 3, 6, 10, 11, 1, 5, 14, 3], 27) == 1
    assert candidate([4, 5, 9, 6, 2, 2, 10, 5, 13], 43) == 1
    assert candidate([3, 10, 2, 13, 6, 13, 14, 14, 3], 28) == 1
    assert candidate([14, 15, 15, 12, 13, 4, 15], 38) == 3
    assert candidate([10, 5, 12, 11, 9, 8, 1], 12) == 2
    assert candidate([15, 13, 12, 4], 31) == 3
    assert candidate([4, 5, 14, 13, 10, 12], 31) == 2


def test_check():
    check(minimumAddedCoins)


### Metadata below ###
# question_id = 3231
# question_title = Minimum Number of Coins to be Added
# question_title_slug = minimum-number-of-coins-to-be-added
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 227
# question_dislikes = 40