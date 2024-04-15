from typing import List

def maxSpending(values: List[List[int]]) -> int:
    """
    You are given a 0-indexed m * n integer matrix values, representing the values of m * n different items in m different shops. Each shop has n items where the jth item in the ith shop has a value of values[i][j]. Additionally, the items in the ith shop are sorted in non-increasing order of value. That is, values[i][j] >= values[i][j + 1] for all 0 <= j < n - 1.
    
    On each day, you would like to buy a single item from one of the shops. Specifically, On the dth day you can:
    
     * Pick any shop i.
     * Buy the rightmost available item j for the price of values[i][j] * d. That is, find the greatest index j such that item j was never bought before, and buy it for the price of values[i][j] * d.
    
    Note that all items are pairwise different. For example, if you have bought item 0 from shop 1, you can still buy item 0 from any other shop.
    
    Return the maximum amount of money that can be spent on buying all m * n products.
    
    Example 1:
    
    Input: values = [[8,5,2],[6,4,1],[9,7,3]]
    Output: 285
    Explanation: On the first day, we buy product 2 from shop 1 for a price of values[1][2] * 1 = 1.
    On the second day, we buy product 2 from shop 0 for a price of values[0][2] * 2 = 4.
    On the third day, we buy product 2 from shop 2 for a price of values[2][2] * 3 = 9.
    On the fourth day, we buy product 1 from shop 1 for a price of values[1][1] * 4 = 16.
    On the fifth day, we buy product 1 from shop 0 for a price of values[0][1] * 5 = 25.
    On the sixth day, we buy product 0 from shop 1 for a price of values[1][0] * 6 = 36.
    On the seventh day, we buy product 1 from shop 2 for a price of values[2][1] * 7 = 49.
    On the eighth day, we buy product 0 from shop 0 for a price of values[0][0] * 8 = 64.
    On the ninth day, we buy product 0 from shop 2 for a price of values[2][0] * 9 = 81.
    Hence, our total spending is equal to 285.
    It can be shown that 285 is the maximum amount of money that can be spent buying all m * n products.
    
    Example 2:
    
    Input: values = [[10,8,6,4,2],[9,7,5,3,2]]
    Output: 386
    Explanation: On the first day, we buy product 4 from shop 0 for a price of values[0][4] * 1 = 2.
    On the second day, we buy product 4 from shop 1 for a price of values[1][4] * 2 = 4.
    On the third day, we buy product 3 from shop 1 for a price of values[1][3] * 3 = 9.
    On the fourth day, we buy product 3 from shop 0 for a price of values[0][3] * 4 = 16.
    On the fifth day, we buy product 2 from shop 1 for a price of values[1][2] * 5 = 25.
    On the sixth day, we buy product 2 from shop 0 for a price of values[0][2] * 6 = 36.
    On the seventh day, we buy product 1 from shop 1 for a price of values[1][1] * 7 = 49.
    On the eighth day, we buy product 1 from shop 0 for a price of values[0][1] * 8 = 64
    On the ninth day, we buy product 0 from shop 1 for a price of values[1][0] * 9 = 81.
    On the tenth day, we buy product 0 from shop 0 for a price of values[0][0] * 10 = 100.
    Hence, our total spending is equal to 386.
    It can be shown that 386 is the maximum amount of money that can be spent buying all m * n products.
    
    
    Constraints:
    
     * 1 <= m == values.length <= 10
     * 1 <= n == values[i].length <= 104
     * 1 <= values[i][j] <= 106
     * values[i] are sorted in non-increasing order.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[8, 5, 2], [6, 4, 1], [9, 7, 3]]) == 285
    assert candidate([[10, 8, 6, 4, 2], [9, 7, 5, 3, 2]]) == 386
    assert candidate([[1000000]]) == 1000000
    assert candidate([[1]]) == 1
    assert candidate([[1], [2]]) == 5
    assert candidate([[2], [1]]) == 5
    assert candidate([[1], [1]]) == 3
    assert candidate([[5, 2]]) == 12
    assert candidate([[5, 5]]) == 15
    assert candidate([[7, 5]]) == 19
    assert candidate([[3, 2, 1]]) == 14
    assert candidate([[2, 2, 1]]) == 11
    assert candidate([[3, 3, 2]]) == 17
    assert candidate([[3], [2], [1]]) == 14
    assert candidate([[2], [10], [1]]) == 35
    assert candidate([[1000000, 1000000, 1000000]]) == 6000000
    assert candidate([[1000000, 1000000, 1000000, 1000000]]) == 10000000
    assert candidate([[1000000], [1000000], [1000000], [1000000]]) == 10000000
    assert candidate([[1000000, 1000000], [1000000, 1000000]]) == 10000000
    assert candidate([[2, 1], [4, 3]]) == 30
    assert candidate([[3, 1], [4, 2]]) == 30
    assert candidate([[4, 1], [3, 2]]) == 30
    assert candidate([[15, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 9, 9, 8, 7, 5, 5, 5, 1]]) == 2162
    assert candidate([[13, 13, 11, 7, 2, 1], [13, 10, 10, 6, 3, 3]]) == 776
    assert candidate([[12, 6], [13, 5], [13, 3], [6, 6], [15, 6], [5, 4], [6, 1]]) == 971
    assert candidate([[15, 15, 14, 14, 14, 10, 10, 9, 9, 8, 8, 8, 7, 7, 7, 4]]) == 1585
    assert candidate([[11, 10], [10, 1], [14, 6], [13, 5], [7, 3], [10, 10], [10, 5]]) == 1061
    assert candidate([[15, 13, 12, 7, 6, 4, 1]]) == 298
    assert candidate([[8, 2], [4, 1], [10, 4]]) == 133
    assert candidate([[10, 4], [13, 2], [7, 5], [15, 11]]) == 380
    assert candidate([[13, 10, 10, 9, 8, 5, 5, 2, 1, 1]]) == 465
    assert candidate([[15, 14, 8, 7, 5, 5, 1]]) == 283
    assert candidate([[15, 15, 14, 14, 14, 14, 13, 11, 10, 10, 10, 9, 7, 7, 6, 6, 4, 4, 2, 1]]) == 2449
    assert candidate([[15, 14, 11, 10, 10, 6, 2], [13, 8, 8, 6, 6, 3, 2]]) == 1084
    assert candidate([[15, 15, 14, 13, 13, 12, 11, 9, 9, 9, 8, 6, 5, 5, 4, 3, 2, 1, 1]]) == 2030
    assert candidate([[15, 10, 7], [14, 2, 2], [14, 13, 12], [13, 13, 10]]) == 975
    assert candidate([[10, 9, 3, 3], [11, 8, 7, 2], [14, 14, 13, 1], [14, 14, 11, 4], [13, 11, 9, 5]]) == 2338
    assert candidate([[11, 7, 5, 2], [15, 5, 5, 3]]) == 307
    assert candidate([[15, 10, 10, 9, 8, 7, 4, 2, 2]]) == 425
    assert candidate([[15, 13, 12, 12, 10, 5, 4, 3, 1]]) == 484
    assert candidate([[12, 12, 12, 11, 10, 10, 7, 7, 6, 5, 5, 3, 2, 1]]) == 979
    assert candidate([[15, 13, 13, 13, 12, 12, 11, 11, 10, 9, 9, 9, 8, 6, 6, 4, 4, 3, 2, 1]]) == 2253
    assert candidate([[14, 11], [11, 8], [10, 4], [4, 3], [9, 6], [8, 4], [7, 7], [10, 4], [14, 4]]) == 1621
    assert candidate([[14, 13, 13, 11, 11, 8, 8, 7, 6, 4, 3, 2, 1]]) == 912
    assert candidate([[15, 14, 14, 10, 10, 9, 9, 7, 7, 7, 7, 7, 6, 6, 6, 4, 4, 3, 3]]) == 1823
    assert candidate([[14, 13, 11, 10, 10, 1, 1], [15, 12, 8, 6, 6, 5, 5]]) == 1120
    assert candidate([[15, 14, 13, 12, 11, 10, 10, 10, 9, 7, 6, 6, 4, 3, 3, 3, 2, 2, 1]]) == 1860
    assert candidate([[12, 6, 5, 4, 2]]) == 109
    assert candidate([[15, 15, 14, 13, 12, 12, 12, 11, 10, 10, 9, 9, 9, 8, 7, 6, 3, 2]]) == 2006
    assert candidate([[15, 14, 12, 11, 10, 10, 7, 6, 2, 1]]) == 610
    assert candidate([[15, 13, 12, 11, 8, 6, 5]]) == 328
    assert candidate([[15, 15, 12, 10, 9, 7, 7, 6, 6, 5, 4, 2, 1]]) == 896
    assert candidate([[15, 15, 12, 12, 10, 10, 9, 7, 6, 4, 4, 4, 1]]) == 969
    assert candidate([[15, 14, 14, 13, 8, 7, 7, 4, 3, 3, 2, 1]]) == 792
    assert candidate([[15, 15, 14, 14, 14, 13, 10, 8, 6, 6, 5, 5, 3, 3, 2, 2, 1]]) == 1634
    assert candidate([[14, 12, 11, 10, 10, 8, 7, 7, 5, 5, 3, 3, 3]]) == 855
    assert candidate([[14, 14, 9, 9, 4, 4, 1], [12, 12, 9, 8, 7, 6, 3]]) == 1060
    assert candidate([[15, 15, 15, 13, 12, 12, 10, 9, 9, 9, 9, 7, 6, 4, 4, 4, 1]]) == 1727
    assert candidate([[9, 4], [13, 4], [13, 9], [6, 5], [8, 2], [13, 1]]) == 732
    assert candidate([[14, 9, 9, 9, 8, 7, 5], [15, 14, 10, 8, 5, 3, 1]]) == 1094
    assert candidate([[15, 15, 14, 13, 10, 3, 1]]) == 354
    assert candidate([[13, 12], [13, 12], [11, 8], [14, 3]]) == 441
    assert candidate([[13, 12, 11, 10, 7, 5, 5, 1]]) == 358
    assert candidate([[15, 10, 9, 8, 8, 7, 7, 5, 4, 3, 1]]) == 582
    assert candidate([[10, 10, 6, 4, 1], [14, 13, 13, 11, 9], [14, 11, 7, 4, 3]]) == 1302
    assert candidate([[15, 14, 12, 12, 11, 11, 10, 9, 9, 8, 8, 6, 6, 4, 2, 2, 1]]) == 1596
    assert candidate([[12, 5, 4, 3, 3, 2, 1, 1], [13, 11, 9, 9, 6, 4, 3, 1]]) == 1019
    assert candidate([[15, 15, 13, 11, 10, 10, 7, 1, 1]]) == 526
    assert candidate([[14, 12, 10, 4, 3, 1], [12, 12, 8, 7, 6, 2], [15, 13, 8, 5, 4, 1]]) == 1719
    assert candidate([[13, 8, 8, 8, 5, 4, 3], [15, 13, 9, 8, 7, 3, 2]]) == 1006
    assert candidate([[13, 13, 12, 12, 9]]) == 186
    assert candidate([[10, 3], [11, 9], [10, 5], [8, 7], [6, 1]]) == 472
    assert candidate([[15, 15, 12, 12, 11, 10, 9, 8, 2, 2, 1, 1, 1]]) == 941
    assert candidate([[14, 14, 13, 13, 11, 11, 10, 10, 10, 9, 8, 8, 7, 7, 6, 6, 5, 4, 3]]) == 2023
    assert candidate([[11, 10, 9, 7, 6, 5, 3, 1], [14, 14, 10, 9, 7, 4, 4, 3]]) == 1270
    assert candidate([[6, 2], [10, 2], [13, 5], [8, 7], [10, 3], [13, 2], [13, 6]]) == 972
    assert candidate([[15, 15, 15, 14, 13, 12, 6, 5, 5, 4]]) == 694
    assert candidate([[11, 9], [8, 1], [2, 1], [15, 13], [12, 4], [14, 5], [13, 4]]) == 1113
    assert candidate([[15, 14, 14, 13, 12, 11, 10, 10, 5, 4, 2]]) == 800
    assert candidate([[13, 12, 12, 6, 5, 5, 4, 2, 2, 2, 1]]) == 523
    assert candidate([[13, 8], [15, 1], [9, 1], [13, 1]]) == 372
    assert candidate([[12, 8, 4, 1], [14, 8, 8, 3]]) == 335
    assert candidate([[15, 14, 14, 13, 13, 13, 12, 12, 9, 9, 8, 7, 6, 5, 5, 5, 4, 3, 1]]) == 2113
    assert candidate([[13, 9, 8, 2, 1], [9, 4, 3, 2, 1], [10, 8, 6, 3, 1]]) == 877
    assert candidate([[8, 6], [13, 1], [12, 8], [8, 7]]) == 342
    assert candidate([[9, 7], [15, 15], [9, 8], [6, 1], [11, 4]]) == 585
    assert candidate([[14, 9, 9, 8, 6, 4, 2]]) == 257
    assert candidate([[15, 13, 11, 11, 10, 9, 5, 5, 4, 4, 4, 4, 3, 2]]) == 968
    assert candidate([[13, 7, 7, 4], [8, 8, 6, 6]]) == 305
    assert candidate([[15, 13, 12, 10, 10, 10, 9, 9, 9, 8, 7, 6, 6, 5, 4, 4, 2, 1, 1]]) == 1805
    assert candidate([[13, 13, 1], [11, 5, 4], [14, 5, 1], [15, 5, 2], [10, 1, 1], [15, 12, 1]]) == 1714
    assert candidate([[15, 15, 14, 14, 11, 10, 10, 8, 8, 8, 3, 1, 1]]) == 1050
    assert candidate([[3, 3], [15, 10], [14, 9]]) == 236
    assert candidate([[14, 13, 11, 10, 9, 7, 2]]) == 314
    assert candidate([[11, 7], [5, 3], [11, 6], [6, 1], [15, 13]]) == 550
    assert candidate([[14, 13, 13, 12, 12, 12, 11, 11, 9, 8, 8, 6, 5, 5, 5, 5, 3, 3, 2]]) == 1962
    assert candidate([[14, 14, 13, 13, 13, 12, 12, 11, 10, 9, 9, 8, 8, 7, 3, 2, 2]]) == 1750
    assert candidate([[15, 8], [12, 2], [15, 10], [9, 3], [5, 4], [14, 2], [7, 6]]) == 1091
    assert candidate([[15, 9, 7, 3, 3], [7, 6, 4, 3, 2], [15, 9, 8, 4, 4], [15, 10, 9, 7, 4]]) == 1952
    assert candidate([[12, 12, 10, 8, 8, 8, 8, 6, 2, 2, 1]]) == 585


def test_check():
    check(maxSpending)


### Metadata below ###
# question_id = 3107
# question_title = Maximum Spending After Buying Items
# question_title_slug = maximum-spending-after-buying-items
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 66
# question_dislikes = 20