from typing import List


def maximumWealth(accounts: List[List[int]]) -> int:
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
    max_wealth = 0
    for customer in accounts:
        wealth = sum(customer)
        max_wealth = max(max_wealth, wealth)
    return max_wealth




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2,3,4,5],[6,7,8,9,10]]) == 40
	assert candidate([[1,2,3],[4,5,6],[7,8,9],[10,11,12]]) == 33
	assert candidate([[1,1,1],[2,2,2],[3,3,3]]) == 9
	assert candidate([[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]]) == 210
	assert candidate([[10,20,30,40],[50,60,70,80]]) == 260
	assert candidate([[1,1,1,1],[2,2,2,2],[3,3,3,3]]) == 12
	assert candidate([[1],[2],[3],[4],[5],[6],[7],[8],[9],[10]]) == 10
	assert candidate([[10],[20],[30],[40],[50],[60],[70],[80],[90],[100]]) == 100
	assert candidate([[1,2,3,4],[5,6,7,8],[9,10,11,12]]) == 42
	assert candidate([[1]]) == 1
	assert candidate([[10,20,30,40,50]]) == 150
	assert candidate([[1,2,3,4,5,6,7,8,9,10]]) == 55
	assert candidate([[2,8,7],[7,1,3],[1,9,5]]) == 17
	assert candidate([[100,200,300],[400,500,600]]) == 1500
	assert candidate([[1,5],[7,3],[3,5]]) == 10
	assert candidate([[1,2,3],[3,2,1]]) == 6
	assert candidate([[1,1,1,1,1,1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2],[3,3,3,3,3,3,3,3,3,3]]) == 30
def test_check():
	check(maximumWealth)
# Metadata Difficulty: Easy
# Metadata Topics: array,matrix
# Metadata Coverage: 100
