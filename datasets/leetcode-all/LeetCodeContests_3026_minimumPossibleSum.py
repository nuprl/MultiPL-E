def minimumPossibleSum(n: int, target: int) -> int:
    """
    You are given positive integers n and target.
    
    An array nums is beautiful if it meets the following conditions:
    
     * nums.length == n.
     * nums consists of pairwise distinct positive integers.
     * There doesn't exist two distinct indices, i and j, in the range [0, n - 1], such that nums[i] + nums[j] == target.
    
    Return the minimum possible sum that a beautiful array could have modulo 109 + 7.
    
    Example 1:
    
    Input: n = 2, target = 3
    Output: 4
    Explanation: We can see that nums = [1,3] is beautiful.
    - The array nums has length n = 2.
    - The array nums consists of pairwise distinct positive integers.
    - There doesn't exist two distinct indices, i and j, with nums[i] + nums[j] == 3.
    It can be proven that 4 is the minimum possible sum that a beautiful array could have.
    
    Example 2:
    
    Input: n = 3, target = 3
    Output: 8
    Explanation: We can see that nums = [1,3,4] is beautiful.
    - The array nums has length n = 3.
    - The array nums consists of pairwise distinct positive integers.
    - There doesn't exist two distinct indices, i and j, with nums[i] + nums[j] == 3.
    It can be proven that 8 is the minimum possible sum that a beautiful array could have.
    
    Example 3:
    
    Input: n = 1, target = 1
    Output: 1
    Explanation: We can see, that nums = [1] is beautiful.
    
    
    Constraints:
    
     * 1 <= n <= 109
     * 1 <= target <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2, 3) == 4
    assert candidate(3, 3) == 8
    assert candidate(1, 1) == 1
    assert candidate(16, 6) == 162
    assert candidate(16, 32) == 136
    assert candidate(13, 50) == 91
    assert candidate(36, 21) == 926
    assert candidate(40, 17) == 1076
    assert candidate(37, 46) == 1011
    assert candidate(33, 7) == 651
    assert candidate(42, 46) == 1321
    assert candidate(46, 29) == 1529
    assert candidate(9, 43) == 45
    assert candidate(30, 31) == 690
    assert candidate(14, 47) == 105
    assert candidate(5, 3) == 19
    assert candidate(41, 23) == 1191
    assert candidate(17, 13) == 219
    assert candidate(9, 13) == 63
    assert candidate(29, 18) == 595
    assert candidate(21, 14) == 315
    assert candidate(4, 6) == 12
    assert candidate(38, 15) == 958
    assert candidate(14, 7) == 138
    assert candidate(18, 26) == 231
    assert candidate(11, 15) == 94
    assert candidate(7, 8) == 37
    assert candidate(11, 22) == 66
    assert candidate(36, 11) == 821
    assert candidate(18, 29) == 227
    assert candidate(26, 17) == 495
    assert candidate(37, 13) == 889
    assert candidate(46, 38) == 1567
    assert candidate(13, 7) == 121
    assert candidate(33, 34) == 817
    assert candidate(39, 12) == 945
    assert candidate(1, 45) == 1
    assert candidate(37, 36) == 1026
    assert candidate(16, 19) == 199
    assert candidate(22, 15) == 358
    assert candidate(34, 42) == 855
    assert candidate(50, 22) == 1665
    assert candidate(42, 44) == 1323
    assert candidate(40, 8) == 928
    assert candidate(7, 19) == 28
    assert candidate(44, 10) == 1146
    assert candidate(21, 6) == 267
    assert candidate(27, 26) == 546
    assert candidate(49, 4) == 1272
    assert candidate(35, 2) == 630
    assert candidate(32, 29) == 780
    assert candidate(20, 41) == 210
    assert candidate(30, 48) == 603
    assert candidate(12, 34) == 78
    assert candidate(50, 44) == 1863
    assert candidate(42, 26) == 1251
    assert candidate(3, 18) == 6
    assert candidate(11, 3) == 76
    assert candidate(38, 29) == 1077
    assert candidate(17, 24) == 208
    assert candidate(50, 31) == 1800
    assert candidate(32, 41) == 768
    assert candidate(12, 24) == 78
    assert candidate(35, 43) == 924
    assert candidate(9, 47) == 45
    assert candidate(32, 26) == 756
    assert candidate(6, 42) == 21
    assert candidate(11, 1) == 66
    assert candidate(11, 24) == 66
    assert candidate(39, 38) == 1140
    assert candidate(18, 8) == 213
    assert candidate(29, 5) == 489
    assert candidate(44, 6) == 1072
    assert candidate(29, 30) == 631
    assert candidate(13, 47) == 91
    assert candidate(46, 21) == 1441
    assert candidate(46, 6) == 1167
    assert candidate(27, 30) == 546
    assert candidate(5, 35) == 15
    assert candidate(12, 32) == 78
    assert candidate(13, 39) == 91
    assert candidate(10, 11) == 80
    assert candidate(46, 14) == 1315
    assert candidate(37, 18) == 927
    assert candidate(32, 8) == 612
    assert candidate(26, 14) == 465
    assert candidate(33, 41) == 821
    assert candidate(44, 39) == 1465
    assert candidate(3, 21) == 6
    assert candidate(9, 11) == 65
    assert candidate(16, 43) == 136
    assert candidate(7, 22) == 28
    assert candidate(21, 49) == 231
    assert candidate(23, 16) == 381
    assert candidate(33, 32) == 816
    assert candidate(22, 1) == 253
    assert candidate(5, 47) == 15
    assert candidate(38, 7) == 846
    assert candidate(38, 24) == 1027
    assert candidate(13, 36) == 91


def test_check():
    check(minimumPossibleSum)


### Metadata below ###
# question_id = 3026
# question_title = Find the Minimum Possible Sum of a Beautiful Array
# question_title_slug = find-the-minimum-possible-sum-of-a-beautiful-array
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 276
# question_dislikes = 37