from typing import List


def totalFruit(fruits: List[str]) -> int:
    """
    You are visiting a farm that has a single row of fruit trees arranged from left to right. The trees are represented by an integer array fruits where fruits[i] is the type of fruit the ith tree produces.
    You want to collect as much fruit as possible. However, the owner has some strict rules that you must follow:

    You only have two baskets, and each basket can only hold a single type of fruit. There is no limit on the amount of fruit each basket can hold.
    Starting from any tree of your choice, you must pick exactly one fruit from every tree (including the start tree) while moving to the right. The picked fruits must fit in one of your baskets.
    Once you reach a tree with fruit that cannot fit in your baskets, you must stop.

    Given the integer array fruits, return the maximum number of fruits you can pick.
 
    Example 1:

    Input: fruits = [1,2,1]
    Output: 3
    Explanation: We can pick from all 3 trees.

    Example 2:

    Input: fruits = [0,1,2,2]
    Output: 3
    Explanation: We can pick from trees [1,2,2].
    If we had started at the first tree, we would only pick from trees [0,1].

    Example 3:

    Input: fruits = [1,2,3,2,2]
    Output: 4
    Explanation: We can pick from trees [2,3,2,2].
    If we had started at the first tree, we would only pick from trees [1,2].

 
    Constraints:

    1 <= fruits.length <= 105
    0 <= fruits[i] < fruits.length

    """
    ### Canonical solution below ###
    left, right, max_count = 0, 0, 0
    count = {}

    while right < len(fruits):
        count[fruits[right]] = count.get(fruits[right], 0) + 1
        while len(count) > 2:
            count[fruits[left]] -= 1
            if count[fruits[left]] == 0:
                del count[fruits[left]]
            left += 1
        max_count = max(max_count, right - left + 1)
        right += 1

    return max_count




### Unit tests below ###
def check(candidate):
	assert candidate(["apple", "apple", "apple", "banana"]) == 4
	assert candidate(["apple", "apple", "apple"]) == 3
	assert candidate(["apple", "banana", "apple"]) == 3
	assert candidate(["apple", "banana", "apple", "cherry"]) == 3
	assert candidate(["apple", "banana", "cherry"]) == 2
	assert candidate(["apple", "apple", "banana", "cherry", "cherry", "cherry"]) == 4
	assert candidate(["apple", "banana", "apple", "apple"]) == 4
	assert candidate(["apple", "apple", "apple", "banana", "apple", "cherry"]) == 5
	assert candidate(["apple", "banana", "cherry", "banana"]) == 3
	assert candidate(["apple", "banana", "cherry", "cherry"]) == 3
	assert candidate(["apple", "apple", "apple", "apple"]) == 4
	assert candidate(["apple", "apple", "banana", "cherry", "cherry", "banana", "cherry", "banana", "apple"]) == 6
	assert candidate(["apple", "apple", "apple", "apple", "banana", "cherry", "banana"]) == 5
	assert candidate(["apple"]) == 1
	assert candidate(["apple", "apple", "banana"]) == 3
	assert candidate(["apple", "cherry", "cherry"]) == 3
	assert candidate(["apple", "banana", "banana", "banana"]) == 4
	assert candidate(["apple", "apple", "apple", "apple", "apple"]) == 5
	assert candidate(["apple", "apple", "banana", "banana"]) == 4
	assert candidate(["apple", "apple", "apple", "apple", "apple", "banana", "cherry", "banana"]) == 6
	assert candidate(["apple", "apple", "banana", "apple"]) == 4
	assert candidate(["apple", "apple", "banana", "banana", "cherry", "cherry"]) == 4
	assert candidate(["apple", "apple", "apple", "apple", "apple", "banana", "cherry", "cherry", "cherry"]) == 6
	assert candidate(["apple", "apple", "apple", "apple", "apple", "banana", "cherry", "cherry"]) == 6
	assert candidate(["apple", "apple", "apple", "banana", "cherry"]) == 4
	assert candidate(["apple", "banana", "banana", "cherry"]) == 3
	assert candidate(["apple", "banana", "banana", "banana", "cherry", "cherry"]) == 5
	assert candidate(["apple", "apple", "banana", "cherry", "cherry"]) == 3
	assert candidate(["apple", "banana", "cherry", "banana", "banana"]) == 4
	assert candidate(["apple", "apple", "cherry"]) == 3
	assert candidate(["apple", "apple", "cherry", "banana"]) == 3
	assert candidate(["apple", "apple", "apple", "apple", "banana", "cherry", "cherry"]) == 5
def test_check():
	check(totalFruit)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,sliding-window
# Metadata Coverage: 100
