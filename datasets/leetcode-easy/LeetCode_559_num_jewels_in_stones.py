def num_jewels_in_stones(jewels: str, stones: str) -> int:
    """
    You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.
    Letters are case sensitive, so "a" is considered a different type of stone from "A".
 
    Example 1:
    Input: jewels = "aA", stones = "aAAbbbb"
    Output: 3
    Example 2:
    Input: jewels = "z", stones = "ZZ"
    Output: 0

 
    Constraints:

    1 <= jewels.length, stones.length <= 50
    jewels and stones consist of only English letters.
    All the characters of jewels are unique.

    """
    ### Canonical solution below ###
    count = 0
    for stone in stones:
        if stone in jewels:
            count += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate("A", "Aa") == 1
	assert candidate("ab", "baab") == 4
	assert candidate("F", "FFFFFFFFF") == 9
	assert candidate("z", "ZZ") == 0
	assert candidate("f", "ffffffffffffff") == 14
	assert candidate("d", "ddddddddddddddd") == 15
	assert candidate("XY", "xyXY") == 2
	assert candidate("i", "iiiiiiiiiiiiiii") == 15
	assert candidate("pqrs", "PQRSTT") == 0
	assert candidate("abc", "abcdef") == 3
	assert candidate("PQRS", "pqrstt") == 0
	assert candidate("h", "hhhhhhhhhhhhhhh") == 15
	assert candidate("xYz", "XYZxyz") == 3
	assert candidate("aA", "aAAbbbb") == 3
	assert candidate("ab", "aaaabb") == 6
	assert candidate("xyz", "xyzzzyyx") == 8
	assert candidate("aA", "aAAaa") == 5
	assert candidate("ABC", "abc") == 0
	assert candidate("a", "Aa") == 1
	assert candidate("c", "ccccccccccccccc") == 15
	assert candidate("g", "ggggggggggggggg") == 15
	assert candidate("aA", "a") == 1
	assert candidate("b", "bbbbbbbbbbbbbbb") == 15
	assert candidate("a", "aaaaaaaaaaaaaaa") == 15
def test_check():
	check(num_jewels_in_stones)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
