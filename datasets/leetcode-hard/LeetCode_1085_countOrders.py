def countOrders(n: int) -> int:
    """
    Given n orders, each order consist in pickup and delivery services. 
    Count all valid pickup/delivery possible sequences such that delivery(i) is always after of pickup(i). 
    Since the answer may be too large, return it modulo 10^9 + 7.
 
    Example 1:

    Input: n = 1
    Output: 1
    Explanation: Unique order (P1, D1), Delivery 1 always is after of Pickup 1.

    Example 2:

    Input: n = 2
    Output: 6
    Explanation: All possible orders: 
    (P1,P2,D1,D2), (P1,P2,D2,D1), (P1,D1,P2,D2), (P2,P1,D1,D2), (P2,P1,D2,D1) and (P2,D2,P1,D1).
    This is an invalid order (P1,D2,P2,D1) because Pickup 2 is after of Delivery 2.

    Example 3:

    Input: n = 3
    Output: 90

 
    Constraints:

    1 <= n <= 500

    """
    ### Canonical solution below ###
    MOD = 10**9 + 7
    ans = 1
    for i in range(1, n + 1):
        ans = ans * (2 * i - 1) * i % MOD
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate(6) == 7484400
	assert candidate(3) == 90
	assert candidate(7) == 681080400
	assert candidate(1) == 1
	assert candidate(5) == 113400
	assert candidate(4) == 2520
	assert candidate(2) == 6
def test_check():
	check(countOrders)
# Metadata Difficulty: Hard
# Metadata Topics: math,dynamic-programming,combinatorics
# Metadata Coverage: 100
