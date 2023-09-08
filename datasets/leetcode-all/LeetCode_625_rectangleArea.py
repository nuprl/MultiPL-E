from typing import List


def rectangleArea(rectangles: List[List[int]]) -> int:
    """
    You are given a 2D array of axis-aligned rectangles. Each rectangle[i] = [xi1, yi1, xi2, yi2] denotes the ith rectangle where (xi1, yi1) are the coordinates of the bottom-left corner, and (xi2, yi2) are the coordinates of the top-right corner.
    Calculate the total area covered by all rectangles in the plane. Any area covered by two or more rectangles should only be counted once.
    Return the total area. Since the answer may be too large, return it modulo 109 + 7.
 
    Example 1:


    Input: rectangles = [[0,0,2,2],[1,0,2,3],[1,0,3,1]]
    Output: 6
    Explanation: A total area of 6 is covered by all three rectangles, as illustrated in the picture.
    From (1,1) to (2,2), the green and red rectangles overlap.
    From (1,0) to (2,3), all three rectangles overlap.

    Example 2:

    Input: rectangles = [[0,0,1000000000,1000000000]]
    Output: 49
    Explanation: The answer is 1018 modulo (109 + 7), which is 49.

 
    Constraints:

    1 <= rectangles.length <= 200
    rectanges[i].length == 4
    0 <= xi1, yi1, xi2, yi2 <= 109
    xi1 <= xi2
    yi1 <= yi2

    """
    ### Canonical solution below ###
    mod = 10**9 + 7
    n = len(rectangles)
    X, Y = set(), set()
    for rect in rectangles:
        X.add(rect[0])
        X.add(rect[2])
        Y.add(rect[1])
        Y.add(rect[3])
    sorted_x = sorted(X)
    sorted_y = sorted(Y)
    cnt = [[0 for _ in range(len(Y) - 1)] for _ in range(len(X) - 1)]

    for rect in rectangles:
        x1_idx = sorted_x.index(rect[0])
        x2_idx = sorted_x.index(rect[2]) - 1
        y1_idx = sorted_y.index(rect[1])
        y2_idx = sorted_y.index(rect[3]) - 1
        for i in range(x1_idx, x2_idx + 1):
            for j in range(y1_idx, y2_idx + 1):
                cnt[i][j] = 1

    total_area = 0
    for i in range(len(X) - 1):
        for j in range(len(Y) - 1):
            if cnt[i][j]:
                total_area += (sorted_x[i + 1] - sorted_x[i]) * (sorted_y[j + 1] - sorted_y[j])
                total_area %= mod

    return total_area




### Unit tests below ###
def check(candidate):
	assert candidate([[0,0,1,1],[1,1,2,2]]) == 2
	assert candidate([[0,0,2,2],[0,2,2,4],[2,0,4,2],[2,2,4,4]]) == 16
	assert candidate([[0,0,1,1],[0,0,1,1]]) == 1
	assert candidate([[0,0,1000000000,1000000000]]) == 49
	assert candidate([[0,0,1,1],[0,1,1,2],[1,0,2,1],[1,1,2,2]]) == 4
	assert candidate([[0,0,5,5],[1,1,4,4]]) == 25
	assert candidate([[0,0,0,0],[0,0,0,0]]) == 0
	assert candidate([[0,0,1,1],[1,0,2,1],[0,1,1,2],[1,1,2,2]]) == 4
	assert candidate([[0,0,10,10],[0,10,10,20],[0,20,10,30]]) == 300
	assert candidate([[1,1,3,3],[1,1,3,3],[1,1,3,3]]) == 4
	assert candidate([[1,1,3,3]]) == 4
	assert candidate([[0,0,1,1],[1,0,2,1],[2,0,3,1],[3,0,4,1]]) == 4
	assert candidate([[1,1,3,3],[1,1,4,4],[0,0,2,2],[2,2,4,4]]) == 12
	assert candidate([[0,0,1,1],[1,0,2,2],[1,1,3,3],[0,1,2,3]]) == 8
	assert candidate([[1,1,3,3],[1,1,3,3]]) == 4
	assert candidate([[0,0,10,10],[10,0,20,10],[20,0,30,10]]) == 300
	assert candidate([[0,0,2,2],[1,1,3,3]]) == 7
	assert candidate([[0,0,2,2],[1,0,2,3],[1,0,3,1]]) == 6
def test_check():
	check(rectangleArea)
# Metadata Difficulty: Hard
# Metadata Topics: array,segment-tree,line-sweep,ordered-set
# Metadata Coverage: 100
