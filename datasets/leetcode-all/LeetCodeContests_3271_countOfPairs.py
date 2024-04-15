from typing import List

def countOfPairs(n: int, x: int, y: int) -> List[int]:
    """
    You are given three positive integers n, x, and y.
    In a city, there exist houses numbered 1 to n connected by n streets. There is a street connecting the house numbered i with the house numbered i + 1 for all 1 <= i <= n - 1 . An additional street connects the house numbered x with the house numbered y.
    For each k, such that 1 <= k <= n, you need to find the number of pairs of houses (house1, house2) such that the minimum number of streets that need to be traveled to reach house2 from house1 is k.
    Return a 1-indexed array result of length n where result[k] represents the total number of pairs of houses such that the minimum streets required to reach one house from the other is k.
    Note that x and y can be equal.
    
    Example 1:
    
    
    Input: n = 3, x = 1, y = 3
    Output: [6,0,0]
    Explanation: Let's look at each pair of houses:
    - For the pair (1, 2), we can go from house 1 to house 2 directly.
    - For the pair (2, 1), we can go from house 2 to house 1 directly.
    - For the pair (1, 3), we can go from house 1 to house 3 directly.
    - For the pair (3, 1), we can go from house 3 to house 1 directly.
    - For the pair (2, 3), we can go from house 2 to house 3 directly.
    - For the pair (3, 2), we can go from house 3 to house 2 directly.
    
    Example 2:
    
    
    Input: n = 5, x = 2, y = 4
    Output: [10,8,2,0,0]
    Explanation: For each distance k the pairs are:
    - For k == 1, the pairs are (1, 2), (2, 1), (2, 3), (3, 2), (2, 4), (4, 2), (3, 4), (4, 3), (4, 5), and (5, 4).
    - For k == 2, the pairs are (1, 3), (3, 1), (1, 4), (4, 1), (2, 5), (5, 2), (3, 5), and (5, 3).
    - For k == 3, the pairs are (1, 5), and (5, 1).
    - For k == 4 and k == 5, there are no pairs.
    
    Example 3:
    
    
    Input: n = 4, x = 1, y = 1
    Output: [6,4,2,0]
    Explanation: For each distance k the pairs are:
    - For k == 1, the pairs are (1, 2), (2, 1), (2, 3), (3, 2), (3, 4), and (4, 3).
    - For k == 2, the pairs are (1, 3), (3, 1), (2, 4), and (4, 2).
    - For k == 3, the pairs are (1, 4), and (4, 1).
    - For k == 4, there are no pairs.
    
    
    Constraints:
    
    2 <= n <= 100
    1 <= x, y <= n
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(3, 1, 3) == [6,0,0]
    assert candidate(5, 2, 4) == [10,8,2,0,0]
    assert candidate(4, 1, 1) == [6,4,2,0]
    assert candidate(2, 1, 1) == [2,0]
    assert candidate(2, 1, 2) == [2,0]
    assert candidate(2, 2, 1) == [2,0]
    assert candidate(2, 2, 2) == [2,0]
    assert candidate(3, 1, 1) == [4,2,0]
    assert candidate(3, 1, 2) == [4,2,0]
    assert candidate(3, 2, 1) == [4,2,0]
    assert candidate(3, 2, 2) == [4,2,0]
    assert candidate(3, 2, 3) == [4,2,0]
    assert candidate(3, 3, 1) == [6,0,0]
    assert candidate(3, 3, 2) == [4,2,0]
    assert candidate(3, 3, 3) == [4,2,0]
    assert candidate(4, 1, 2) == [6,4,2,0]
    assert candidate(4, 1, 3) == [8,4,0,0]
    assert candidate(4, 1, 4) == [8,4,0,0]
    assert candidate(4, 2, 1) == [6,4,2,0]
    assert candidate(4, 2, 2) == [6,4,2,0]
    assert candidate(4, 2, 3) == [6,4,2,0]
    assert candidate(4, 2, 4) == [8,4,0,0]
    assert candidate(4, 3, 1) == [8,4,0,0]
    assert candidate(4, 3, 2) == [6,4,2,0]
    assert candidate(4, 3, 3) == [6,4,2,0]
    assert candidate(4, 3, 4) == [6,4,2,0]
    assert candidate(4, 4, 1) == [8,4,0,0]
    assert candidate(4, 4, 2) == [8,4,0,0]
    assert candidate(4, 4, 3) == [6,4,2,0]
    assert candidate(4, 4, 4) == [6,4,2,0]
    assert candidate(5, 1, 1) == [8,6,4,2,0]
    assert candidate(5, 1, 2) == [8,6,4,2,0]
    assert candidate(5, 1, 3) == [10,6,4,0,0]
    assert candidate(5, 1, 4) == [10,8,2,0,0]
    assert candidate(5, 1, 5) == [10,10,0,0,0]
    assert candidate(5, 2, 1) == [8,6,4,2,0]
    assert candidate(5, 2, 2) == [8,6,4,2,0]
    assert candidate(5, 2, 3) == [8,6,4,2,0]
    assert candidate(5, 2, 5) == [10,8,2,0,0]
    assert candidate(5, 3, 1) == [10,6,4,0,0]
    assert candidate(5, 3, 2) == [8,6,4,2,0]
    assert candidate(5, 3, 3) == [8,6,4,2,0]
    assert candidate(5, 3, 4) == [8,6,4,2,0]
    assert candidate(5, 3, 5) == [10,6,4,0,0]
    assert candidate(5, 4, 1) == [10,8,2,0,0]
    assert candidate(5, 4, 2) == [10,8,2,0,0]
    assert candidate(5, 4, 3) == [8,6,4,2,0]
    assert candidate(5, 4, 4) == [8,6,4,2,0]
    assert candidate(5, 4, 5) == [8,6,4,2,0]
    assert candidate(5, 5, 1) == [10,10,0,0,0]
    assert candidate(5, 5, 2) == [10,8,2,0,0]
    assert candidate(5, 5, 3) == [10,6,4,0,0]
    assert candidate(5, 5, 4) == [8,6,4,2,0]
    assert candidate(5, 5, 5) == [8,6,4,2,0]
    assert candidate(6, 1, 1) == [10,8,6,4,2,0]
    assert candidate(6, 1, 2) == [10,8,6,4,2,0]
    assert candidate(6, 1, 3) == [12,8,6,4,0,0]
    assert candidate(6, 1, 4) == [12,10,6,2,0,0]
    assert candidate(6, 1, 5) == [12,14,4,0,0,0]
    assert candidate(6, 1, 6) == [12,12,6,0,0,0]
    assert candidate(6, 2, 1) == [10,8,6,4,2,0]
    assert candidate(6, 2, 2) == [10,8,6,4,2,0]
    assert candidate(6, 2, 5) == [12,12,6,0,0,0]
    assert candidate(6, 2, 6) == [12,14,4,0,0,0]
    assert candidate(6, 3, 1) == [12,8,6,4,0,0]
    assert candidate(6, 3, 2) == [10,8,6,4,2,0]
    assert candidate(6, 3, 3) == [10,8,6,4,2,0]
    assert candidate(6, 3, 4) == [10,8,6,4,2,0]
    assert candidate(6, 3, 5) == [12,10,6,2,0,0]
    assert candidate(6, 3, 6) == [12,10,6,2,0,0]
    assert candidate(6, 4, 1) == [12,10,6,2,0,0]
    assert candidate(6, 4, 2) == [12,10,6,2,0,0]
    assert candidate(6, 4, 3) == [10,8,6,4,2,0]
    assert candidate(6, 4, 4) == [10,8,6,4,2,0]
    assert candidate(6, 4, 6) == [12,8,6,4,0,0]
    assert candidate(6, 5, 1) == [12,14,4,0,0,0]
    assert candidate(6, 5, 2) == [12,12,6,0,0,0]
    assert candidate(6, 5, 3) == [12,10,6,2,0,0]
    assert candidate(6, 5, 4) == [10,8,6,4,2,0]
    assert candidate(6, 5, 5) == [10,8,6,4,2,0]
    assert candidate(6, 5, 6) == [10,8,6,4,2,0]
    assert candidate(6, 6, 1) == [12,12,6,0,0,0]
    assert candidate(6, 6, 2) == [12,14,4,0,0,0]
    assert candidate(6, 6, 3) == [12,10,6,2,0,0]
    assert candidate(6, 6, 4) == [12,8,6,4,0,0]
    assert candidate(6, 6, 5) == [10,8,6,4,2,0]
    assert candidate(6, 6, 6) == [10,8,6,4,2,0]
    assert candidate(7, 1, 2) == [12,10,8,6,4,2,0]
    assert candidate(7, 1, 3) == [14,10,8,6,4,0,0]
    assert candidate(7, 1, 4) == [14,12,8,6,2,0,0]
    assert candidate(7, 1, 5) == [14,16,8,4,0,0,0]
    assert candidate(7, 1, 6) == [14,16,10,2,0,0,0]
    assert candidate(7, 1, 7) == [14,14,14,0,0,0,0]
    assert candidate(7, 2, 1) == [12,10,8,6,4,2,0]
    assert candidate(7, 2, 2) == [12,10,8,6,4,2,0]
    assert candidate(7, 2, 3) == [12,10,8,6,4,2,0]
    assert candidate(7, 2, 7) == [14,16,10,2,0,0,0]
    assert candidate(7, 3, 1) == [14,10,8,6,4,0,0]
    assert candidate(7, 3, 2) == [12,10,8,6,4,2,0]
    assert candidate(7, 3, 3) == [12,10,8,6,4,2,0]


def test_check():
    check(countOfPairs)


### Metadata below ###
# question_id = 3271
# question_title = Count the Number of Houses at a Certain Distance I
# question_title_slug = count-the-number-of-houses-at-a-certain-distance-i
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 62
# question_dislikes = 7