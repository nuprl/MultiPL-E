def minimumSum(n: int, k: int) -> int:
    """
    You are given two integers, n and k.
    
    An array of distinct positive integers is called a k-avoiding array if there does not exist any pair of distinct elements that sum to k.
    
    Return the minimum possible sum of a k-avoiding array of length n.
    
    Example 1:
    
    Input: n = 5, k = 4
    Output: 18
    Explanation: Consider the k-avoiding array [1,2,4,5,6], which has a sum of 18.
    It can be proven that there is no k-avoiding array with a sum less than 18.
    
    Example 2:
    
    Input: n = 2, k = 6
    Output: 3
    Explanation: We can construct the array [1,2], which has a sum of 3.
    It can be proven that there is no k-avoiding array with a sum less than 3.
    
    
    Constraints:
    
     * 1 <= n, k <= 50
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5, 4) == 18
    assert candidate(2, 6) == 3
    assert candidate(1, 1) == 1
    assert candidate(1, 2) == 1
    assert candidate(1, 3) == 1
    assert candidate(1, 4) == 1
    assert candidate(1, 5) == 1
    assert candidate(1, 6) == 1
    assert candidate(1, 7) == 1
    assert candidate(1, 8) == 1
    assert candidate(1, 9) == 1
    assert candidate(1, 10) == 1
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
    assert candidate(1, 22) == 1
    assert candidate(1, 23) == 1
    assert candidate(1, 24) == 1
    assert candidate(1, 25) == 1
    assert candidate(1, 26) == 1
    assert candidate(1, 27) == 1
    assert candidate(1, 28) == 1
    assert candidate(1, 29) == 1
    assert candidate(1, 30) == 1
    assert candidate(1, 31) == 1
    assert candidate(1, 32) == 1
    assert candidate(1, 33) == 1
    assert candidate(1, 34) == 1
    assert candidate(1, 35) == 1
    assert candidate(1, 36) == 1
    assert candidate(1, 37) == 1
    assert candidate(1, 38) == 1
    assert candidate(1, 39) == 1
    assert candidate(1, 40) == 1
    assert candidate(1, 41) == 1
    assert candidate(1, 42) == 1
    assert candidate(1, 43) == 1
    assert candidate(1, 44) == 1
    assert candidate(1, 45) == 1
    assert candidate(1, 46) == 1
    assert candidate(1, 47) == 1
    assert candidate(1, 48) == 1
    assert candidate(1, 49) == 1
    assert candidate(1, 50) == 1
    assert candidate(2, 1) == 3
    assert candidate(2, 2) == 3
    assert candidate(2, 3) == 4
    assert candidate(2, 4) == 3
    assert candidate(2, 5) == 3
    assert candidate(2, 7) == 3
    assert candidate(2, 8) == 3
    assert candidate(2, 9) == 3
    assert candidate(2, 10) == 3
    assert candidate(2, 11) == 3
    assert candidate(2, 12) == 3
    assert candidate(2, 13) == 3
    assert candidate(2, 14) == 3
    assert candidate(2, 15) == 3
    assert candidate(2, 16) == 3
    assert candidate(2, 17) == 3
    assert candidate(2, 18) == 3
    assert candidate(2, 19) == 3
    assert candidate(2, 20) == 3
    assert candidate(2, 21) == 3
    assert candidate(2, 22) == 3
    assert candidate(2, 23) == 3
    assert candidate(2, 24) == 3
    assert candidate(2, 25) == 3
    assert candidate(2, 26) == 3
    assert candidate(2, 27) == 3
    assert candidate(2, 28) == 3
    assert candidate(2, 29) == 3
    assert candidate(2, 30) == 3
    assert candidate(2, 31) == 3
    assert candidate(2, 32) == 3
    assert candidate(2, 33) == 3
    assert candidate(2, 34) == 3
    assert candidate(2, 35) == 3
    assert candidate(2, 36) == 3
    assert candidate(2, 37) == 3
    assert candidate(2, 38) == 3
    assert candidate(2, 39) == 3
    assert candidate(2, 40) == 3
    assert candidate(2, 41) == 3
    assert candidate(2, 42) == 3
    assert candidate(2, 43) == 3
    assert candidate(2, 44) == 3
    assert candidate(2, 45) == 3
    assert candidate(2, 46) == 3
    assert candidate(2, 47) == 3
    assert candidate(2, 48) == 3
    assert candidate(2, 49) == 3


def test_check():
    check(minimumSum)


### Metadata below ###
# question_id = 2811
# question_title = Determine the Minimum Sum of a k-avoiding Array
# question_title_slug = determine-the-minimum-sum-of-a-k-avoiding-array
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 305
# question_dislikes = 8