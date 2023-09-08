from typing import List


def lexical_order(n: int) -> List[int]:
    """
    Given an integer n, return all the numbers in the range [1, n] sorted in lexicographical order.
    You must write an algorithm that runs in O(n) time and uses O(1) extra space. 
 
    Example 1:
    Input: n = 13
    Output: [1,10,11,12,13,2,3,4,5,6,7,8,9]
    Example 2:
    Input: n = 2
    Output: [1,2]

 
    Constraints:

    1 <= n <= 5 * 104

    """
    ### Canonical solution below ###
    def lexicographical_order_helper(current, n, result):
        if current > n:
            return

        result.append(current)
        for i in range(10):
            lexicographical_order_helper(current * 10 + i, n, result)
    result = []
    for i in range(1, 10):
        lexicographical_order_helper(i, n, result)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(15) == [1, 10, 11, 12, 13, 14, 15, 2, 3, 4, 5, 6, 7, 8, 9]
	assert candidate(13) == [1, 10, 11, 12, 13, 2, 3, 4, 5, 6, 7, 8, 9]
	assert candidate(100) == [1, 10, 100, 11, 12, 13, 14, 15, 16, 17, 18, 19, 2, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 3, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 4, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 5, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 6, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 7, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 8, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 9, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99]
	assert candidate(20) == [1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 2, 20, 3, 4, 5, 6, 7, 8, 9]
	assert candidate(2) == [1, 2]
	assert candidate(1) == [1]
def test_check():
	check(lexical_order)
# Metadata Difficulty: Medium
# Metadata Topics: depth-first-search,trie
# Metadata Coverage: 100
