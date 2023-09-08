def remove_occurrences(s: str, part: str) -> str:
    """
    Given two strings s and part, perform the following operation on s until all occurrences of the substring part are removed:

    Find the leftmost occurrence of the substring part and remove it from s.

    Return s after removing all occurrences of part.
    A substring is a contiguous sequence of characters in a string.
 
    Example 1:

    Input: s = "daabcbaabcbc", part = "abc"
    Output: "dab"
    Explanation: The following operations are done:
    - s = "daabcbaabcbc", remove "abc" starting at index 2, so s = "dabaabcbc".
    - s = "dabaabcbc", remove "abc" starting at index 4, so s = "dababc".
    - s = "dababc", remove "abc" starting at index 3, so s = "dab".
    Now s has no occurrences of "abc".

    Example 2:

    Input: s = "axxxxyyyyb", part = "xy"
    Output: "ab"
    Explanation: The following operations are done:
    - s = "axxxxyyyyb", remove "xy" starting at index 4 so s = "axxxyyyb".
    - s = "axxxyyyb", remove "xy" starting at index 3 so s = "axxyyb".
    - s = "axxyyb", remove "xy" starting at index 2 so s = "axyb".
    - s = "axyb", remove "xy" starting at index 1 so s = "ab".
    Now s has no occurrences of "xy".

 
    Constraints:

    1 <= s.length <= 1000
    1 <= part.length <= 1000
    s​​​​​​ and part consists of lowercase English letters.

    """
    ### Canonical solution below ###
    while part in s:
        s = s.replace(part, '', 1)
    return s




### Unit tests below ###
def check(candidate):
	assert candidate('watermelon', 'w') == 'atermelon'
	assert candidate('123123123', '123') == ''
	assert candidate('bananab', 'bananabab') == 'bananab'
	assert candidate('stringstring', 'ring') == 'stst'
	assert candidate('aaaaa', 'aa') == 'a'
	assert candidate('aaaaaaaaaaaaaaaa', 'aaaa') == ''
	assert candidate('111222333', '2') == '111333'
	assert candidate('a', 'aa') == 'a'
	assert candidate('orange', 'o') == 'range'
	assert candidate('cherry', 'c') == 'herry'
	assert candidate('asdfasdfasdf', 'asdf') == ''
	assert candidate('lemon', 'l') == 'emon'
	assert candidate('pineapple', 'p') == 'ineale'
	assert candidate(
    'codingcodingcodingcodingcodingcodingcoding', 'coding') == ''
	assert candidate('abcabcabc', 'abc') == ''
	assert candidate('daabcbaabcbc', 'abc') == 'dab'
	assert candidate('banana', 'b') == 'anana'
	assert candidate('bananab', 'banana') == 'b'
	assert candidate('axxxxyyyyb', 'xy') == 'ab'
	assert candidate('candidate', 'occurrences') == 'remove_'
	assert candidate('aaaaa', 'a') == ''
	assert candidate('aaa', 'aaaa') == 'aaa'
	assert candidate('mississippi', 'ssssss') == 'mississippi'
	assert candidate('bananab', 'ananaa') == 'bananab'
	assert candidate('bananab', 'bananab') == ''
	assert candidate('bananab', 'bananaa') == 'bananab'
	assert candidate('programming', 'programming') == ''
	assert candidate('aaa', 'aaaaaa') == 'aaa'
	assert candidate('grape', 'g') == 'rape'
	assert candidate('xyzxyzxyz', 'xyz') == ''
	assert candidate('hello world', 'l') == 'heo word'
	assert candidate('aaa', 'aaa') == ''
	assert candidate('abcdabcd', 'abcd') == ''
	assert candidate('strawberry', 's') == 'trawberry'
	assert candidate('apple', 'p') == 'ale'
	assert candidate('hello world', 'h') == 'ello world'
	assert candidate(
    'programmingprprogramming', 'programming') == 'pr'
	assert candidate('aaa', 'a') == ''
	assert candidate('aaaaaaaaaaaaaaaaa', 'aaaa') == 'a'
	assert candidate('aaaaaa', 'a') == ''
	assert candidate('a', 'a') == ''
	assert candidate('aaaaaaaaaaaaaaaaaaaa', 'aaaa') == ''
	assert candidate('aaaaaa', 'aa') == ''
	assert candidate('mississippi', 'mississippi') == ''
def test_check():
	check(remove_occurrences)
# Metadata Difficulty: Medium
# Metadata Topics: string
# Metadata Coverage: 100
