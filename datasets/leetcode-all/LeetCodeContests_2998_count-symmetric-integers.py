def countSymmetricIntegers(low: int, high: int) -> int:
    """
    You are given two positive integers low and high.
    
    An integer x consisting of 2 * n digits is symmetric if the sum of the first n digits of x is equal to the sum of the last n digits of x. Numbers with an odd number of digits are never symmetric.
    
    Return the number of symmetric integers in the range [low, high].
    
    Example 1:
    
    Input: low = 1, high = 100
    Output: 9
    Explanation: There are 9 symmetric integers between 1 and 100: 11, 22, 33, 44, 55, 66, 77, 88, and 99.
    
    Example 2:
    
    Input: low = 1200, high = 1230
    Output: 4
    Explanation: There are 4 symmetric integers between 1200 and 1230: 1203, 1212, 1221, and 1230.
    
    
    Constraints:
    
     * 1 <= low <= high <= 104
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1, 100) == 9
    assert candidate(1200, 1230) == 4
    assert candidate(1, 1) == 0
    assert candidate(1, 2) == 0
    assert candidate(1, 3) == 0
    assert candidate(1, 4) == 0
    assert candidate(1, 5) == 0
    assert candidate(1, 6) == 0
    assert candidate(1, 7) == 0
    assert candidate(1, 8) == 0
    assert candidate(1, 9) == 0
    assert candidate(1, 10) == 0
    assert candidate(1, 11) == 1
    assert candidate(1, 12) == 1
    assert candidate(1, 13) == 1
    assert candidate(1, 14) == 1
    assert candidate(1, 15) == 1
    assert candidate(1, 16) == 1
    assert candidate(1, 17) == 1
    assert candidate(1, 18) == 1
    assert candidate(1, 19) == 1
    assert candidate(1, 20) == 1
    assert candidate(1, 21) == 1
    assert candidate(1, 22) == 2
    assert candidate(1, 23) == 2
    assert candidate(1, 24) == 2
    assert candidate(1, 25) == 2
    assert candidate(1, 26) == 2
    assert candidate(1, 27) == 2
    assert candidate(1, 28) == 2
    assert candidate(1, 29) == 2
    assert candidate(1, 30) == 2
    assert candidate(1, 31) == 2
    assert candidate(1, 32) == 2
    assert candidate(1, 33) == 3
    assert candidate(1, 34) == 3
    assert candidate(1, 35) == 3
    assert candidate(1, 36) == 3
    assert candidate(1, 37) == 3
    assert candidate(1, 38) == 3
    assert candidate(1, 39) == 3
    assert candidate(1, 40) == 3
    assert candidate(1, 41) == 3
    assert candidate(1, 42) == 3
    assert candidate(1, 43) == 3
    assert candidate(1, 44) == 4
    assert candidate(1, 45) == 4
    assert candidate(1, 46) == 4
    assert candidate(1, 47) == 4
    assert candidate(1, 48) == 4
    assert candidate(100, 1782) == 44
    assert candidate(1, 49) == 4
    assert candidate(1, 50) == 4
    assert candidate(1, 51) == 4
    assert candidate(1, 52) == 4
    assert candidate(1, 53) == 4
    assert candidate(1, 54) == 4
    assert candidate(1, 55) == 5
    assert candidate(1, 56) == 5
    assert candidate(1, 57) == 5
    assert candidate(1, 58) == 5
    assert candidate(1, 59) == 5
    assert candidate(1, 60) == 5
    assert candidate(2, 2) == 0
    assert candidate(2, 3) == 0
    assert candidate(2, 4) == 0
    assert candidate(2, 5) == 0
    assert candidate(2, 6) == 0
    assert candidate(2, 7) == 0
    assert candidate(2, 8) == 0
    assert candidate(2, 9) == 0
    assert candidate(2, 10) == 0
    assert candidate(2, 11) == 1
    assert candidate(2, 12) == 1
    assert candidate(2, 13) == 1
    assert candidate(2, 14) == 1
    assert candidate(2, 15) == 1
    assert candidate(2, 16) == 1
    assert candidate(2, 17) == 1
    assert candidate(2, 18) == 1
    assert candidate(2, 19) == 1
    assert candidate(2, 20) == 1
    assert candidate(2, 21) == 1
    assert candidate(2, 22) == 2
    assert candidate(2, 23) == 2
    assert candidate(2, 24) == 2
    assert candidate(2, 25) == 2
    assert candidate(2, 26) == 2
    assert candidate(2, 27) == 2
    assert candidate(2, 28) == 2
    assert candidate(2, 29) == 2
    assert candidate(2, 30) == 2
    assert candidate(2, 31) == 2
    assert candidate(2, 32) == 2
    assert candidate(2, 33) == 3
    assert candidate(2, 34) == 3
    assert candidate(2, 35) == 3
    assert candidate(2, 36) == 3
    assert candidate(2, 37) == 3
    assert candidate(2, 38) == 3


def test_check():
    check(countSymmetricIntegers)


### Metadata below ###
# question_id = 2998
# question_title =   Count Symmetric Integers
# question_title_slug = count-symmetric-integers
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 210
# question_dislikes = 9