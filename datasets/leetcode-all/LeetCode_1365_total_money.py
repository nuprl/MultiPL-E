def total_money(n: int) -> int:
    """
    Hercy wants to save money for his first car. He puts money in the Leetcode bank every day.
    He starts by putting in $1 on Monday, the first day. Every day from Tuesday to Sunday, he will put in $1 more than the day before. On every subsequent Monday, he will put in $1 more than the previous Monday. 
    Given n, return the total amount of money he will have in the Leetcode bank at the end of the nth day.
 
    Example 1:

    Input: n = 4
    Output: 10
    Explanation: After the 4th day, the total is 1 + 2 + 3 + 4 = 10.

    Example 2:

    Input: n = 10
    Output: 37
    Explanation: After the 10th day, the total is (1 + 2 + 3 + 4 + 5 + 6 + 7) + (2 + 3 + 4) = 37. Notice that on the 2nd Monday, Hercy only puts in $2.

    Example 3:

    Input: n = 20
    Output: 96
    Explanation: After the 20th day, the total is (1 + 2 + 3 + 4 + 5 + 6 + 7) + (2 + 3 + 4 + 5 + 6 + 7 + 8) + (3 + 4 + 5 + 6 + 7 + 8) = 96.

 
    Constraints:

    1 <= n <= 1000

    """
    ### Canonical solution below ###
    weeks = n // 7
    days_remaining = n % 7
    return 28 * weeks + 7 * weeks * (weeks - 1) // 2 + (weeks + 1) * days_remaining + days_remaining * (days_remaining - 1) // 2




### Unit tests below ###
def check(candidate):
	assert candidate(4) == 10
	assert candidate(20) == 96
	assert candidate(6) == 21
	assert candidate(2) == 3
	assert candidate(7) == 28
	assert candidate(5) == 15
	assert candidate(10) == 37
	assert candidate(3) == 6
	assert candidate(1) == 1
def test_check():
	check(total_money)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100
