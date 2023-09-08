from typing import List


def imageSmoother(img: List[List[int]]) -> List[List[int]]:
    """
    An image smoother is a filter of the size 3 x 3 that can be applied to each cell of an image by rounding down the average of the cell and the eight surrounding cells (i.e., the average of the nine cells in the blue smoother). If one or more of the surrounding cells of a cell is not present, we do not consider it in the average (i.e., the average of the four cells in the red smoother).

    Given an m x n integer matrix img representing the grayscale of an image, return the image after applying the smoother on each cell of it.
 
    Example 1:


    Input: img = [[1,1,1],[1,0,1],[1,1,1]]
    Output: [[0,0,0],[0,0,0],[0,0,0]]
    Explanation:
    For the points (0,0), (0,2), (2,0), (2,2): floor(3/4) = floor(0.75) = 0
    For the points (0,1), (1,0), (1,2), (2,1): floor(5/6) = floor(0.83333333) = 0
    For the point (1,1): floor(8/9) = floor(0.88888889) = 0

    Example 2:


    Input: img = [[100,200,100],[200,50,200],[100,200,100]]
    Output: [[137,141,137],[141,138,141],[137,141,137]]
    Explanation:
    For the points (0,0), (0,2), (2,0), (2,2): floor((100+200+200+50)/4) = floor(137.5) = 137
    For the points (0,1), (1,0), (1,2), (2,1): floor((200+200+50+200+100+100)/6) = floor(141.666667) = 141
    For the point (1,1): floor((50+200+200+200+200+100+100+100+100)/9) = floor(138.888889) = 138

 
    Constraints:

    m == img.length
    n == img[i].length
    1 <= m, n <= 200
    0 <= img[i][j] <= 255

    """
    ### Canonical solution below ###
    m, n = len(img), len(img[0])
    result = [[0] * n for _ in range(m)]

    for i in range(m):
        for j in range(n):
            count, total = 0, 0
            for x in range(i - 1, i + 2):
                for y in range(j - 1, j + 2):
                    if 0 <= x < m and 0 <= y < n:
                        total += img[x][y]
                        count += 1
            result[i][j] = total // count

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1]]) == [[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1]]
	assert candidate([[1,1,1],[1,0,1],[1,1,1]]) == [[0,0,0],[0,0,0],[0,0,0]]
	assert candidate([[100,200,100],[200,50,200],[100,200,100]]) == [[137,141,137],[141,138,141],[137,141,137]]
	assert candidate([[100,100],[100,100]]) == [[100,100],[100,100]]
	assert candidate([[255,255,255],[255,255,255],[255,255,255]]) == [[255,255,255],[255,255,255],[255,255,255]]
	assert candidate([[100,100,100],[100,100,100],[100,100,100]]) == [[100,100,100],[100,100,100],[100,100,100]]
	assert candidate([[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1]]) == [[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1]]
	assert candidate([[1]]) == [[1]]
def test_check():
	check(imageSmoother)
# Metadata Difficulty: Easy
# Metadata Topics: array,matrix
# Metadata Coverage: 100
