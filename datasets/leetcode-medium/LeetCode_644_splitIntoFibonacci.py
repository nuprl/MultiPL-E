from typing import List


def splitIntoFibonacci(num: str) -> List[int]:
    """
    You are given a string of digits num, such as "123456579". We can split it into a Fibonacci-like sequence [123, 456, 579].
    Formally, a Fibonacci-like sequence is a list f of non-negative integers such that:

    0 <= f[i] < 231, (that is, each integer fits in a 32-bit signed integer type),
    f.length >= 3, and
    f[i] + f[i + 1] == f[i + 2] for all 0 <= i < f.length - 2.

    Note that when splitting the string into pieces, each piece must not have extra leading zeroes, except if the piece is the number 0 itself.
    Return any Fibonacci-like sequence split from num, or return [] if it cannot be done.
 
    Example 1:

    Input: num = "1101111"
    Output: [11,0,11,11]
    Explanation: The output [110, 1, 111] would also be accepted.

    Example 2:

    Input: num = "112358130"
    Output: []
    Explanation: The task is impossible.

    Example 3:

    Input: num = "0123"
    Output: []
    Explanation: Leading zeroes are not allowed, so "01", "2", "3" is not valid.

 
    Constraints:

    1 <= num.length <= 200
    num contains only digits.

    """
    ### Canonical solution below ###
    ans = []

    def backtrack(index, prev1, prev2):
        if index == len(num):
            return len(ans) >= 3
        curr = 0
        for i in range(index, len(num)):
            if i > index and num[index] == '0':
                break
            curr = curr * 10 + ord(num[i]) - ord('0')
            if curr > 2**31 - 1:
                break
            if len(ans) >= 2:
                if curr < prev1 + prev2:
                    continue
                elif curr > prev1 + prev2:
                    break
            ans.append(curr)
            if backtrack(i + 1, prev2, curr):
                return True
            ans.pop()
        return False

    backtrack(0, 0, 0)
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate("100100200") == [100,100,200]
	assert candidate("1011") == [1,0,1,1]
	assert candidate("539834657215398346785398346991079669377161950407626991734534318677529701785098211336528511") == []
	assert candidate("0123") == []
	assert candidate("12358") == [1,2,3,5,8]
	assert candidate("101") == [1,0,1]
	assert candidate("100200300") == [100,200,300]
	assert candidate("1101111") == [11,0,11,11]
	assert candidate("11235813") == [1,1,2,3,5,8,13]
	assert candidate("00000") == [0,0,0,0,0]
	assert candidate("101112131") == []
	assert candidate("5398346572153983467853983469910796693771619504076098190646959") == []
	assert candidate("123456579") == [123,456,579]
	assert candidate("123456789") == []
	assert candidate("100200300500800") == [100,200,300,500,800]
	assert candidate("100200300500") == [100,200,300,500]
	assert candidate("112358") == [1,1,2,3,5,8]
	assert candidate("112358130") == []
def test_check():
	check(splitIntoFibonacci)
# Metadata Difficulty: Medium
# Metadata Topics: string,backtracking
# Metadata Coverage: 100
