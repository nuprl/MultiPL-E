from typing import List


def maxHeight(cuboids: List[List[int]]) -> int:
    """
    Given n cuboids where the dimensions of the ith cuboid is cuboids[i] = [widthi, lengthi, heighti] (0-indexed). Choose a subset of cuboids and place them on each other.
    You can place cuboid i on cuboid j if widthi <= widthj and lengthi <= lengthj and heighti <= heightj. You can rearrange any cuboid's dimensions by rotating it to put it on another cuboid.
    Return the maximum height of the stacked cuboids.
 
    Example 1:


    Input: cuboids = [[50,45,20],[95,37,53],[45,23,12]]
    Output: 190
    Explanation:
    Cuboid 1 is placed on the bottom with the 53x37 side facing down with height 95.
    Cuboid 0 is placed next with the 45x20 side facing down with height 50.
    Cuboid 2 is placed next with the 23x12 side facing down with height 45.
    The total height is 95 + 50 + 45 = 190.

    Example 2:

    Input: cuboids = [[38,25,45],[76,35,3]]
    Output: 76
    Explanation:
    You can't place any of the cuboids on the other.
    We choose cuboid 1 and rotate it so that the 35x3 side is facing down and its height is 76.

    Example 3:

    Input: cuboids = [[7,11,17],[7,17,11],[11,7,17],[11,17,7],[17,7,11],[17,11,7]]
    Output: 102
    Explanation:
    After rearranging the cuboids, you can see that all cuboids have the same dimension.
    You can place the 11x7 side down on all cuboids so their heights are 17.
    The maximum height of stacked cuboids is 6 * 17 = 102.

 
    Constraints:

    n == cuboids.length
    1 <= n <= 100
    1 <= widthi, lengthi, heighti <= 100

    """
    ### Canonical solution below ###
    cuboids = [sorted(cuboid) for cuboid in cuboids]
    cuboids.sort()

    n = len(cuboids)
    dp = [0] * n
    ans = 0

    for i, cuboid in enumerate(cuboids):
        dp[i] = cuboid[2]
        for j in range(i):
            if all(cuboids[j][k] <= cuboid[k] for k in range(3)):
                dp[i] = max(dp[i], dp[j] + cuboid[2])

        ans = max(ans, dp[i])

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([[1,1,1]]) == 1
	assert candidate([[1,1,1],[1,1,1],[1,1,1],[1,1,1]]) == 4
	assert candidate([[1,1,1],[2,2,2]]) == 3
	assert candidate([[50,45,20],[95,37,53],[45,23,12]]) == 190
	assert candidate([[1,1,1],[2,2,2],[3,3,3]]) == 6
	assert candidate([[1,1,1],[1,1,1],[1,1,1],[1,1,1],[1,1,1]]) == 5
	assert candidate([[3,3,3],[2,2,2],[1,1,1]]) == 6
	assert candidate([[1,1,1],[1,1,1],[1,1,1]]) == 3
	assert candidate([[4,4,4],[3,3,3],[2,2,2],[1,1,1]]) == 10
	assert candidate([[38,25,45],[76,35,3]]) == 76
	assert candidate([[10,10,10],[20,20,20]]) == 30
	assert candidate([[1,1,1],[2,2,2],[3,3,3],[4,4,4]]) == 10
	assert candidate([[7,11,17],[7,17,11],[11,7,17],[11,17,7],[17,7,11],[17,11,7]]) == 102
def test_check():
	check(maxHeight)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming,sorting
# Metadata Coverage: 100
