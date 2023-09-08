def minInteger(num: str, k: int) -> str:
    """
    You are given a string num representing the digits of a very large integer and an integer k. You are allowed to swap any two adjacent digits of the integer at most k times.
    Return the minimum integer you can obtain also as a string.
 
    Example 1:


    Input: num = "4321", k = 4
    Output: "1342"
    Explanation: The steps to obtain the minimum integer from 4321 with 4 adjacent swaps are shown.

    Example 2:

    Input: num = "100", k = 1
    Output: "010"
    Explanation: It's ok for the output to have leading zeros, but the input is guaranteed not to have any leading zeros.

    Example 3:

    Input: num = "36789", k = 1000
    Output: "36789"
    Explanation: We can keep the number without any swaps.

 
    Constraints:

    1 <= num.length <= 3 * 104
    num consists of only digits and does not contain leading zeros.
    1 <= k <= 109

    """
    ### Canonical solution below ###
    if k == 0:
        return num
    num = list(num)
    n = len(num)
    for i in range(n):
        idx = i
        for j in range(i + 1, n):
            if j - i > k:
                break
            if num[j] < num[idx]:
                idx = j
        min_digit = num[idx]
        for j in range(idx, i, -1):
            num[j] = num[j - 1]
        num[i] = min_digit
        k -= idx - i
    return ''.join(num)




### Unit tests below ###
def check(candidate):
	assert candidate("abcdefghijklm", 6) == "abcdefghijklm"
	assert candidate("36789", 1) == "36789"
	assert candidate("4321", 3) == "1432"
	assert candidate(
    "0001", 1
) == "0001", "Asserting that `0001` with 1 swap can remain as `0001`"
	assert candidate(
    "4321", 4
) == "1342", "Asserting that `4321` with 4 swaps can result in `1342`"
	assert candidate("100", 1) == "010"
	assert candidate("abcdefghijklm", 7) == "abcdefghijklm"
	assert candidate("4321", 1) == "3421"
	assert candidate("36789", 0) == "36789"
	assert candidate("abcdefghij", 4) == "abcdefghij"
	assert candidate("4321", 4) == "1342"
	assert candidate("36789", 1000) == "36789"
	assert candidate("1000", 0) == "1000"
	assert candidate(
    "36789", 1000
) == "36789", "Asserting that `36789` with 1000 swaps can remain as `36789`"
	assert candidate("2134", 2) == "1234"
	assert candidate("abcdefghij", 10) == "abcdefghij"
	assert candidate("1234567890", 0) == "1234567890"
	assert candidate("4321", 2) == "2431"
	assert candidate(
    "0001", 3
) == "0001", "Asserting that `0001` with 3 swap can remain as `0001`"
	assert candidate("hgfedcba", 0) == "hgfedcba"
	assert candidate("abcdefghijklm", 13) == "abcdefghijklm"
	assert candidate("100", 0) == "100"
	assert candidate("0001", 0) == "0001", "Asserting that `0001` with 0 swap can remain as `0001`"
	assert candidate("7654321", 1) == "6754321"
	assert candidate("abcdefghijklm", 0) == "abcdefghijklm"
	assert candidate("4321", 0) == "4321"
def test_check():
	check(minInteger)
# Metadata Difficulty: Hard
# Metadata Topics: string,greedy,binary-indexed-tree,segment-tree
# Metadata Coverage: 100
