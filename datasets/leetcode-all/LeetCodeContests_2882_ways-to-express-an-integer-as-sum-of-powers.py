def numberOfWays(n: int, x: int) -> int:
    """
    Given two positive integers n and x.
    
    Return the number of ways n can be expressed as the sum of the xth power of unique positive integers, in other words, the number of sets of unique integers [n1, n2, ..., nk] where n = n1x + n2x + ... + nkx.
    
    Since the result can be very large, return it modulo 109 + 7.
    
    For example, if n = 160 and x = 3, one way to express n is n = 23 + 33 + 53.
    
    Example 1:
    
    Input: n = 10, x = 2
    Output: 1
    Explanation: We can express n as the following: n = 32 + 12 = 10.
    It can be shown that it is the only way to express 10 as the sum of the 2nd power of unique integers.
    
    Example 2:
    
    Input: n = 4, x = 1
    Output: 2
    Explanation: We can express n in the following ways:
    - n = 41 = 4.
    - n = 31 + 11 = 4.
    
    
    Constraints:
    
     * 1 <= n <= 300
     * 1 <= x <= 5
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10, 2) == 1
    assert candidate(4, 1) == 2
    assert candidate(1, 1) == 1
    assert candidate(1, 2) == 1
    assert candidate(1, 3) == 1
    assert candidate(1, 4) == 1
    assert candidate(1, 5) == 1
    assert candidate(2, 1) == 1
    assert candidate(2, 2) == 0
    assert candidate(2, 3) == 0
    assert candidate(2, 4) == 0
    assert candidate(2, 5) == 0
    assert candidate(3, 1) == 2
    assert candidate(3, 2) == 0
    assert candidate(3, 3) == 0
    assert candidate(3, 4) == 0
    assert candidate(3, 5) == 0
    assert candidate(4, 2) == 1
    assert candidate(4, 3) == 0
    assert candidate(4, 4) == 0
    assert candidate(4, 5) == 0
    assert candidate(5, 1) == 3
    assert candidate(5, 2) == 1
    assert candidate(5, 3) == 0
    assert candidate(5, 4) == 0
    assert candidate(5, 5) == 0
    assert candidate(6, 1) == 4
    assert candidate(6, 2) == 0
    assert candidate(6, 3) == 0
    assert candidate(6, 4) == 0
    assert candidate(6, 5) == 0
    assert candidate(7, 1) == 5
    assert candidate(7, 2) == 0
    assert candidate(7, 3) == 0
    assert candidate(7, 4) == 0
    assert candidate(7, 5) == 0
    assert candidate(8, 1) == 6
    assert candidate(8, 2) == 0
    assert candidate(8, 3) == 1
    assert candidate(8, 4) == 0
    assert candidate(8, 5) == 0
    assert candidate(9, 1) == 8
    assert candidate(9, 2) == 1
    assert candidate(9, 3) == 1
    assert candidate(9, 4) == 0
    assert candidate(9, 5) == 0
    assert candidate(10, 1) == 10
    assert candidate(10, 3) == 0
    assert candidate(10, 4) == 0
    assert candidate(10, 5) == 0
    assert candidate(11, 1) == 12
    assert candidate(11, 2) == 0
    assert candidate(11, 3) == 0
    assert candidate(11, 4) == 0
    assert candidate(11, 5) == 0
    assert candidate(12, 1) == 15
    assert candidate(12, 2) == 0
    assert candidate(12, 3) == 0
    assert candidate(12, 4) == 0
    assert candidate(12, 5) == 0
    assert candidate(13, 1) == 18
    assert candidate(13, 2) == 1
    assert candidate(13, 3) == 0
    assert candidate(13, 4) == 0
    assert candidate(13, 5) == 0
    assert candidate(14, 1) == 22
    assert candidate(14, 2) == 1
    assert candidate(14, 3) == 0
    assert candidate(14, 4) == 0
    assert candidate(14, 5) == 0
    assert candidate(15, 1) == 27
    assert candidate(15, 2) == 0
    assert candidate(15, 3) == 0
    assert candidate(15, 4) == 0
    assert candidate(15, 5) == 0
    assert candidate(16, 1) == 32
    assert candidate(16, 2) == 1
    assert candidate(16, 3) == 0
    assert candidate(16, 4) == 1
    assert candidate(16, 5) == 0
    assert candidate(17, 1) == 38
    assert candidate(17, 2) == 1
    assert candidate(17, 3) == 0
    assert candidate(17, 4) == 1
    assert candidate(17, 5) == 0
    assert candidate(18, 1) == 46
    assert candidate(18, 2) == 0
    assert candidate(18, 3) == 0
    assert candidate(18, 4) == 0
    assert candidate(18, 5) == 0
    assert candidate(19, 1) == 54
    assert candidate(19, 2) == 0
    assert candidate(19, 3) == 0
    assert candidate(19, 4) == 0
    assert candidate(19, 5) == 0
    assert candidate(20, 1) == 64
    assert candidate(20, 2) == 1
    assert candidate(20, 3) == 0
    assert candidate(20, 4) == 0
    assert candidate(20, 5) == 0


def test_check():
    check(numberOfWays)


### Metadata below ###
# question_id = 2882
# question_title = Ways to Express an Integer as Sum of Powers
# question_title_slug = ways-to-express-an-integer-as-sum-of-powers
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 346
# question_dislikes = 11