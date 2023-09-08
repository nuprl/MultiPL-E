from typing import List


def flipAndInvertImage(image: List[List[int]]) -> List[List[int]]:
    """
    Given an n x n binary matrix image, flip the image horizontally, then invert it, and return the resulting image.
    To flip an image horizontally means that each row of the image is reversed.

    For example, flipping [1,1,0] horizontally results in [0,1,1].

    To invert an image means that each 0 is replaced by 1, and each 1 is replaced by 0.

    For example, inverting [0,1,1] results in [1,0,0].

 
    Example 1:

    Input: image = [[1,1,0],[1,0,1],[0,0,0]]
    Output: [[1,0,0],[0,1,0],[1,1,1]]
    Explanation: First reverse each row: [[0,1,1],[1,0,1],[0,0,0]].
    Then, invert the image: [[1,0,0],[0,1,0],[1,1,1]]

    Example 2:

    Input: image = [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]
    Output: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
    Explanation: First reverse each row: [[0,0,1,1],[1,0,0,1],[1,1,1,0],[0,1,0,1]].
    Then invert the image: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]

 
    Constraints:

    n == image.length
    n == image[i].length
    1 <= n <= 20
    images[i][j] is either 0 or 1.

    """
    ### Canonical solution below ###
    for row in image:
        row.reverse()
        for j in range(len(row)):
            row[j] = 1 - row[j]
    return image




### Unit tests below ###
def check(candidate):
	assert candidate([[1,1,1,1],[0,0,0,0],[1,1,1,1]]) == [[0,0,0,0],[1,1,1,1],[0,0,0,0]]
	assert candidate([[1,0,0,1],[0,1,1,0],[1,0,0,1]]) == [[0,1,1,0],[1,0,0,1],[0,1,1,0]]
	assert candidate([[0,1],[1,0]]) == [[0,1],[1,0]]
	assert candidate([[1,0,1],[0,1,0],[1,0,1]]) == [[0,1,0],[1,0,1],[0,1,0]]
	assert candidate([[1,1,0,0],[0,0,1,1]]) == [[1,1,0,0],[0,0,1,1]]
	assert candidate([[0,0],[1,1]]) == [[1,1],[0,0]]
	assert candidate([[0,0]]) == [[1,1]]
	assert candidate([[1,1,1,1,1]]) == [[0,0,0,0,0]]
	assert candidate([[1,1],[1,1]]) == [[0,0],[0,0]]
	assert candidate([[0]]) == [[1]]
	assert candidate([[1,1,1],[1,1,1]]) == [[0,0,0],[0,0,0]]
	assert candidate([[1]]) == [[0]]
	assert candidate([[0,1,0],[0,1,0],[0,1,0]]) == [[1,0,1],[1,0,1],[1,0,1]]
	assert candidate([[0,0,0],[0,0,0]]) == [[1,1,1],[1,1,1]]
	assert candidate([[1,0,1,0]]) == [[1,0,1,0]]
def test_check():
	check(flipAndInvertImage)
# Metadata Difficulty: Easy
# Metadata Topics: array,two-pointers,matrix,simulation
# Metadata Coverage: 100
