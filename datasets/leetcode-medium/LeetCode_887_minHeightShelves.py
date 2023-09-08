from typing import List


def minHeightShelves(books: List[List[int]], shelfWidth: int) -> int:
    """
    You are given an array books where books[i] = [thicknessi, heighti] indicates the thickness and height of the ith book. You are also given an integer shelfWidth.
    We want to place these books in order onto bookcase shelves that have a total width shelfWidth.
    We choose some of the books to place on this shelf such that the sum of their thickness is less than or equal to shelfWidth, then build another level of the shelf of the bookcase so that the total height of the bookcase has increased by the maximum height of the books we just put down. We repeat this process until there are no more books to place.
    Note that at each step of the above process, the order of the books we place is the same order as the given sequence of books.

    For example, if we have an ordered list of 5 books, we might place the first and second book onto the first shelf, the third book on the second shelf, and the fourth and fifth book on the last shelf.

    Return the minimum possible height that the total bookshelf can be after placing shelves in this manner.
 
    Example 1:


    Input: books = [[1,1],[2,3],[2,3],[1,1],[1,1],[1,1],[1,2]], shelfWidth = 4
    Output: 6
    Explanation:
    The sum of the heights of the 3 shelves is 1 + 3 + 2 = 6.
    Notice that book number 2 does not have to be on the first shelf.

    Example 2:

    Input: books = [[1,3],[2,4],[3,2]], shelfWidth = 6
    Output: 4

 
    Constraints:

    1 <= books.length <= 1000
    1 <= thicknessi <= shelfWidth <= 1000
    1 <= heighti <= 1000

    """
    ### Canonical solution below ###
    n = len(books)
    dp = [1000000] * (n + 1)
    dp[0] = 0

    for i in range(1, n + 1):
        width = 0
        height = 0
        j = i
        while j >= 1:
            width += books[j - 1][0]
            height = max(height, books[j - 1][1])

            if width <= shelfWidth:
                dp[i] = min(dp[i], dp[j - 1] + height)
            j -= 1

    return dp[n]




### Unit tests below ###
def check(candidate):
	assert candidate([[1,3], [2,4], [3,2]], 6) == 4
	assert candidate([[1,1]], 1) == 1
	assert candidate([[1,5], [2,4], [3,3], [4,2], [5,1]], 15) == 5
	assert candidate([[5,5], [4,4], [3,3], [2,2], [1,1]], 15) == 5
	assert candidate([[1,1], [1,1], [1,1], [1,1], [1,1], [1,1], [1,2]], 1) == 8
	assert candidate([[1,1], [2,2], [3,3], [4,4], [5,5]], 15) == 5
	assert candidate([[1,3], [2,4], [3,2]], 5) == 6
def test_check():
	check(minHeightShelves)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
