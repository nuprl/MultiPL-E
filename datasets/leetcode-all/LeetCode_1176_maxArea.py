from typing import List


def maxArea(h: int, w: int, horizontalCuts: List[int], verticalCuts: List[int]) -> int:
    """
    You are given a rectangular cake of size h x w and two arrays of integers horizontalCuts and verticalCuts where:

    horizontalCuts[i] is the distance from the top of the rectangular cake to the ith horizontal cut and similarly, and
    verticalCuts[j] is the distance from the left of the rectangular cake to the jth vertical cut.

    Return the maximum area of a piece of cake after you cut at each horizontal and vertical position provided in the arrays horizontalCuts and verticalCuts. Since the answer can be a large number, return this modulo 109 + 7.
 
    Example 1:


    Input: h = 5, w = 4, horizontalCuts = [1,2,4], verticalCuts = [1,3]
    Output: 4 
    Explanation: The figure above represents the given rectangular cake. Red lines are the horizontal and vertical cuts. After you cut the cake, the green piece of cake has the maximum area.

    Example 2:


    Input: h = 5, w = 4, horizontalCuts = [3,1], verticalCuts = [1]
    Output: 6
    Explanation: The figure above represents the given rectangular cake. Red lines are the horizontal and vertical cuts. After you cut the cake, the green and yellow pieces of cake have the maximum area.

    Example 3:

    Input: h = 5, w = 4, horizontalCuts = [3], verticalCuts = [3]
    Output: 9

 
    Constraints:

    2 <= h, w <= 109
    1 <= horizontalCuts.length <= min(h - 1, 105)
    1 <= verticalCuts.length <= min(w - 1, 105)
    1 <= horizontalCuts[i] < h
    1 <= verticalCuts[i] < w
    All the elements in horizontalCuts are distinct.
    All the elements in verticalCuts are distinct.

    """
    ### Canonical solution below ###
    horizontalCuts.sort()
    verticalCuts.sort()

    maxH = max(horizontalCuts[0], h - horizontalCuts[-1])
    maxV = max(verticalCuts[0], w - verticalCuts[-1])

    for i in range(1, len(horizontalCuts)):
        maxH = max(maxH, horizontalCuts[i] - horizontalCuts[i - 1])

    for i in range(1, len(verticalCuts)):
        maxV = max(maxV, verticalCuts[i] - verticalCuts[i - 1])

    return (maxH * maxV) % (10**9 + 7)




### Unit tests below ###
def check(candidate):
	assert candidate(9, 8, [2, 4, 6, 8], [2, 4, 6]) == 4
	assert candidate(8, 8, [2, 4, 6], [2, 4, 6]) == 4
	assert candidate(5, 4, [1, 2, 4], [1, 3]) == 4
	assert candidate(10, 10, [1, 3, 5, 7, 9], [1, 3, 5, 7, 9]) == 4
	assert candidate(15, 10, [3, 6, 9, 12], [2, 5, 8]) == 9
	assert candidate(7, 5, [2, 4], [1, 3]) == 6
	assert candidate(10, 10, [3, 6, 9], [2, 5, 8]) == 9
	assert candidate(5, 4, [1, 2, 4], [1, 2, 3]) == 2
	assert candidate(9, 8, [1, 3, 5, 7], [1, 2, 4]) == 8
	assert candidate(10, 5, [2, 4, 6, 8], [1, 3]) == 4
	assert candidate(20, 15, [4, 8, 12, 16], [3, 6, 9, 12]) == 12
	assert candidate(9, 7, [1, 3, 5, 7], [1, 2, 3, 4]) == 6
	assert candidate(12, 7, [3, 6, 9, 11], [2, 4, 5, 7]) == 6
	assert candidate(12, 7, [3, 6, 9, 11], [2, 4, 5]) == 6
	assert candidate(8, 8, [1, 2, 3, 4, 5, 6, 7], [1, 2, 3, 4, 5, 6, 7]) == 1
	assert candidate(10, 10, [1, 2, 3, 4, 5, 6, 7, 8, 9], [5, 6, 7, 8, 9]) == 5
	assert candidate(12, 7, [3, 6, 9, 11], [2, 4, 6]) == 6
def test_check():
	check(maxArea)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,sorting
# Metadata Coverage: 100
