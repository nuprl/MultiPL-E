def numberOfBeautifulIntegers(low: int, high: int, k: int) -> int:
    """
    You are given positive integers low, high, and k.
    
    A number is beautiful if it meets both of the following conditions:
    
     * The count of even digits in the number is equal to the count of odd digits.
     * The number is divisible by k.
    
    Return the number of beautiful integers in the range [low, high].
    
    Example 1:
    
    Input: low = 10, high = 20, k = 3
    Output: 2
    Explanation: There are 2 beautiful integers in the given range: [12,18].
    - 12 is beautiful because it contains 1 odd digit and 1 even digit, and is divisible by k = 3.
    - 18 is beautiful because it contains 1 odd digit and 1 even digit, and is divisible by k = 3.
    Additionally we can see that:
    - 16 is not beautiful because it is not divisible by k = 3.
    - 15 is not beautiful because it does not contain equal counts even and odd digits.
    It can be shown that there are only 2 beautiful integers in the given range.
    
    Example 2:
    
    Input: low = 1, high = 10, k = 1
    Output: 1
    Explanation: There is 1 beautiful integer in the given range: [10].
    - 10 is beautiful because it contains 1 odd digit and 1 even digit, and is divisible by k = 1.
    It can be shown that there is only 1 beautiful integer in the given range.
    
    Example 3:
    
    Input: low = 5, high = 5, k = 2
    Output: 0
    Explanation: There are 0 beautiful integers in the given range.
    - 5 is not beautiful because it is not divisible by k = 2 and it does not contain equal even and odd digits.
    
    
    Constraints:
    
     * 0 < low <= high <= 109
     * 0 < k <= 20
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10, 20, 3) == 2
    assert candidate(1, 10, 1) == 1
    assert candidate(5, 5, 2) == 0
    assert candidate(3, 31, 16) == 1
    assert candidate(25, 31, 11) == 0
    assert candidate(9, 25, 4) == 2
    assert candidate(58, 72, 16) == 0
    assert candidate(5, 79, 12) == 3
    assert candidate(26, 74, 7) == 4
    assert candidate(36, 65, 7) == 3
    assert candidate(12, 84, 8) == 4
    assert candidate(13, 91, 13) == 3
    assert candidate(8, 18, 4) == 2
    assert candidate(22, 59, 6) == 3
    assert candidate(15, 27, 9) == 2
    assert candidate(4, 9, 19) == 0
    assert candidate(14, 81, 17) == 1
    assert candidate(12, 33, 18) == 1
    assert candidate(10, 17, 8) == 1
    assert candidate(42, 58, 3) == 2
    assert candidate(22, 42, 4) == 2
    assert candidate(5, 8, 5) == 0
    assert candidate(12, 75, 13) == 2
    assert candidate(2, 28, 1) == 9
    assert candidate(29, 35, 17) == 1
    assert candidate(13, 21, 9) == 1
    assert candidate(1, 13, 15) == 0
    assert candidate(12, 21, 16) == 1
    assert candidate(47, 72, 13) == 2
    assert candidate(1, 35, 12) == 1
    assert candidate(38, 52, 4) == 1
    assert candidate(10, 74, 3) == 11
    assert candidate(60, 92, 11) == 0
    assert candidate(3, 25, 15) == 0
    assert candidate(63, 65, 20) == 0
    assert candidate(22, 77, 7) == 4
    assert candidate(1, 1, 4) == 0
    assert candidate(28, 73, 20) == 0
    assert candidate(21, 32, 6) == 1
    assert candidate(43, 43, 11) == 0
    assert candidate(31, 68, 16) == 1
    assert candidate(1, 8, 4) == 0
    assert candidate(47, 100, 18) == 3
    assert candidate(45, 84, 19) == 1
    assert candidate(31, 80, 11) == 0
    assert candidate(14, 14, 5) == 0
    assert candidate(21, 88, 10) == 3
    assert candidate(11, 42, 3) == 6
    assert candidate(19, 53, 16) == 1
    assert candidate(57, 98, 6) == 4
    assert candidate(57, 69, 9) == 1
    assert candidate(17, 64, 1) == 23
    assert candidate(29, 40, 15) == 1
    assert candidate(36, 60, 3) == 3
    assert candidate(16, 23, 13) == 0
    assert candidate(36, 99, 3) == 11
    assert candidate(23, 83, 4) == 6
    assert candidate(4, 5, 9) == 0
    assert candidate(15, 21, 2) == 2
    assert candidate(51, 76, 7) == 3
    assert candidate(24, 34, 8) == 1
    assert candidate(24, 99, 1) == 38
    assert candidate(37, 63, 10) == 1
    assert candidate(19, 23, 6) == 0
    assert candidate(35, 70, 17) == 0
    assert candidate(3, 18, 19) == 0
    assert candidate(30, 64, 12) == 1
    assert candidate(3, 12, 9) == 0
    assert candidate(14, 21, 16) == 1
    assert candidate(19, 21, 12) == 0
    assert candidate(54, 78, 16) == 0
    assert candidate(24, 36, 20) == 0
    assert candidate(54, 58, 13) == 0
    assert candidate(74, 88, 12) == 0
    assert candidate(45, 58, 14) == 1
    assert candidate(51, 99, 8) == 3
    assert candidate(8, 26, 13) == 0
    assert candidate(12, 92, 3) == 15
    assert candidate(18, 91, 11) == 0
    assert candidate(14, 53, 15) == 2
    assert candidate(4, 10, 11) == 0
    assert candidate(7, 24, 5) == 1
    assert candidate(1, 25, 8) == 1
    assert candidate(7, 20, 15) == 0
    assert candidate(51, 92, 1) == 21
    assert candidate(73, 73, 3) == 0
    assert candidate(50, 63, 19) == 0
    assert candidate(30, 51, 19) == 1
    assert candidate(2, 65, 7) == 5
    assert candidate(49, 87, 20) == 0
    assert candidate(3, 6, 1) == 0
    assert candidate(16, 17, 6) == 0
    assert candidate(17, 32, 16) == 1
    assert candidate(13, 14, 6) == 0
    assert candidate(25, 42, 11) == 0
    assert candidate(18, 46, 5) == 3
    assert candidate(1, 65, 6) == 5
    assert candidate(6, 43, 15) == 1
    assert candidate(5, 9, 12) == 0
    assert candidate(1, 75, 9) == 7


def test_check():
    check(numberOfBeautifulIntegers)


### Metadata below ###
# question_id = 3017
# question_title = Number of Beautiful Integers in the Range
# question_title_slug = number-of-beautiful-integers-in-the-range
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 313
# question_dislikes = 24