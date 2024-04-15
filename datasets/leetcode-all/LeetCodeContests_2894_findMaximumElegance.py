from typing import List

def findMaximumElegance(items: List[List[int]], k: int) -> int:
    """
    You are given a 0-indexed 2D integer array items of length n and an integer k.
    
    items[i] = [profiti, categoryi], where profiti and categoryi denote the profit and category of the ith item respectively.
    
    Let's define the elegance of a subsequence of items as total_profit + distinct_categories2, where total_profit is the sum of all profits in the subsequence, and distinct_categories is the number of distinct categories from all the categories in the selected subsequence.
    
    Your task is to find the maximum elegance from all subsequences of size k in items.
    
    Return an integer denoting the maximum elegance of a subsequence of items with size exactly k.
    
    Note: A subsequence of an array is a new array generated from the original array by deleting some elements (possibly none) without changing the remaining elements' relative order.
    
    Example 1:
    
    Input: items = [[3,2],[5,1],[10,1]], k = 2
    Output: 17
    Explanation: In this example, we have to select a subsequence of size 2.
    We can select items[0] = [3,2] and items[2] = [10,1].
    The total profit in this subsequence is 3 + 10 = 13, and the subsequence contains 2 distinct categories [2,1].
    Hence, the elegance is 13 + 22 = 17, and we can show that it is the maximum achievable elegance.
    
    Example 2:
    
    Input: items = [[3,1],[3,1],[2,2],[5,3]], k = 3
    Output: 19
    Explanation: In this example, we have to select a subsequence of size 3.
    We can select items[0] = [3,1], items[2] = [2,2], and items[3] = [5,3].
    The total profit in this subsequence is 3 + 2 + 5 = 10, and the subsequence contains 3 distinct categories [1,2,3].
    Hence, the elegance is 10 + 32 = 19, and we can show that it is the maximum achievable elegance.
    
    Example 3:
    
    Input: items = [[1,1],[2,1],[3,1]], k = 3
    Output: 7
    Explanation: In this example, we have to select a subsequence of size 3.
    We should select all the items.
    The total profit will be 1 + 2 + 3 = 6, and the subsequence contains 1 distinct category [1].
    Hence, the maximum elegance is 6 + 12 = 7.
    
    Constraints:
    
     * 1 <= items.length == n <= 105
     * items[i].length == 2
     * items[i][0] == profiti
     * items[i][1] == categoryi
     * 1 <= profiti <= 109
     * 1 <= categoryi <= n
     * 1 <= k <= n
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[3, 2], [5, 1], [10, 1]], 2) == 17
    assert candidate([[3, 1], [3, 1], [2, 2], [5, 3]], 3) == 19
    assert candidate([[1, 1], [2, 1], [3, 1]], 3) == 7
    assert candidate([[1, 1], [1, 2]], 2) == 6
    assert candidate([[1, 1], [4, 1]], 1) == 5
    assert candidate([[1, 1], [4, 1]], 2) == 6
    assert candidate([[1, 1], [6, 1]], 1) == 7
    assert candidate([[1, 1], [6, 1]], 2) == 8
    assert candidate([[1, 1], [8, 2]], 2) == 13
    assert candidate([[1, 2], [6, 2]], 1) == 7
    assert candidate([[1, 2], [10, 1]], 1) == 11
    assert candidate([[2, 1], [6, 1]], 2) == 9
    assert candidate([[2, 1], [7, 1]], 2) == 10
    assert candidate([[2, 1], [9, 2]], 1) == 10
    assert candidate([[2, 2], [2, 2]], 1) == 3
    assert candidate([[2, 2], [2, 2]], 2) == 5
    assert candidate([[2, 2], [3, 1]], 2) == 9
    assert candidate([[2, 2], [6, 1]], 2) == 12
    assert candidate([[3, 1], [1, 2]], 2) == 8
    assert candidate([[3, 1], [9, 1]], 2) == 13
    assert candidate([[3, 1], [9, 2]], 1) == 10
    assert candidate([[3, 1], [10, 2]], 2) == 17
    assert candidate([[3, 2], [3, 1]], 1) == 4
    assert candidate([[3, 2], [5, 2]], 1) == 6
    assert candidate([[3, 2], [10, 1]], 2) == 17
    assert candidate([[3, 2], [10, 2]], 2) == 14
    assert candidate([[4, 1], [7, 2]], 2) == 15
    assert candidate([[4, 1], [9, 2]], 1) == 10
    assert candidate([[4, 2], [2, 1]], 2) == 10
    assert candidate([[4, 2], [3, 1]], 2) == 11
    assert candidate([[4, 2], [5, 2]], 1) == 6
    assert candidate([[4, 2], [7, 2]], 1) == 8
    assert candidate([[4, 2], [8, 1]], 2) == 16
    assert candidate([[4, 2], [10, 1]], 2) == 18
    assert candidate([[5, 1], [4, 2]], 1) == 6
    assert candidate([[5, 1], [8, 1]], 2) == 14
    assert candidate([[5, 1], [8, 2]], 1) == 9
    assert candidate([[5, 1], [9, 1]], 1) == 10
    assert candidate([[5, 2], [2, 1]], 1) == 6
    assert candidate([[5, 2], [4, 2]], 2) == 10
    assert candidate([[5, 2], [5, 1]], 2) == 14
    assert candidate([[6, 1], [1, 1]], 1) == 7
    assert candidate([[6, 1], [4, 1]], 1) == 7
    assert candidate([[6, 1], [7, 1]], 1) == 8
    assert candidate([[6, 1], [7, 2]], 2) == 17
    assert candidate([[6, 1], [8, 1]], 2) == 15
    assert candidate([[6, 1], [8, 2]], 2) == 18
    assert candidate([[6, 1], [9, 1]], 1) == 10
    assert candidate([[6, 2], [2, 1]], 1) == 7
    assert candidate([[6, 2], [4, 2]], 1) == 7
    assert candidate([[6, 2], [5, 1]], 1) == 7
    assert candidate([[6, 2], [6, 2]], 1) == 7
    assert candidate([[6, 2], [6, 2]], 2) == 13
    assert candidate([[6, 2], [7, 1]], 1) == 8
    assert candidate([[6, 2], [7, 1]], 2) == 17
    assert candidate([[6, 2], [8, 2]], 2) == 15
    assert candidate([[6, 2], [10, 2]], 2) == 17
    assert candidate([[7, 1], [1, 1]], 1) == 8
    assert candidate([[7, 1], [3, 2]], 1) == 8
    assert candidate([[7, 1], [6, 1]], 2) == 14
    assert candidate([[7, 2], [5, 1]], 2) == 16
    assert candidate([[7, 2], [5, 2]], 1) == 8
    assert candidate([[7, 2], [7, 2]], 2) == 15
    assert candidate([[7, 2], [10, 2]], 2) == 18
    assert candidate([[8, 1], [2, 1]], 1) == 9
    assert candidate([[8, 1], [2, 2]], 1) == 9
    assert candidate([[8, 1], [4, 2]], 1) == 9
    assert candidate([[8, 1], [5, 1]], 1) == 9
    assert candidate([[8, 1], [6, 2]], 1) == 9
    assert candidate([[8, 1], [8, 1]], 2) == 17
    assert candidate([[8, 1], [9, 1]], 1) == 10
    assert candidate([[8, 1], [9, 2]], 2) == 21
    assert candidate([[8, 2], [1, 1]], 1) == 9
    assert candidate([[8, 2], [1, 2]], 1) == 9
    assert candidate([[8, 2], [2, 1]], 1) == 9
    assert candidate([[8, 2], [8, 2]], 1) == 9
    assert candidate([[8, 2], [9, 1]], 2) == 21
    assert candidate([[8, 2], [9, 2]], 2) == 18
    assert candidate([[8, 2], [10, 1]], 2) == 22
    assert candidate([[9, 1], [1, 1]], 1) == 10
    assert candidate([[9, 1], [3, 2]], 2) == 16
    assert candidate([[9, 1], [4, 2]], 2) == 17
    assert candidate([[9, 1], [6, 2]], 1) == 10
    assert candidate([[9, 1], [9, 2]], 1) == 10
    assert candidate([[9, 1], [10, 2]], 1) == 11
    assert candidate([[9, 2], [1, 2]], 1) == 10
    assert candidate([[9, 2], [2, 1]], 2) == 15
    assert candidate([[9, 2], [6, 1]], 2) == 19
    assert candidate([[9, 2], [6, 2]], 2) == 16
    assert candidate([[9, 2], [8, 2]], 1) == 10
    assert candidate([[10, 1], [2, 2]], 1) == 11
    assert candidate([[10, 1], [4, 2]], 1) == 11
    assert candidate([[10, 1], [5, 1]], 2) == 16
    assert candidate([[10, 1], [5, 2]], 2) == 19
    assert candidate([[10, 1], [7, 1]], 1) == 11
    assert candidate([[10, 2], [1, 2]], 1) == 11
    assert candidate([[10, 2], [4, 1]], 1) == 11
    assert candidate([[10, 2], [5, 1]], 1) == 11
    assert candidate([[10, 2], [7, 1]], 1) == 11
    assert candidate([[10, 2], [8, 2]], 2) == 19


def test_check():
    check(findMaximumElegance)


### Metadata below ###
# question_id = 2894
# question_title = Maximum Elegance of a K-Length Subsequence
# question_title_slug = maximum-elegance-of-a-k-length-subsequence
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 270
# question_dislikes = 3