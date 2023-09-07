from typing import List


def find_different_binary_string(nums: List[str]) -> str:
    """
    Given an array of strings nums containing n unique binary strings each of length n, return a binary string of length n that does not appear in nums. If there are multiple answers, you may return any of them.
 
    Example 1:

    Input: nums = ["01","10"]
    Output: "11"
    Explanation: "11" does not appear in nums. "00" would also be correct.

    Example 2:

    Input: nums = ["00","01"]
    Output: "11"
    Explanation: "11" does not appear in nums. "10" would also be correct.

    Example 3:

    Input: nums = ["111","011","001"]
    Output: "101"
    Explanation: "101" does not appear in nums. "000", "010", "100", and "110" would also be correct.

 
    Constraints:

    n == nums.length
    1 <= n <= 16
    nums[i].length == n
    nums[i] is either '0' or '1'.
    All the strings of nums are unique.

    """
    ### Canonical solution below ###
    return "".join("1" if nums[i][i] == "0" else "0" for i in range(len(nums)))




### Unit tests below ###
def check(candidate):
	assert candidate(["000", "101", "001"]) == "110"
	assert candidate(["000", "000", "000"]) == "111"
	assert candidate(["101", "101", "101"]) == "010"
	assert candidate(["010", "010", "010"]) == "101"
	assert candidate(["000000", "111111", "000000", "111111", "000000", "111111"]) == "101010"
	assert candidate(["100", "100", "100"]) == "011"
	assert candidate(["111", "000", "100"]) == "011"
	assert candidate(["001", "110", "010"]) == "101"
	assert candidate(["001", "001", "001"]) == "110"
	assert candidate(["111", "111", "111"]) == "000"
	assert candidate(["010", "000", "101"]) == "110"
	assert candidate(["000", "011", "010"]) == "101"
	assert candidate(["111", "010", "101"]) == "000"
	assert candidate(["110", "011", "100"]) == "001"
	assert candidate(["010", "110", "000"]) == "101"
	assert candidate(["111111", "000000", "111111", "000000", "111111", "000000"]) == "010101"
	assert candidate(["011", "011", "011"]) == "100"
	assert candidate(["110", "110", "110"]) == "001"
def test_check():
	check(find_different_binary_string)
# Metadata Difficulty: Medium
# Metadata Topics: array,string,backtracking
# Metadata Coverage: 100
