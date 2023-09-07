from typing import List, Union


def letterCasePermutation(s: Union[List[str], str]) -> List[str]:
    """
    Given a string s, you can transform every letter individually to be lowercase or uppercase to create another string.
    Return a list of all possible strings we could create. Return the output in any order.
 
    Example 1:

    Input: s = "a1b2"
    Output: ["a1b2","a1B2","A1b2","A1B2"]

    Example 2:

    Input: s = "3z4"
    Output: ["3z4","3Z4"]

 
    Constraints:

    1 <= s.length <= 12
    s consists of lowercase English letters, uppercase English letters, and digits.

    """
    ### Canonical solution below ###
    def backtrack(index):
        if index == len(s):
            result.append("".join(s))
            return
        backtrack(index + 1)
        if s[index].isalpha():
            s[index] = s[index].swapcase()
            backtrack(index + 1)
            s[index] = s[index].swapcase()

    result = []
    s = list(s)
    backtrack(0)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate("0") == ["0"]
	assert candidate("3z4") == ["3z4", "3Z4"]
	assert candidate("#789abc") == ['#789abc', '#789abC', '#789aBc', '#789aBC', '#789Abc', '#789AbC', '#789ABc', '#789ABC']
	assert candidate("") == ['']
	assert candidate("12345") == ["12345"]
	assert candidate("") == [""]
	assert candidate([""]) == [""]
	assert candidate(["0"]) == ["0"]
	assert candidate(["12345"]) == ["12345"]
	assert candidate("#4e3fe1") == ['#4e3fe1', '#4e3fE1', '#4e3Fe1', '#4e3FE1', '#4E3fe1', '#4E3fE1', '#4E3Fe1', '#4E3FE1']
	assert candidate("2534") == ['2534']
	assert candidate("a1b2") == ["a1b2", "a1B2", "A1b2", "A1B2"]
	assert candidate(["123"]) == ["123"]
def test_check():
	check(letterCasePermutation)
# Metadata Difficulty: Medium
# Metadata Topics: string,backtracking,bit-manipulation
# Metadata Coverage: 100
