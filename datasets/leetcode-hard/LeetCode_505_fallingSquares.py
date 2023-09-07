from typing import List


def fallingSquares(positions: List[List[int]]) -> List[int]:
    """
    There are several squares being dropped onto the X-axis of a 2D plane.
    You are given a 2D integer array positions where positions[i] = [lefti, sideLengthi] represents the ith square with a side length of sideLengthi that is dropped with its left edge aligned with X-coordinate lefti.
    Each square is dropped one at a time from a height above any landed squares. It then falls downward (negative Y direction) until it either lands on the top side of another square or on the X-axis. A square brushing the left/right side of another square does not count as landing on it. Once it lands, it freezes in place and cannot be moved.
    After each square is dropped, you must record the height of the current tallest stack of squares.
    Return an integer array ans where ans[i] represents the height described above after dropping the ith square.
 
    Example 1:


    Input: positions = [[1,2],[2,3],[6,1]]
    Output: [2,5,5]
    Explanation:
    After the first drop, the tallest stack is square 1 with a height of 2.
    After the second drop, the tallest stack is squares 1 and 2 with a height of 5.
    After the third drop, the tallest stack is still squares 1 and 2 with a height of 5.
    Thus, we return an answer of [2, 5, 5].

    Example 2:

    Input: positions = [[100,100],[200,100]]
    Output: [100,100]
    Explanation:
    After the first drop, the tallest stack is square 1 with a height of 100.
    After the second drop, the tallest stack is either square 1 or square 2, both with heights of 100.
    Thus, we return an answer of [100, 100].
    Note that square 2 only brushes the right side of square 1, which does not count as landing on it.

 
    Constraints:

    1 <= positions.length <= 1000
    1 <= lefti <= 108
    1 <= sideLengthi <= 106

    """
    ### Canonical solution below ###
    ans = []
    intervals = []

    for p in positions:
        L, size = p
        R = L + size
        h = size
        for h2, R2 in intervals:
            if R2 > L and R > R2:
                h = max(h, size + h2)

        maxHeight = max((h2 for h2, R2 in intervals), default=0)
        ans.append(max(maxHeight, h))
        intervals.append((h, R))

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2],[5,3],[3,1]]) == [2,3,3]
	assert candidate([[1,2],[2,2],[3,2]]) == [2,4,6]
	assert candidate([[1,2],[2,2],[2,1]]) == [2,4,4]
	assert candidate([[1,1]]) == [1]
	assert candidate([[1,2],[2,3],[6,1]]) == [2,5,5]
	assert candidate([[1,2],[3,2],[5,2]]) == [2,2,2]
	assert candidate([[1,2],[2,2],[1,2]]) == [2,4,4]
	assert candidate([[100,100],[200,100]]) == [100,100]
def test_check():
	check(fallingSquares)
# Metadata Difficulty: Hard
# Metadata Topics: array,segment-tree,ordered-set
# Metadata Coverage: 100
