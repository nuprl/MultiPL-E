def convert(s: str, numRows: int) -> str:
    """
    The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

    P   A   H   N
    A P L S I I G
    Y   I   R

    And then read line by line: "PAHNAPLSIIGYIR"
    Write the code that will take a string and make this conversion given a number of rows:

    string convert(string s, int numRows);

 
    Example 1:

    Input: s = "PAYPALISHIRING", numRows = 3
    Output: "PAHNAPLSIIGYIR"

    Example 2:

    Input: s = "PAYPALISHIRING", numRows = 4
    Output: "PINALSIGYAHRPI"
    Explanation:
    P     I    N
    A   L S  I G
    Y A   H R
    P     I

    Example 3:

    Input: s = "A", numRows = 1
    Output: "A"

 
    Constraints:

    1 <= s.length <= 1000
    s consists of English letters (lower-case and upper-case), ',' and '.'.
    1 <= numRows <= 1000

    """
    ### Canonical solution below ###
    if numRows == 1 or numRows >= len(s):
        return s

    rows = [""] * numRows
    curRow = 0
    goingDown = False

    for c in s:
        rows[curRow] += c
        if curRow == 0 or curRow == numRows - 1:
            goingDown = not goingDown
        curRow += 1 if goingDown else -1

    return "".join(rows)




### Unit tests below ###
def check(candidate):
	assert candidate("ABC", 1) == "ABC"
	assert candidate("ABCDEF", 2) == "ACEBDF"
	assert candidate("ABCD", 2) == "ACBD"
	assert candidate("ABC", 5) == "ABC"
	assert candidate("PAYPALISHIRING", 3) == "PAHNAPLSIIGYIR"
	assert candidate("", 5) == ""
	assert candidate("ABCD", 5) == "ABCD"
	assert candidate("ABCDEFGH", 2) == "ACEGBDFH"
	assert candidate("ABCDEFG", 2) == "ACEGBDF"
	assert candidate("PAYPALISHIRING", 4) == "PINALSIGYAHRPI"
	assert candidate("A", 5) == "A"
	assert candidate("AB", 1) == "AB"
	assert candidate("A", 1) == "A"
	assert candidate("ABC", 2) == "ACB"
	assert candidate("ABCDE", 5) == "ABCDE"
	assert candidate("AB", 5) == "AB"
	assert candidate("", 1) == ""
	assert candidate("ABCDEFGHIJK", 3) == "AEIBDFHJCGK"
	assert candidate("ABC", 4) == "ABC"
def test_check():
	check(convert)
# Metadata Difficulty: Medium
# Metadata Topics: string
# Metadata Coverage: 100
