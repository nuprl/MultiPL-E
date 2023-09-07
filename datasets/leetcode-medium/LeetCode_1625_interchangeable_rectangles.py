from typing import List


def interchangeable_rectangles(rectangles: List[List[int]]) -> int:
    """
    You are given n rectangles represented by a 0-indexed 2D integer array rectangles, where rectangles[i] = [widthi, heighti] denotes the width and height of the ith rectangle.
    Two rectangles i and j (i < j) are considered interchangeable if they have the same width-to-height ratio. More formally, two rectangles are interchangeable if widthi/heighti == widthj/heightj (using decimal division, not integer division).
    Return the number of pairs of interchangeable rectangles in rectangles.
 
    Example 1:

    Input: rectangles = [[4,8],[3,6],[10,20],[15,30]]
    Output: 6
    Explanation: The following are the interchangeable pairs of rectangles by index (0-indexed):
    - Rectangle 0 with rectangle 1: 4/8 == 3/6.
    - Rectangle 0 with rectangle 2: 4/8 == 10/20.
    - Rectangle 0 with rectangle 3: 4/8 == 15/30.
    - Rectangle 1 with rectangle 2: 3/6 == 10/20.
    - Rectangle 1 with rectangle 3: 3/6 == 15/30.
    - Rectangle 2 with rectangle 3: 10/20 == 15/30.

    Example 2:

    Input: rectangles = [[4,5],[7,8]]
    Output: 0
    Explanation: There are no interchangeable pairs of rectangles.

 
    Constraints:

    n == rectangles.length
    1 <= n <= 105
    rectangles[i].length == 2
    1 <= widthi, heighti <= 105

    """
    ### Canonical solution below ###
    ratio_count = {}
    count = 0

    for r in rectangles:
        ratio = r[0] / r[1]
        count += ratio_count.get(ratio, 0)
        ratio_count[ratio] = ratio_count.get(ratio, 0) + 1

    return count




### Unit tests below ###
def check(candidate):
	assert candidate([[10, 20], [10, 20], [10, 20]]) == 3
	assert candidate([[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]) == 0
	assert candidate(
    [
        [4, 5],
        [7, 8],
    ]
) == 0
	assert candidate([[5, 10], [5, 10], [5, 10], [5, 10], [5, 10]]) == 10
	assert candidate([[4, 5], [7, 8]]) == 0
	assert candidate([[4, 8], [3, 6], [10, 20], [15, 30], [36, 48]]) == 6
	assert candidate([[2, 4]] * 10) == 45
	assert candidate([[4, 8], [4, 8], [4, 8]]) == 3
	assert candidate([[10, 100], [20, 200], [20, 200], [20, 200]]) == 6
	assert candidate([[2, 10], [2, 10], [2, 10]]) == 3
	assert candidate(
    [
        [1, 2],
        [2, 3],
        [3, 4],
        [4, 5],
        [5, 6],
    ]
) == 0
	assert candidate([[4, 8], [4, 8], [4, 8], [4, 8]]) == 6
	assert candidate([[1, 2]] * 10) == 45
	assert candidate([[1, 1], [1, 1], [1, 1]]) == 3
	assert candidate([[10, 10], [10, 10], [10, 10]]) == 3
	assert candidate([[4, 8], [3, 6], [10, 20], [15, 30]]) == 6
	assert candidate([[1, 2], [2, 3], [3, 4], [4, 5], [5, 6]]) == 0
	assert candidate(
    [
        [4, 8],
        [3, 6],
        [10, 20],
        [15, 30],
    ]
) == 6
	assert candidate([[10, 2], [10, 2], [10, 2]]) == 3
def test_check():
	check(interchangeable_rectangles)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,math,counting,number-theory
# Metadata Coverage: 100
