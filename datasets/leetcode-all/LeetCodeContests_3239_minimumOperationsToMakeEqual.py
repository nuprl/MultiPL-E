def minimumOperationsToMakeEqual(x: int, y: int) -> int:
    """
    You are given two positive integers x and y.
    In one operation, you can do one of the four following operations:
    
    Divide x by 11 if x is a multiple of 11.
    Divide x by 5 if x is a multiple of 5.
    Decrement x by 1.
    Increment x by 1.
    
    Return the minimum number of operations required to make  x and y equal.
    
    Example 1:
    
    Input: x = 26, y = 1
    Output: 3
    Explanation: We can make 26 equal to 1 by applying the following operations: 
    1. Decrement x by 1
    2. Divide x by 5
    3. Divide x by 5
    It can be shown that 3 is the minimum number of operations required to make 26 equal to 1.
    
    Example 2:
    
    Input: x = 54, y = 2
    Output: 4
    Explanation: We can make 54 equal to 2 by applying the following operations: 
    1. Increment x by 1
    2. Divide x by 11 
    3. Divide x by 5
    4. Increment x by 1
    It can be shown that 4 is the minimum number of operations required to make 54 equal to 2.
    
    Example 3:
    
    Input: x = 25, y = 30
    Output: 5
    Explanation: We can make 25 equal to 30 by applying the following operations: 
    1. Increment x by 1
    2. Increment x by 1
    3. Increment x by 1
    4. Increment x by 1
    5. Increment x by 1
    It can be shown that 5 is the minimum number of operations required to make 25 equal to 30.
    
    
    Constraints:
    
    1 <= x, y <= 104
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(26, 1) == 3
    assert candidate(54, 2) == 4
    assert candidate(25, 30) == 5
    assert candidate(1, 1) == 0
    assert candidate(1, 2) == 1
    assert candidate(1, 3) == 2
    assert candidate(1, 4) == 3
    assert candidate(1, 5) == 4
    assert candidate(1, 6) == 5
    assert candidate(1, 7) == 6
    assert candidate(1, 8) == 7
    assert candidate(1, 9) == 8
    assert candidate(1, 10) == 9
    assert candidate(1, 11) == 10
    assert candidate(1, 12) == 11
    assert candidate(1, 13) == 12
    assert candidate(1, 14) == 13
    assert candidate(1, 15) == 14
    assert candidate(1, 16) == 15
    assert candidate(1, 17) == 16
    assert candidate(1, 18) == 17
    assert candidate(1, 19) == 18
    assert candidate(1, 20) == 19
    assert candidate(1, 21) == 20
    assert candidate(1, 22) == 21
    assert candidate(1, 23) == 22
    assert candidate(1, 24) == 23
    assert candidate(1, 25) == 24
    assert candidate(2, 1) == 1
    assert candidate(2, 2) == 0
    assert candidate(2, 3) == 1
    assert candidate(2, 4) == 2
    assert candidate(2, 5) == 3
    assert candidate(2, 6) == 4
    assert candidate(2, 7) == 5
    assert candidate(2, 8) == 6
    assert candidate(2, 9) == 7
    assert candidate(2, 10) == 8
    assert candidate(2, 11) == 9
    assert candidate(2, 12) == 10
    assert candidate(2, 13) == 11
    assert candidate(2, 14) == 12
    assert candidate(2, 15) == 13
    assert candidate(2, 16) == 14
    assert candidate(2, 17) == 15
    assert candidate(2, 18) == 16
    assert candidate(2, 19) == 17
    assert candidate(2, 20) == 18
    assert candidate(2, 21) == 19
    assert candidate(2, 22) == 20
    assert candidate(2, 23) == 21
    assert candidate(2, 24) == 22
    assert candidate(2, 25) == 23
    assert candidate(3, 1) == 2
    assert candidate(3, 2) == 1
    assert candidate(3, 3) == 0
    assert candidate(3, 4) == 1
    assert candidate(3, 5) == 2
    assert candidate(3, 6) == 3
    assert candidate(3, 7) == 4
    assert candidate(3, 8) == 5
    assert candidate(3, 9) == 6
    assert candidate(3, 10) == 7
    assert candidate(3, 11) == 8
    assert candidate(3, 12) == 9
    assert candidate(3, 13) == 10
    assert candidate(3, 14) == 11
    assert candidate(3, 15) == 12
    assert candidate(3, 16) == 13
    assert candidate(3, 17) == 14
    assert candidate(3, 18) == 15
    assert candidate(3, 19) == 16
    assert candidate(3, 20) == 17
    assert candidate(3, 21) == 18
    assert candidate(3, 22) == 19
    assert candidate(3, 23) == 20
    assert candidate(3, 24) == 21
    assert candidate(3, 25) == 22
    assert candidate(4, 1) == 2
    assert candidate(4, 2) == 2
    assert candidate(4, 3) == 1
    assert candidate(4, 4) == 0
    assert candidate(4, 5) == 1
    assert candidate(4, 6) == 2
    assert candidate(4, 7) == 3
    assert candidate(4, 8) == 4
    assert candidate(4, 9) == 5
    assert candidate(4, 10) == 6
    assert candidate(4, 11) == 7
    assert candidate(4, 12) == 8
    assert candidate(4, 13) == 9
    assert candidate(4, 14) == 10
    assert candidate(4, 15) == 11
    assert candidate(4, 16) == 12
    assert candidate(4, 17) == 13
    assert candidate(4, 18) == 14
    assert candidate(4, 19) == 15
    assert candidate(4, 20) == 16
    assert candidate(4, 21) == 17
    assert candidate(4, 22) == 18


def test_check():
    check(minimumOperationsToMakeEqual)


### Metadata below ###
# question_id = 3239
# question_title = Minimum Number of Operations to Make X and Y Equal
# question_title_slug = minimum-number-of-operations-to-make-x-and-y-equal
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 103
# question_dislikes = 19