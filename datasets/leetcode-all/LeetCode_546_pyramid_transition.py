from typing import List


def pyramid_transition(bottom: str, allowed: List[str]) -> bool:
    """
    You are stacking blocks to form a pyramid. Each block has a color, which is represented by a single letter. Each row of blocks contains one less block than the row beneath it and is centered on top.
    To make the pyramid aesthetically pleasing, there are only specific triangular patterns that are allowed. A triangular pattern consists of a single block stacked on top of two blocks. The patterns are given as a list of three-letter strings allowed, where the first two characters of a pattern represent the left and right bottom blocks respectively, and the third character is the top block.

    For example, "ABC" represents a triangular pattern with a 'C' block stacked on top of an 'A' (left) and 'B' (right) block. Note that this is different from "BAC" where 'B' is on the left bottom and 'A' is on the right bottom.

    You start with a bottom row of blocks bottom, given as a single string, that you must use as the base of the pyramid.
    Given bottom and allowed, return true if you can build the pyramid all the way to the top such that every triangular pattern in the pyramid is in allowed, or false otherwise.
 
    Example 1:


    Input: bottom = "BCD", allowed = ["BCC","CDE","CEA","FFF"]
    Output: true
    Explanation: The allowed triangular patterns are shown on the right.
    Starting from the bottom (level 3), we can build "CE" on level 2 and then build "A" on level 1.
    There are three triangular patterns in the pyramid, which are "BCC", "CDE", and "CEA". All are allowed.

    Example 2:


    Input: bottom = "AAAA", allowed = ["AAB","AAC","BCD","BBE","DEF"]
    Output: false
    Explanation: The allowed triangular patterns are shown on the right.
    Starting from the bottom (level 4), there are multiple ways to build level 3, but trying all the possibilites, you will get always stuck before building level 1.

 
    Constraints:

    2 <= bottom.length <= 6
    0 <= allowed.length <= 216
    allowed[i].length == 3
    The letters in all input strings are from the set {'A', 'B', 'C', 'D', 'E', 'F'}.
    All the values of allowed are unique.

    """
    ### Canonical solution below ###
    def pyramid_transition_helper(bottom, top, idx, mapping):
        if len(bottom) == 1:
            return True
        if idx == len(bottom) - 1:
            return pyramid_transition_helper(top, "", 0, mapping)
        key = bottom[idx:idx + 2]
        if key not in mapping:
            return False
        for c in mapping[key]:
            if pyramid_transition_helper(bottom, top + c, idx + 1, mapping):
                return True
        return False
    mapping = {}
    for s in allowed:
        key = s[:2]
        if key not in mapping:
            mapping[key] = []
        mapping[key].append(s[2])
    return pyramid_transition_helper(bottom, "", 0, mapping)




### Unit tests below ###
def check(candidate):
	assert candidate("BCD", ["BCC", "CDE", "CEA", "FFF"]) == True
	assert candidate("AB", ["AAA", "AAB", "ABA", "ABB", "BAA"]) == True
	assert candidate("BCC", ["AAA", "AAB", "ABA", "ABC", "ABD", "BAA", "BAB", "BAC", "BCA", "BCD", "BDA", "DAC", "DCA"]) == False
	assert candidate("AB", ["AAA", "AAB", "BAA", "BAB", "BBA"]) == False
	assert candidate("AB", ["ABA", "BAB", "ABA", "BAB", "ABA"]) == True
	assert candidate("AAAA", ["AAB", "AAC", "BCD", "BBE", "DEF"]) == False
	assert candidate("ABCD", ["AAA", "AAB", "ABA", "ABC", "ABD", "BAA", "BAB", "BAC", "BCA", "BCD", "BDA", "DAC", "DCA"]) == False
	assert candidate("AB", ["AAA", "AAB", "ABA", "ABC", "ABD", "BAA", "BAB", "BAC", "BCA", "BCD", "BDA", "DAC", "DCA"]) == True
	assert candidate("AAB", ["AAA", "AAB", "ABA", "ABC", "ACC", "BCB"]) == True
	assert candidate("AB", ["AAA", "AAB", "ABA", "ABC", "ACC", "BCB"]) == True
	assert candidate("ABCDE", ["AAA", "AAB", "ABA", "ABC", "ACC", "BCB", "DEF"]) == False
	assert candidate("BCD", ["AAA", "AAB", "ABA", "ABC", "ACC", "BCB"]) == False
	assert candidate("AABA", ["AAA", "AAB", "ABA", "ABC", "ACC", "BCB"]) == False
	assert candidate("ABC", ["AAA", "AAB", "ABA", "ABC", "BAA", "BAB", "BAC", "BCA"]) == True
	assert candidate("DDD", ["AAA", "AAB", "ABA", "ABC", "ACC", "BCB"]) == False
	assert candidate("AAA", ["AAA", "AAB", "ABA", "ABC", "ACC", "BCB"]) == True
	assert candidate("ABCDE", ["AAA", "AAB", "ABA", "ABC", "ACC", "BCB"]) == False
	assert candidate("AAA", ["AAA"]) == True
	assert candidate("ABCD", ["AAA", "AAB", "ABA", "ABC", "ACC", "BCB"]) == False
	assert candidate("ABC", ["ABC", "BCD", "CDE", "DEA", "EAB"]) == True
	assert candidate("BBD", ["AAA", "AAB", "ABA", "ABC", "ABD", "BAA", "BAB", "BAC", "BCA", "BCD", "BDA", "DAC", "DCA"]) == False
	assert candidate("AA", ["AAA"]) == True
	assert candidate("BB", ["AAA", "AAB", "ABA", "ABC", "ABD", "BAA", "BAB", "BAC", "BCA", "BCD", "BDA", "DAC", "DCA"]) == False
	assert candidate("ABCD", ["AAA", "AAB", "ABA", "ABC", "ABD", "BAA", "BAB", "BCA", "BCD", "ACA", "ACB"]) == False
	assert candidate("AAAA", ["AAA"]) == True
def test_check():
	check(pyramid_transition)
# Metadata Difficulty: Medium
# Metadata Topics: bit-manipulation,depth-first-search,breadth-first-search
# Metadata Coverage: 100
