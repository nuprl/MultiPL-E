from typing import List


def find_content_children(g: List[int], s: List[int]) -> int:
    """
    Assume you are an awesome parent and want to give your children some cookies. But, you should give each child at most one cookie.
    Each child i has a greed factor g[i], which is the minimum size of a cookie that the child will be content with; and each cookie j has a size s[j]. If s[j] >= g[i], we can assign the cookie j to the child i, and the child i will be content. Your goal is to maximize the number of your content children and output the maximum number.
 
    Example 1:

    Input: g = [1,2,3], s = [1,1]
    Output: 1
    Explanation: You have 3 children and 2 cookies. The greed factors of 3 children are 1, 2, 3. 
    And even though you have 2 cookies, since their size is both 1, you could only make the child whose greed factor is 1 content.
    You need to output 1.

    Example 2:

    Input: g = [1,2], s = [1,2,3]
    Output: 2
    Explanation: You have 2 children and 3 cookies. The greed factors of 2 children are 1, 2. 
    You have 3 cookies and their sizes are big enough to gratify all of the children, 
    You need to output 2.

 
    Constraints:

    1 <= g.length <= 3 * 104
    0 <= s.length <= 3 * 104
    1 <= g[i], s[j] <= 231 - 1

    """
    ### Canonical solution below ###
    g.sort()
    s.sort()
    i = j = 0

    while i < len(g) and j < len(s):
        if s[j] >= g[i]:
            i += 1

        j += 1

    return i




### Unit tests below ###
def check(candidate):
	assert candidate([10,9,8,7,6,5,4,3,2,1], [5,5,5]) == 3
	assert candidate([1,1,1,1,1], [1,1,1,1,1,1,1,1,1,1]) == 5
	assert candidate([10,9], [10]) == 1
	assert candidate([1,1,1,1,1], [1]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10], [1,2,3,4,5,6,7,8,9,10,11]) == 10
	assert candidate([1,2,3,4,5,6,7,8,9,10], [1]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], [1,2,3,4,5,6,7,8,9,10]) == 10
	assert candidate([10,9,8,7,6,5,4,3,2,1], [10]) == 1
	assert candidate([10,9,8,7,6,5,4,3,2,1], [4]) == 1
	assert candidate([1,2,3,4,5], [1,2,3,4,5,6,7,8,9,10]) == 5
	assert candidate([1,2,3,4,5,6,7,8,9,10], [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 10
	assert candidate([1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1,1,1]) == 10
	assert candidate([1,2,3,4,5,6,7,8,9,10], [10]) == 1
	assert candidate([], [1,1,1,1,1,1,1,1,1,1]) == 0
	assert candidate([1,2,3,4,5,6,7,8,9,10], [10,9,8,7,6,5,4,3,2,1]) == 10
	assert candidate([1,2,3], [1,2]) == 2
	assert candidate([10,9,8,7,6,5,4,3,2,1], [10,9,8,7,6,5,4,3,2,1]) == 10
	assert candidate([], []) == 0
	assert candidate([1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1,1]) == 10
	assert candidate([1,1,1,1,1], []) == 0
	assert candidate([10,9,8,7,6,5,4,3,2,1], [1,1]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10], [1,2,3,4,5,6,7,8,9,10]) == 10
	assert candidate([10,9,8,7,6,5,4,3,2,1], [5]) == 1
	assert candidate([1,2,3], [1,1]) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1]) == 5
	assert candidate([10,9,8,7,6,5,4,3,2,1], []) == 0
	assert candidate([1], [1,1,1,1,1,1,1,1,1,1]) == 1
	assert candidate([1,2], [1,2,3]) == 2
	assert candidate([1,1,1,1,1,1,1,1,1,1], [1,2]) == 2
	assert candidate([10,9,8,7,6,5,4,3,2,1], [1]) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1], []) == 0
def test_check():
	check(find_content_children)
# Metadata Difficulty: Easy
# Metadata Topics: array,two-pointers,greedy,sorting
# Metadata Coverage: 100
