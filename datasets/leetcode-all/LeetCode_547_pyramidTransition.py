from typing import List


def pyramidTransition(bottom: str, allowed: List[str]) -> bool:
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
    from collections import defaultdict

    def dfs(curr, bottom, mapping):
        if len(bottom) == 1:
            return True
        for i in range(len(bottom) - 1):
            if bottom[i:i+2] not in mapping:
                return False
        curr = "".join(mapping[bottom[i:i + 2]][0] for i in range(len(bottom) - 1))
        return dfs(curr, curr, mapping)
    mapping = defaultdict(list)
    for s in allowed:
        mapping[s[:2]].append(s[2])
    return dfs("", bottom, mapping)




### Unit tests below ###
def check(candidate):
	assert candidate("AAAA", ["AAB", "AAC", "BCD", "BBE", "DEF"]) == False
	assert candidate("ABC", ["ABD", "BCE", "DEF", "EEE"]) == True
	assert candidate("BCD", ["ABC", "BCD", "CDE", "DEF", "EFA", "FAB", "ABD", "BCE", "DEF", "EEE"]) == True
	assert candidate(
    "ABC",
    [
        "ADE",
        "ABF",
        "ABC",
        "ADF",
        "BCD",
        "CEF",
        "BDE",
        "BDF",
        "CDE",
        "CDF",
        "DEF",
        "ADA",
        "BAC",
        "BBA",
        "CEC",
        "BEB",
        "CBC",
        "DEE",
        "FFF",
    ],
) == False
	assert candidate(
    "ABC", ["BCC", "CDE", "CEA", "FFF", "ABD", "CDE", "CEA", "FFF", "AAA", "BBB", "CCC", "DDD", "EEE", "FFF", "FFF",
           "ABC", "EFA", "FAB", "DEF", "EEE", "AAA", "ABA", "BBB", "ABC", "EFA", "FAB", "DEF", "EEE", "AAA", "ABA",
           "BBB", "FFF", "FFF", "ABC", "EFA", "FAB", "DEF", "EEE"]) == False
	assert candidate(
    "AAAA",
    [
        "AAB",
        "AAC",
        "BCD",
        "BBE",
        "DEF",
    ],
) == False
	assert candidate("AAAA", ["AAB", "AAC", "AAA", "AAA", "AAB", "AAA", "AAA", "BAA"]) == False
	assert candidate(
    "ABC",
    [
        "BAC",
        "BCE",
        "CDE",
        "DEF",
        "EFA",
        "FFF",
    ],
) == False
	assert candidate("AAA", ["AAA", "AAB", "ABA", "ABB", "BAA"]) == True
	assert candidate("AAAB", ["AAA", "AAB", "ABA", "ABB", "BAA"]) == True
	assert candidate("ABBB", ["ABA", "BAB", "BBA", "BBB", "AAB", "ABB", "AAA"]) == True
	assert candidate("ABCDE", ["ABC", "BCD", "CDE", "DEF", "EFA", "FAB", "ABD", "BCE", "DEF", "EEE"]) == True
	assert candidate("ABCD", ["ABC", "BCD", "CDE", "DEF", "EFA", "FAB", "ABD", "BCE", "DEF", "EEE"]) == True
	assert candidate("BCD", ["BCC", "CDE", "CEA", "FFF"]) == True
	assert candidate(
    "BCD",
    [
        "BCC",
        "CDE",
        "CEA",
        "FFF",
    ],
) == True
	assert candidate("BCD", ["BCA", "CDE", "CEA", "FFF"]) == False
	assert candidate(
    "ABC",
    [
        "BCC",
        "CDE",
        "CEA",
        "FFF",
    ],
) == False
def test_check():
	check(pyramidTransition)
# Metadata Difficulty: Medium
# Metadata Topics: bit-manipulation,depth-first-search,breadth-first-search
# Metadata Coverage: 100
