from typing import List

def minimumCoins(prices: List[int]) -> int:
    """
    You are at a fruit market with different types of exotic fruits on display.
    You are given a 1-indexed array prices, where prices[i] denotes the number of coins needed to purchase the ith fruit.
    The fruit market has the following offer:
    
    If you purchase the ith fruit at prices[i] coins, you can get the next i fruits for free.
    
    Note that even if you can take fruit j for free, you can still purchase it for prices[j] coins to receive a new offer.
    Return the minimum number of coins needed to acquire all the fruits.
    
    Example 1:
    
    Input: prices = [3,1,2]
    Output: 4
    Explanation: You can acquire the fruits as follows:
    - Purchase the 1st fruit with 3 coins, you are allowed to take the 2nd fruit for free.
    - Purchase the 2nd fruit with 1 coin, you are allowed to take the 3rd fruit for free.
    - Take the 3rd fruit for free.
    Note that even though you were allowed to take the 2nd fruit for free, you purchased it because it is more optimal.
    It can be proven that 4 is the minimum number of coins needed to acquire all the fruits.
    
    Example 2:
    
    Input: prices = [1,10,1,1]
    Output: 2
    Explanation: You can acquire the fruits as follows:
    - Purchase the 1st fruit with 1 coin, you are allowed to take the 2nd fruit for free.
    - Take the 2nd fruit for free.
    - Purchase the 3rd fruit for 1 coin, you are allowed to take the 4th fruit for free.
    - Take the 4th fruit for free.
    It can be proven that 2 is the minimum number of coins needed to acquire all the fruits.
    
    
    Constraints:
    
    1 <= prices.length <= 1000
    1 <= prices[i] <= 105
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([3, 1, 2]) == 4
    assert candidate([1, 10, 1, 1]) == 2
    assert candidate([26, 18, 6, 12, 49, 7, 45, 45]) == 39
    assert candidate([27, 17, 29, 45, 3, 39, 42, 26]) == 47
    assert candidate([14, 37, 37, 38, 24, 15, 12]) == 63
    assert candidate([1, 37, 19, 38, 11, 42, 18, 33, 6, 37, 15, 48, 23, 12, 41, 18, 27, 32]) == 37
    assert candidate([38, 23, 27, 32, 47, 45, 48, 24, 39, 26, 37, 42, 24, 45, 27, 26, 15, 16, 26, 6]) == 132
    assert candidate([45, 44, 5, 9, 22, 14, 29, 14, 21, 13, 45, 10, 2, 16, 14, 30, 26, 1, 49]) == 66
    assert candidate([37, 42, 6, 50, 50, 38, 30, 38, 1, 13, 25, 39, 18, 1, 35, 32, 12]) == 74
    assert candidate([17, 32, 11, 25, 22]) == 28
    assert candidate([18, 10, 1, 11, 6, 30, 19, 24, 1, 18, 37, 29, 28, 27, 38]) == 26
    assert candidate([3, 10, 25, 47, 49, 10, 49]) == 38
    assert candidate([46, 7, 15]) == 53
    assert candidate([16, 45, 25, 5, 18, 19, 25, 13, 33]) == 59
    assert candidate([21, 16, 7, 10, 30]) == 28
    assert candidate([21, 22, 29, 37, 23, 15, 39, 9, 19, 10, 6, 9, 33, 28, 43]) == 71
    assert candidate([37, 16, 42, 47, 16, 31, 39, 8, 26, 50, 33]) == 77
    assert candidate([32, 4]) == 32
    assert candidate([31, 9, 2, 36, 4, 45, 28, 28, 12, 22, 44, 17, 10, 48, 15, 22, 7, 14, 41]) == 56
    assert candidate([1, 31, 9, 36, 44, 2, 23]) == 12
    assert candidate([3, 7, 2, 36, 33, 7, 21, 40, 19]) == 12
    assert candidate([9, 4, 7, 29, 22, 50]) == 16
    assert candidate([28, 2, 40, 15]) == 30
    assert candidate([16, 17, 47, 20, 18, 37]) == 51
    assert candidate([42, 6, 44, 47, 11, 6, 30, 38, 41, 43, 46, 35, 28, 4, 47, 1, 7, 35]) == 93
    assert candidate([10, 10, 5, 8, 5, 13, 34, 31, 36]) == 20
    assert candidate([12, 20, 14, 46, 22, 1, 42, 50, 47, 47, 38, 37, 13]) == 40
    assert candidate([1, 38, 28, 46, 18, 22, 12, 7, 44, 44, 40, 36, 41, 5, 33, 5, 30, 33, 31]) == 46
    assert candidate([6, 45, 2, 29, 44, 14, 44]) == 22
    assert candidate([34, 13, 50, 42, 24, 47, 41, 8, 26, 34, 3, 48, 39, 24, 39, 26, 46]) == 74
    assert candidate([47, 9, 33, 6, 33, 40, 28, 37, 49, 39, 45, 14, 13, 40, 17, 14, 39, 12, 15, 6]) == 103
    assert candidate([32]) == 32
    assert candidate([35, 46, 50, 35, 11, 14, 44, 17, 45, 23, 34, 33, 8, 27, 19, 7, 10, 12, 14]) == 107
    assert candidate([50, 45, 14, 24, 18, 15, 9, 14]) == 73
    assert candidate([38, 19, 18, 15, 20, 43, 18, 9, 44, 26, 29]) == 74
    assert candidate([26, 21, 7, 40, 37, 44, 13, 3, 10, 9, 15, 12, 30, 18, 31, 10, 23]) == 55
    assert candidate([36, 50]) == 36
    assert candidate([1, 32, 48, 36, 26, 5, 30, 25, 2, 17, 26, 39, 17, 46, 34, 47, 43, 45, 20, 48]) == 71
    assert candidate([19, 24, 31, 24]) == 43
    assert candidate([1, 18, 25, 29, 17, 9, 3, 29, 23, 17, 18]) == 29
    assert candidate([18, 36, 18, 44, 30, 8, 42, 33, 45, 19, 50, 19, 24, 48]) == 63
    assert candidate([26, 25, 47, 36, 9, 31, 1, 29, 29, 42, 29, 42, 36, 19, 45, 4, 11, 7]) == 80
    assert candidate([24, 34, 47, 12, 24, 48, 14, 30, 28, 43, 35, 45, 11, 11, 35, 38]) == 95
    assert candidate([29, 18, 2, 6, 47, 32, 27, 12, 38, 17]) == 49
    assert candidate([3, 31, 15, 18, 47, 18, 2, 27, 24, 6, 36, 35, 41, 21, 30]) == 26
    assert candidate([29, 45, 8, 45, 23, 35]) == 37
    assert candidate([39, 37]) == 39
    assert candidate([18, 45, 6, 14, 41, 41]) == 24
    assert candidate([50, 21, 38, 2, 32, 49, 32, 40, 41, 34, 33, 40, 36, 16, 29, 34, 42, 40, 46]) == 121
    assert candidate([28, 17, 42, 20, 6, 26, 47, 6, 23]) == 51
    assert candidate([37, 27, 17, 40, 50, 35, 16, 4, 28, 5, 27, 13, 46, 7, 23, 27]) == 74
    assert candidate([11, 5, 40, 16, 20, 38]) == 32
    assert candidate([16, 27, 5, 38, 12, 24, 7, 49, 40, 13, 38, 13, 34, 38, 37, 2, 4, 44]) == 41
    assert candidate([25, 9, 49, 19, 33]) == 53
    assert candidate([47, 23, 46, 13, 26, 44, 43, 22, 43, 24, 13, 20, 6, 16, 8, 26]) == 105
    assert candidate([8, 1, 1]) == 9
    assert candidate([47, 45, 2, 25, 7, 46]) == 49
    assert candidate([4, 31, 50, 45, 5, 50]) == 40
    assert candidate([30, 41, 1, 49, 9, 49, 41, 27, 41, 14, 23, 3, 46, 40, 37, 28, 45, 19, 36, 49]) == 54
    assert candidate([6, 3, 49, 28, 31, 36, 5, 50, 39]) == 40
    assert candidate([37, 2, 19, 36, 26, 27, 3, 23, 10, 20, 33, 8, 39, 6, 28]) == 65
    assert candidate([37, 34, 12, 30, 43, 35, 6, 21, 47, 38, 14, 31, 49, 11, 14]) == 66
    assert candidate([49, 6, 12, 35, 17, 17, 2]) == 63
    assert candidate([45, 27, 43, 34, 41, 30, 28, 45, 24, 50, 20, 4, 15, 42]) == 116
    assert candidate([48, 22, 36]) == 70
    assert candidate([47, 13, 23, 31, 41, 25]) == 70
    assert candidate([3, 44, 17, 37, 9, 14, 37]) == 29
    assert candidate([4, 43, 7, 15, 38]) == 11
    assert candidate([10, 25, 7, 37, 6, 43, 4, 50, 9, 14, 36, 35, 36, 44, 17, 10, 44, 46, 50]) == 35
    assert candidate([45, 28, 10, 18, 18, 3, 42, 24, 14, 11, 13, 32, 37, 31, 50, 32]) == 69
    assert candidate([12, 38, 44, 24, 42, 9, 32, 40, 8, 20, 46, 39, 33]) == 73
    assert candidate([5, 42, 30, 20, 37, 26, 38, 30, 30, 32, 39, 31, 33, 41, 23, 4, 29]) == 85
    assert candidate([44, 22]) == 44
    assert candidate([8, 8, 11, 21, 9]) == 19
    assert candidate([2, 37, 19, 30, 37, 27, 10, 37]) == 31
    assert candidate([43, 27, 48, 22]) == 70
    assert candidate([50, 23, 37, 49, 45, 14, 18, 39, 50, 7, 31]) == 101
    assert candidate([37, 3, 32, 25, 21, 22, 26, 49, 14, 45, 1, 36]) == 62
    assert candidate([21, 29, 31, 28, 2, 41, 4, 43, 41, 16, 38, 33, 3, 6, 43, 22, 15]) == 59
    assert candidate([24, 47, 32, 41, 35, 14, 18, 23, 27, 8, 27]) == 70
    assert candidate([40, 25, 32]) == 65
    assert candidate([9, 18, 2, 26, 15, 3, 2, 33, 46, 6, 11, 34, 27, 7, 5, 7, 26, 13, 48]) == 18
    assert candidate([41, 8, 38, 32, 36, 30, 23, 49, 40, 46, 42, 34, 2, 12, 12, 19, 20, 50, 40]) == 104
    assert candidate([28, 8, 24, 14, 34, 36, 48]) == 50
    assert candidate([2, 36, 22, 41, 42, 26, 1, 48, 14, 27, 22, 26]) == 25
    assert candidate([25, 39, 21, 21, 16]) == 46
    assert candidate([44, 41, 36, 42, 21, 32, 45, 5]) == 101
    assert candidate([10]) == 10
    assert candidate([35, 29]) == 35
    assert candidate([38, 35, 33, 11, 43, 33]) == 71
    assert candidate([19, 29, 49, 20, 8, 12, 13, 28, 45, 9, 12, 3, 1, 17, 35]) == 65
    assert candidate([34, 22, 1, 41, 34, 27, 18]) == 53
    assert candidate([31, 9, 39, 6, 14, 32, 28, 35, 34, 42, 19, 41, 35, 24, 32, 16, 12, 49, 16]) == 73
    assert candidate([46, 50, 21, 14, 26, 47]) == 67
    assert candidate([5, 22, 36, 6, 15, 49, 20, 16, 36, 15, 32, 27, 50, 19, 12, 22, 9, 33]) == 57
    assert candidate([17, 4, 36, 4, 32, 11, 42, 12, 20]) == 36
    assert candidate([48, 33, 39, 1, 13, 40]) == 82
    assert candidate([32, 19, 33, 30, 32, 44, 47, 8, 10, 1, 23, 6, 28, 19, 20, 48, 12, 10, 20, 22]) == 84
    assert candidate([29, 5, 46, 34, 38, 7, 1, 15]) == 68
    assert candidate([39, 50, 22, 1, 38, 22, 49, 16, 27, 48, 45, 28, 43, 34]) == 78


def test_check():
    check(minimumCoins)


### Metadata below ###
# question_id = 3209
# question_title = Minimum Number of Coins for Fruits
# question_title_slug = minimum-number-of-coins-for-fruits
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 141
# question_dislikes = 27