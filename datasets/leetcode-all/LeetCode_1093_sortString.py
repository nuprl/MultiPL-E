def sortString(s: str) -> str:
    """
    You are given a string s. Reorder the string using the following algorithm:

    Pick the smallest character from s and append it to the result.
    Pick the smallest character from s which is greater than the last appended character to the result and append it.
    Repeat step 2 until you cannot pick more characters.
    Pick the largest character from s and append it to the result.
    Pick the largest character from s which is smaller than the last appended character to the result and append it.
    Repeat step 5 until you cannot pick more characters.
    Repeat the steps from 1 to 6 until you pick all characters from s.

    In each step, If the smallest or the largest character appears more than once you can choose any occurrence and append it to the result.
    Return the result string after sorting s with this algorithm.
 
    Example 1:

    Input: s = "aaaabbbbcccc"
    Output: "abccbaabccba"
    Explanation: After steps 1, 2 and 3 of the first iteration, result = "abc"
    After steps 4, 5 and 6 of the first iteration, result = "abccba"
    First iteration is done. Now s = "aabbcc" and we go back to step 1
    After steps 1, 2 and 3 of the second iteration, result = "abccbaabc"
    After steps 4, 5 and 6 of the second iteration, result = "abccbaabccba"

    Example 2:

    Input: s = "rat"
    Output: "art"
    Explanation: The word "rat" becomes "art" after re-ordering it with the mentioned algorithm.

 
    Constraints:

    1 <= s.length <= 500
    s consists of only lowercase English letters.

    """
    ### Canonical solution below ###
    from collections import OrderedDict
    freq_map = OrderedDict(sorted({c: s.count(c) for c in set(s)}.items()))
    result = []

    while freq_map:
        for key in list(freq_map.keys()):
            result.append(key)
            freq_map[key] -= 1

            if freq_map[key] == 0:
                del freq_map[key]

        for key in list(reversed(freq_map.keys())):
            result.append(key)
            freq_map[key] -= 1

            if freq_map[key] == 0:
                del freq_map[key]

    return "".join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("python") == "hnopty"
	assert candidate("aaaaaa") == "aaaaaa"
	assert candidate("netflix") == "efilntx"
	assert candidate("cccccccccc") == "cccccccccc"
	assert candidate("apple") == "aelpp"
	assert candidate(
    "ccccccccccccccc") == "ccccccccccccccc"
	assert candidate(
    "cccccccccccccccccccc") == "cccccccccccccccccccc"
	assert candidate("leetcode") == "cdelotee"
	assert candidate("gf") == "fg"
	assert candidate("ccccccccccccc") == "ccccccccccccc"
	assert candidate("ccccccccc") == "ccccccccc"
	assert candidate("cccccc") == "cccccc"
	assert candidate("cccccccc") == "cccccccc"
	assert candidate(
    "bbbbbbbbbbbbbbbbbbbbb") == "bbbbbbbbbbbbbbbbbbbbb"
	assert candidate("cccccccccccc") == "cccccccccccc"
	assert candidate(
    "a") == "a"
	assert candidate("slack") == "ackls"
	assert candidate(
    "ggggggggggggggggggggggggggg") == "ggggggggggggggggggggggggggg"
	assert candidate(
    "aaa") == "aaa"
	assert candidate("rat") == "art"
	assert candidate(
    "cab") == "abc"
	assert candidate(
    "man") == "amn"
	assert candidate(
    "vvvvvvvvvvvvvvvvvvvv") == "vvvvvvvvvvvvvvvvvvvv"
	assert candidate(
    "iiiiiiiiiiiiiiiiiiiii") == "iiiiiiiiiiiiiiiiiiiii"
	assert candidate(
    "rat") == "art"
	assert candidate(
    "aa") == "aa"
	assert candidate("ccccccc") == "ccccccc"
	assert candidate("ccccccccccc") == "ccccccccccc"
def test_check():
	check(sortString)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string,counting
# Metadata Coverage: 100
