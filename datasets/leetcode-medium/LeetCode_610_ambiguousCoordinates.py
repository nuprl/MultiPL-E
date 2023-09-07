from typing import List


def ambiguousCoordinates(s: str) -> List[str]:
    """
    We had some 2-dimensional coordinates, like "(1, 3)" or "(2, 0.5)". Then, we removed all commas, decimal points, and spaces and ended up with the string s.

    For example, "(1, 3)" becomes s = "(13)" and "(2, 0.5)" becomes s = "(205)".

    Return a list of strings representing all possibilities for what our original coordinates could have been.
    Our original representation never had extraneous zeroes, so we never started with numbers like "00", "0.0", "0.00", "1.0", "001", "00.01", or any other number that can be represented with fewer digits. Also, a decimal point within a number never occurs without at least one digit occurring before it, so we never started with numbers like ".1".
    The final answer list can be returned in any order. All coordinates in the final answer have exactly one space between them (occurring after the comma.)
 
    Example 1:

    Input: s = "(123)"
    Output: ["(1, 2.3)","(1, 23)","(1.2, 3)","(12, 3)"]

    Example 2:

    Input: s = "(0123)"
    Output: ["(0, 1.23)","(0, 12.3)","(0, 123)","(0.1, 2.3)","(0.1, 23)","(0.12, 3)"]
    Explanation: 0.0, 00, 0001 or 00.01 are not allowed.

    Example 3:

    Input: s = "(00011)"
    Output: ["(0, 0.011)","(0.001, 1)"]

 
    Constraints:

    4 <= s.length <= 12
    s[0] == '(' and s[s.length - 1] == ')'.
    The rest of s are digits.

    """
    ### Canonical solution below ###
    def generateNumber(s):
        if not s or (len(s) > 1 and s[0] == '0' and s[-1] == '0'):
            return []
        if len(s) > 1 and s[0] == '0':
            return ["0." + s[1:]]
        res = [s]
        if len(s) == 1 or s[-1] == '0':
            return res
        for i in range(1, len(s)):
            res.append(s[:i] + "." + s[i:])
        return res

    n = len(s)
    res = []

    for i in range(2, n - 1):
        first = generateNumber(s[1:i])
        second = generateNumber(s[i:n - 1])

        for f in first:
            for sec in second:
                res.append("(" + f + ", " + sec + ")")

    return res




### Unit tests below ###
def check(candidate):
	assert candidate("(0000)") == []
	assert candidate("(100)") == ["(10, 0)"]
	assert candidate(
    "(00011)") == ["(0, 0.011)", "(0.001, 1)"]
	assert candidate("(00011)") == ["(0, 0.011)", "(0.001, 1)"]
def test_check():
	check(ambiguousCoordinates)
# Metadata Difficulty: Medium
# Metadata Topics: string,backtracking
# Metadata Coverage: 100
