def canReach(s: str, minJump: int, maxJump: int) -> bool:
    """
    You are given a 0-indexed binary string s and two integers minJump and maxJump. In the beginning, you are standing at index 0, which is equal to '0'. You can move from index i to index j if the following conditions are fulfilled:

    i + minJump <= j <= min(i + maxJump, s.length - 1), and
    s[j] == '0'.

    Return true if you can reach index s.length - 1 in s, or false otherwise.
 
    Example 1:

    Input: s = "011010", minJump = 2, maxJump = 3
    Output: true
    Explanation:
    In the first step, move from index 0 to index 3. 
    In the second step, move from index 3 to index 5.

    Example 2:

    Input: s = "01101110", minJump = 2, maxJump = 3
    Output: false

 
    Constraints:

    2 <= s.length <= 105
    s[i] is either '0' or '1'.
    s[0] == '0'
    1 <= minJump <= maxJump < s.length

    """
    ### Canonical solution below ###
    n = len(s)
    dp = [False] * n
    dp[0] = True
    pre = 0
    for i in range(1, n):
        if i >= minJump:
            pre += dp[i - minJump]
        if i > maxJump:
            pre -= dp[i - maxJump - 1]
        dp[i] = pre > 0 and s[i] == '0'
    return dp[n - 1]




### Unit tests below ###
def check(candidate):
	assert candidate("1100101", 2, 4) == False
	assert candidate("1010001", 2, 3) == False
	assert candidate("0101010", 1, 3) == True
	assert candidate("10101010", 1, 2) == True
	assert candidate("1001001", 3, 5) == False
	assert candidate("01101110", 2, 3) == False
	assert candidate("000000", 5, 3) == False
	assert candidate("00011011011101", 3, 4) == False
	assert candidate("010010", 2, 3) == True
	assert candidate(
    "110100001011100000", 3, 4) == False
	assert candidate("0000", 1, 2) == True
	assert candidate("1010101001", 4, 5) == False
	assert candidate("0", 1, 1) == True
	assert candidate("10", 1, 1) == True
	assert candidate("100010", 1, 2) == True
	assert candidate("0000000", 2, 3) == True
def test_check():
	check(canReach)
# Metadata Difficulty: Medium
# Metadata Topics: string,dynamic-programming,sliding-window,prefix-sum
# Metadata Coverage: 100
