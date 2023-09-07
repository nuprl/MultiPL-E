from typing import List


def maximum_wealth(accounts: List[List[int]]) -> int:
    """
    You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th​​​​ bank. Return the wealth that the richest customer has.
    A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.
 
    Example 1:

    Input: accounts = [[1,2,3],[3,2,1]]
    Output: 6
    Explanation:
    1st customer has wealth = 1 + 2 + 3 = 6
    2nd customer has wealth = 3 + 2 + 1 = 6
    Both customers are considered the richest with a wealth of 6 each, so return 6.

    Example 2:

    Input: accounts = [[1,5],[7,3],[3,5]]
    Output: 10
    Explanation: 
    1st customer has wealth = 6
    2nd customer has wealth = 10 
    3rd customer has wealth = 8
    The 2nd customer is the richest with a wealth of 10.
    Example 3:

    Input: accounts = [[2,8,7],[7,1,3],[1,9,5]]
    Output: 17

 
    Constraints:

    m == accounts.length
    n == accounts[i].length
    1 <= m, n <= 50
    1 <= accounts[i][j] <= 100

    """
    ### Canonical solution below ###
    return max(sum(customer) for customer in accounts)




### Unit tests below ###
def check(candidate):
	assert candidate([[5,5,5,5],[1,1,1,1],[2,2,2,2]]) == 20
	assert candidate([[1,1,1,1,1],[2,2,2,2,2],[3,3,3,3,3]]) == 15
	assert candidate([[1,2,3,4,5],[2,3,4,5,6],[1,1,1,1,1]]) == 20
	assert candidate([[10,10,10],[10,10,10],[10,10,10]]) == 30
	assert candidate([[1,2,3,4,5,6,7,8,9,10],[10,9,8,7,6,5,4,3,2,1]]) == 55
	assert candidate([[2,8,7],[7,8,2],[8,2,7]]) == 17
	assert candidate([[1,1,1,1,1,1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2]]) == 20
	assert candidate([[1],[2],[3],[4],[5]]) == 5
	assert candidate([[1,2,3,4,5,6,7,8,9]]) == 45
	assert candidate([[1,5],[7,3],[3,5]]) == 10
	assert candidate([[1,2,3],[3,2,1]]) == 6
	assert candidate([[1,1,1,1,1,1],[2,2,2,2,2,2]]) == 12
	assert candidate([[1,2],[3,4],[5,6],[7,8],[9,10]]) == 19
def test_check():
	check(maximum_wealth)
# Metadata Difficulty: Easy
# Metadata Topics: array,matrix
# Metadata Coverage: 100
