def title_to_number(column_title: str) -> int:
    """
    Given a string columnTitle that represents the column title as appears in an Excel sheet, return its corresponding column number.
    For example:

    A -> 1
    B -> 2
    C -> 3
    ...
    Z -> 26
    AA -> 27
    AB -> 28 
    ...

 
    Example 1:

    Input: columnTitle = "A"
    Output: 1

    Example 2:

    Input: columnTitle = "AB"
    Output: 28

    Example 3:

    Input: columnTitle = "ZY"
    Output: 701

 
    Constraints:

    1 <= columnTitle.length <= 7
    columnTitle consists only of uppercase English letters.
    columnTitle is in the range ["A", "FXSHRXW"].

    """
    ### Canonical solution below ###
    result = 0
    for c in column_title:
        result = result * 26 + (ord(c) - ord('A') + 1)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate("B") == 2
	assert candidate("AC") == 29
	assert candidate("ZZZ") == 18278
	assert candidate("BZ") == 78
	assert candidate("AZ") == 52
	assert candidate("AA") == 27
	assert candidate("AAB") == 704
	assert candidate("BA") == 53
	assert candidate(
    "FXSHRXW") == 2147483647, "This is the largest possible spreadsheet in Excel."
	assert candidate("ZY") == 701
	assert candidate("ZZ") == 702
	assert candidate(
    "XFD") == 16384
	assert candidate("AB") == 28
	assert candidate("Z") == 26
	assert candidate("ABA") == 729
	assert candidate("A") == 1
	assert candidate("FXSHRXW") == 2147483647
	assert candidate("C") == 3
	assert candidate("AAZ") == 728
	assert candidate(
    "FXSHRXW") == 2147483647
	assert candidate("AAA") == 703
def test_check():
	check(title_to_number)
# Metadata Difficulty: Easy
# Metadata Topics: math,string
# Metadata Coverage: 100
