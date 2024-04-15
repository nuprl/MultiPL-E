def distributeCandies(n: int, limit: int) -> int:
    """
    You are given two positive integers n and limit.
    
    Return the total number of ways to distribute n candies among 3 children such that no child gets more than limit candies.
    
    Example 1:
    
    Input: n = 5, limit = 2
    Output: 3
    Explanation: There are 3 ways to distribute 5 candies such that no child gets more than 2 candies: (1, 2, 2), (2, 1, 2) and (2, 2, 1).
    
    Example 2:
    
    Input: n = 3, limit = 3
    Output: 10
    Explanation: There are 10 ways to distribute 3 candies such that no child gets more than 3 candies: (0, 0, 3), (0, 1, 2), (0, 2, 1), (0, 3, 0), (1, 0, 2), (1, 1, 1), (1, 2, 0), (2, 0, 1), (2, 1, 0) and (3, 0, 0).
    
    
    Constraints:
    
     * 1 <= n <= 50
     * 1 <= limit <= 50
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5, 2) == 3
    assert candidate(3, 3) == 10
    assert candidate(1, 1) == 3
    assert candidate(1, 2) == 3
    assert candidate(1, 3) == 3
    assert candidate(1, 4) == 3
    assert candidate(1, 5) == 3
    assert candidate(1, 6) == 3
    assert candidate(1, 7) == 3
    assert candidate(1, 8) == 3
    assert candidate(1, 9) == 3
    assert candidate(1, 10) == 3
    assert candidate(1, 11) == 3
    assert candidate(1, 12) == 3
    assert candidate(1, 13) == 3
    assert candidate(1, 14) == 3
    assert candidate(1, 15) == 3
    assert candidate(1, 16) == 3
    assert candidate(1, 17) == 3
    assert candidate(1, 18) == 3
    assert candidate(1, 19) == 3
    assert candidate(1, 20) == 3
    assert candidate(1, 21) == 3
    assert candidate(1, 22) == 3
    assert candidate(1, 23) == 3
    assert candidate(1, 24) == 3
    assert candidate(1, 25) == 3
    assert candidate(2, 1) == 3
    assert candidate(2, 2) == 6
    assert candidate(2, 3) == 6
    assert candidate(2, 4) == 6
    assert candidate(2, 5) == 6
    assert candidate(2, 6) == 6
    assert candidate(2, 7) == 6
    assert candidate(2, 8) == 6
    assert candidate(2, 9) == 6
    assert candidate(2, 10) == 6
    assert candidate(2, 11) == 6
    assert candidate(2, 12) == 6
    assert candidate(2, 13) == 6
    assert candidate(2, 14) == 6
    assert candidate(2, 15) == 6
    assert candidate(2, 16) == 6
    assert candidate(2, 17) == 6
    assert candidate(2, 18) == 6
    assert candidate(2, 19) == 6
    assert candidate(2, 20) == 6
    assert candidate(2, 21) == 6
    assert candidate(2, 22) == 6
    assert candidate(2, 23) == 6
    assert candidate(2, 24) == 6
    assert candidate(2, 25) == 6
    assert candidate(3, 1) == 1
    assert candidate(3, 2) == 7
    assert candidate(3, 4) == 10
    assert candidate(3, 5) == 10
    assert candidate(3, 6) == 10
    assert candidate(3, 7) == 10
    assert candidate(3, 8) == 10
    assert candidate(3, 9) == 10
    assert candidate(3, 10) == 10
    assert candidate(3, 11) == 10
    assert candidate(3, 12) == 10
    assert candidate(3, 13) == 10
    assert candidate(3, 14) == 10
    assert candidate(3, 15) == 10
    assert candidate(3, 16) == 10
    assert candidate(3, 17) == 10
    assert candidate(3, 18) == 10
    assert candidate(3, 19) == 10
    assert candidate(3, 20) == 10
    assert candidate(3, 21) == 10
    assert candidate(3, 22) == 10
    assert candidate(3, 23) == 10
    assert candidate(3, 24) == 10
    assert candidate(3, 25) == 10
    assert candidate(4, 1) == 0
    assert candidate(4, 2) == 6
    assert candidate(4, 3) == 12
    assert candidate(4, 4) == 15
    assert candidate(4, 5) == 15
    assert candidate(4, 6) == 15
    assert candidate(4, 7) == 15
    assert candidate(4, 8) == 15
    assert candidate(4, 9) == 15
    assert candidate(4, 10) == 15
    assert candidate(4, 11) == 15
    assert candidate(4, 12) == 15
    assert candidate(4, 13) == 15
    assert candidate(4, 14) == 15
    assert candidate(4, 15) == 15
    assert candidate(4, 16) == 15
    assert candidate(4, 17) == 15
    assert candidate(4, 18) == 15
    assert candidate(4, 19) == 15
    assert candidate(4, 20) == 15
    assert candidate(4, 21) == 15
    assert candidate(4, 22) == 15
    assert candidate(4, 23) == 15
    assert candidate(4, 24) == 15


def test_check():
    check(distributeCandies)


### Metadata below ###
# question_id = 3199
# question_title = Distribute Candies Among Children I
# question_title_slug = distribute-candies-among-children-i
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 50
# question_dislikes = 25