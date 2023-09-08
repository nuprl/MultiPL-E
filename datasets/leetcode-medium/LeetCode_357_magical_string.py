def magical_string(n: int) -> int:
    """
    A magical string s consists of only '1' and '2' and obeys the following rules:

    The string s is magical because concatenating the number of contiguous occurrences of characters '1' and '2' generates the string s itself.

    The first few elements of s is s = "1221121221221121122……". If we group the consecutive 1's and 2's in s, it will be "1 22 11 2 1 22 1 22 11 2 11 22 ......" and the occurrences of 1's or 2's in each group are "1 2 2 1 1 2 1 2 2 1 2 2 ......". You can see that the occurrence sequence is s itself.
    Given an integer n, return the number of 1's in the first n number in the magical string s.
 
    Example 1:

    Input: n = 6
    Output: 3
    Explanation: The first 6 elements of magical string s is "122112" and it contains three 1's, so return 3.

    Example 2:

    Input: n = 1
    Output: 1

 
    Constraints:

    1 <= n <= 105

    """
    ### Canonical solution below ###
    if n == 0:
        return 0
    if n <= 3:
        return 1

    magic = [1, 2, 2]
    count_ones = 1
    index = 2
    value = 1

    while len(magic) < n:
        for _ in range(magic[index]):
            magic.append(value)
            if value == 1 and len(magic) <= n:
                count_ones += 1
        value = 3 - value
        index += 1

    return count_ones




### Unit tests below ###
def check(candidate):
	assert candidate(2) == 1
	assert candidate(13) == 6
	assert candidate(3) == 1
	assert candidate(10) == 5
	assert candidate(9) == 4
	assert candidate(7) == 4
	assert candidate(35) == 18
	assert candidate(5) == 3
	assert candidate(8) == 4
	assert candidate(4) == 2
	assert candidate(11) == 5
	assert candidate(117) == 58
	assert candidate(0) == 0
	assert candidate(58) == 29
	assert candidate(6) == 3
	assert candidate(1) == 1
	assert candidate(12) == 5
def test_check():
	check(magical_string)
# Metadata Difficulty: Medium
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
