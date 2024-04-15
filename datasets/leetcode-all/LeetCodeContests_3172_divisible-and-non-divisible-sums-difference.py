def differenceOfSums(n: int, m: int) -> int:
    """
    You are given positive integers n and m.
    
    Define two integers, num1 and num2, as follows:
    
     * num1: The sum of all integers in the range [1, n] that are not divisible by m.
     * num2: The sum of all integers in the range [1, n] that are divisible by m.
    
    Return the integer num1 - num2.
    
    Example 1:
    
    Input: n = 10, m = 3
    Output: 19
    Explanation: In the given example:
    - Integers in the range [1, 10] that are not divisible by 3 are [1,2,4,5,7,8,10], num1 is the sum of those integers = 37.
    - Integers in the range [1, 10] that are divisible by 3 are [3,6,9], num2 is the sum of those integers = 18.
    We return 37 - 18 = 19 as the answer.
    
    Example 2:
    
    Input: n = 5, m = 6
    Output: 15
    Explanation: In the given example:
    - Integers in the range [1, 5] that are not divisible by 6 are [1,2,3,4,5], num1 is the sum of those integers = 15.
    - Integers in the range [1, 5] that are divisible by 6 are [], num2 is the sum of those integers = 0.
    We return 15 - 0 = 15 as the answer.
    
    Example 3:
    
    Input: n = 5, m = 1
    Output: -15
    Explanation: In the given example:
    - Integers in the range [1, 5] that are not divisible by 1 are [], num1 is the sum of those integers = 0.
    - Integers in the range [1, 5] that are divisible by 1 are [1,2,3,4,5], num2 is the sum of those integers = 15.
    We return 0 - 15 = -15 as the answer.
    
    
    Constraints:
    
     * 1 <= n, m <= 1000
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10, 3) == 19
    assert candidate(5, 6) == 15
    assert candidate(5, 1) == -15
    assert candidate(15, 9) == 102
    assert candidate(8, 10) == 36
    assert candidate(23, 36) == 276
    assert candidate(1, 32) == 1
    assert candidate(36, 7) == 456
    assert candidate(3, 8) == 6
    assert candidate(4, 2) == -2
    assert candidate(9, 7) == 31
    assert candidate(20, 9) == 156
    assert candidate(3, 19) == 6
    assert candidate(6, 16) == 21
    assert candidate(6, 1) == -21
    assert candidate(5, 25) == 15
    assert candidate(9, 3) == 9
    assert candidate(8, 23) == 36
    assert candidate(17, 1) == -153
    assert candidate(18, 9) == 117
    assert candidate(22, 30) == 253
    assert candidate(1, 42) == 1
    assert candidate(33, 19) == 523
    assert candidate(7, 19) == 28
    assert candidate(12, 24) == 78
    assert candidate(26, 25) == 301
    assert candidate(9, 16) == 45
    assert candidate(1, 8) == 1
    assert candidate(29, 42) == 435
    assert candidate(2, 11) == 3
    assert candidate(36, 10) == 546
    assert candidate(45, 4) == 507
    assert candidate(3, 7) == 6
    assert candidate(6, 12) == 21
    assert candidate(3, 4) == 6
    assert candidate(8, 28) == 36
    assert candidate(18, 23) == 171
    assert candidate(11, 6) == 54
    assert candidate(35, 10) == 510
    assert candidate(29, 18) == 399
    assert candidate(1, 1) == -1
    assert candidate(12, 8) == 62
    assert candidate(7, 12) == 28
    assert candidate(17, 3) == 63
    assert candidate(16, 15) == 106
    assert candidate(18, 3) == 45
    assert candidate(4, 12) == 10
    assert candidate(3, 21) == 6
    assert candidate(15, 4) == 72
    assert candidate(9, 39) == 45
    assert candidate(19, 18) == 154
    assert candidate(2, 4) == 3
    assert candidate(41, 1) == -861
    assert candidate(3, 1) == -6
    assert candidate(16, 13) == 110
    assert candidate(32, 10) == 408
    assert candidate(41, 34) == 793
    assert candidate(33, 40) == 561
    assert candidate(36, 8) == 506
    assert candidate(8, 34) == 36
    assert candidate(40, 12) == 676
    assert candidate(28, 9) == 298
    assert candidate(20, 6) == 138
    assert candidate(13, 6) == 55
    assert candidate(2, 37) == 3
    assert candidate(14, 17) == 105
    assert candidate(35, 4) == 342
    assert candidate(2, 14) == 3
    assert candidate(5, 2) == 3
    assert candidate(7, 7) == 14
    assert candidate(12, 26) == 78
    assert candidate(14, 1) == -105
    assert candidate(2, 1) == -3
    assert candidate(20, 3) == 84
    assert candidate(8, 27) == 36
    assert candidate(1, 12) == 1
    assert candidate(13, 19) == 91
    assert candidate(7, 1) == -28
    assert candidate(31, 4) == 272
    assert candidate(11, 25) == 66
    assert candidate(5, 19) == 15
    assert candidate(33, 12) == 489
    assert candidate(4, 26) == 10
    assert candidate(1, 24) == 1
    assert candidate(13, 20) == 91
    assert candidate(6, 8) == 21
    assert candidate(8, 26) == 36
    assert candidate(4, 1) == -10
    assert candidate(1, 6) == 1
    assert candidate(2, 25) == 3
    assert candidate(4, 4) == 2
    assert candidate(8, 2) == -4
    assert candidate(15, 21) == 120
    assert candidate(1, 2) == 1
    assert candidate(12, 2) == -6
    assert candidate(40, 14) == 736
    assert candidate(14, 19) == 105
    assert candidate(18, 1) == -171
    assert candidate(1, 28) == 1
    assert candidate(31, 18) == 460


def test_check():
    check(differenceOfSums)


### Metadata below ###
# question_id = 3172
# question_title = Divisible and Non-divisible Sums Difference
# question_title_slug = divisible-and-non-divisible-sums-difference
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 115
# question_dislikes = 10