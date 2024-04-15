def findMaximumNumber(k: int, x: int) -> int:
    """
    You are given an integer k and an integer x.
    Consider s is the 1-indexed binary representation of an integer num. The price of a number num is the number of i's such that i % x == 0 and s[i] is a set bit.
    Return the greatest integer num such that the sum of prices of all numbers from 1 to num is less than or equal to k.
    Note:
    
    In the binary representation of a number set bit is a bit of value 1.
    The binary representation of a number will be indexed from right to left. For example, if s == 11100, s[4] == 1 and s[2] == 0.
    
    
    Example 1:
    
    Input: k = 9, x = 1
    Output: 6
    Explanation: The numbers 1, 2, 3, 4, 5, and 6 can be written in binary representation as "1", "10", "11", "100", "101", and "110" respectively.
    Since x is equal to 1, the price of each number is the number of its set bits.
    The number of set bits in these numbers is 9. So the sum of the prices of the first 6 numbers is 9.
    So the answer is 6.
    Example 2:
    
    Input: k = 7, x = 2
    Output: 9
    Explanation: Since x is equal to 2, we should just check eventh bits.
    The second bit of binary representation of numbers 2 and 3 is a set bit. So the sum of their prices is 2.
    The second bit of binary representation of numbers 6 and 7 is a set bit. So the sum of their prices is 2.
    The fourth bit of binary representation of numbers 8 and 9 is a set bit but their second bit is not. So the sum of their prices is 2.
    Numbers 1, 4, and 5 don't have set bits in their eventh bits in their binary representation. So the sum of their prices is 0.
    The second and the fourth bit of the binary representation of the number 10 are a set bit. So its price is 2.
    The sum of the prices of the first 9 numbers is 6.
    Because the sum of the prices of the first 10 numbers is 8, the answer is 9.
    
    Constraints:
    
    1 <= k <= 1015
    1 <= x <= 8
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(9, 1) == 6
    assert candidate(7, 2) == 9
    assert candidate(19, 6) == 50
    assert candidate(57, 4) == 120
    assert candidate(58, 5) == 121
    assert candidate(60, 8) == 187
    assert candidate(72, 5) == 151
    assert candidate(81, 6) == 176
    assert candidate(83, 1) == 33
    assert candidate(83, 7) == 210
    assert candidate(116, 5) == 243
    assert candidate(157, 6) == 316
    assert candidate(201, 3) == 212
    assert candidate(268, 6) == 555
    assert candidate(281, 5) == 531
    assert candidate(283, 3) == 274
    assert candidate(309, 4) == 364
    assert candidate(363, 7) == 746
    assert candidate(409, 2) == 220
    assert candidate(456, 7) == 967
    assert candidate(466, 3) == 365
    assert candidate(500, 3) == 379
    assert candidate(513, 1) == 148
    assert candidate(521, 8) == 1160
    assert candidate(540, 4) == 571
    assert candidate(545, 1) == 156
    assert candidate(579, 1) == 165
    assert candidate(584, 1) == 166
    assert candidate(589, 3) == 427
    assert candidate(599, 6) == 1206
    assert candidate(632, 2) == 346
    assert candidate(692, 3) == 481
    assert candidate(701, 7) == 1404
    assert candidate(704, 4) == 727
    assert candidate(731, 7) == 1498
    assert candidate(781, 1) == 210
    assert candidate(782, 7) == 1613
    assert candidate(808, 6) == 1639
    assert candidate(814, 7) == 1645
    assert candidate(818, 1) == 218
    assert candidate(821, 2) == 433
    assert candidate(829, 6) == 1660
    assert candidate(865, 7) == 1760
    assert candidate(874, 6) == 1769
    assert candidate(879, 1) == 230
    assert candidate(879, 3) == 628
    assert candidate(898, 8) == 1921
    assert candidate(902, 3) == 653
    assert candidate(905, 8) == 1928
    assert candidate(937, 8) == 1960
    assert candidate(957, 3) == 701
    assert candidate(973, 1) == 247
    assert candidate(978, 3) == 737
    assert candidate(991, 5) == 1006
    assert candidate(1029, 3) == 771
    assert candidate(1065, 6) == 2083
    assert candidate(1086, 3) == 805
    assert candidate(1105, 1) == 280
    assert candidate(1113, 3) == 815
    assert candidate(1143, 4) == 1190
    assert candidate(1148, 2) == 564
    assert candidate(1150, 7) == 2301
    assert candidate(1156, 3) == 835
    assert candidate(1171, 7) == 2386
    assert candidate(1172, 1) == 297
    assert candidate(1227, 7) == 2506
    assert candidate(1236, 8) == 2515
    assert candidate(1270, 5) == 1525
    assert candidate(1274, 6) == 2220
    assert candidate(1281, 6) == 2223
    assert candidate(1282, 6) == 2224
    assert candidate(1288, 5) == 1543
    assert candidate(1376, 6) == 2287
    assert candidate(1393, 7) == 2800
    assert candidate(1415, 4) == 1454
    assert candidate(1446, 7) == 2917
    assert candidate(1459, 1) == 358
    assert candidate(1520, 3) == 1017
    assert candidate(1539, 6) == 2400
    assert candidate(1545, 7) == 3144
    assert candidate(1573, 5) == 1732
    assert candidate(1588, 8) == 3251
    assert candidate(1590, 7) == 3189
    assert candidate(1617, 7) == 3280
    assert candidate(1633, 6) == 2463
    assert candidate(1634, 7) == 3297
    assert candidate(1687, 2) == 741
    assert candidate(1731, 6) == 2528
    assert candidate(1750, 5) == 1850
    assert candidate(1751, 7) == 3542
    assert candidate(1760, 8) == 3551
    assert candidate(1782, 8) == 3573
    assert candidate(1787, 2) == 766
    assert candidate(1851, 2) == 797
    assert candidate(1856, 2) == 799
    assert candidate(1874, 8) == 3793
    assert candidate(1893, 7) == 3812
    assert candidate(1900, 1) == 444
    assert candidate(1900, 7) == 3819
    assert candidate(1902, 3) == 1336


def test_check():
    check(findMaximumNumber)


### Metadata below ###
# question_id = 3240
# question_title = Maximum Number That Sum of the Prices Is Less Than or Equal to K
# question_title_slug = maximum-number-that-sum-of-the-prices-is-less-than-or-equal-to-k
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 125
# question_dislikes = 74