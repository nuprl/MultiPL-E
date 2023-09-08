def backspace_compare(s: str, t: str) -> bool:
    """
    Given two strings s and t, return true if they are equal when both are typed into empty text editors. '#' means a backspace character.
    Note that after backspacing an empty text, the text will continue empty.
 
    Example 1:

    Input: s = "ab#c", t = "ad#c"
    Output: true
    Explanation: Both s and t become "ac".

    Example 2:

    Input: s = "ab##", t = "c#d#"
    Output: true
    Explanation: Both s and t become "".

    Example 3:

    Input: s = "a#c", t = "b"
    Output: false
    Explanation: s becomes "c" while t becomes "b".

 
    Constraints:

    1 <= s.length, t.length <= 200
    s and t only contain lowercase letters and '#' characters.

 
    Follow up: Can you solve it in O(n) time and O(1) space?
    """
    ### Canonical solution below ###
    def process_backspaces(string):
        stack = []
        for c in string:
            if c != '#':
                stack.append(c)
            elif stack:
                stack.pop()
        return stack

    return process_backspaces(s) == process_backspaces(t)




### Unit tests below ###
def check(candidate):
	assert candidate("ab##", "c#d#") == True
	assert candidate("a###c", "#c") == True
	assert candidate("#", "a") == False
	assert candidate("abc##de###", "") == True
	assert candidate("abc###bb", "abc###bbc#") == True
	assert candidate("ab##", "c") == False
	assert candidate("abc##def##g###", "") == True
	assert candidate("aaa###a", "aaaa###a") == False
	assert candidate("a#b", "c#d") == False
	assert candidate("a#bc", "b") == False
	assert candidate("g##dq#e", "gd") == False
	assert candidate("a#bc", "d") == False
	assert candidate("#a", "a") == True
	assert candidate("a###", "#") == True
	assert candidate("a#b##c", "a#b#c") == True
	assert candidate("ab#", "c") == False
	assert candidate("a#b", "c#d#") == False
	assert candidate("a#b", "a#b") == True
	assert candidate("##a#b", "a#b") == True
	assert candidate("b####", "") == True
	assert candidate("ab#c", "ad#c") == True
	assert candidate("abc##def##g#####", "") == True
	assert candidate("y#fo##f", "y#fx#o##f") == True
	assert candidate("abc##def##gh####", "") == True
	assert candidate("bbbextm", "bbb#extm") == False
	assert candidate("ab##", "cd##") == True
	assert candidate("###", "") == True
	assert candidate("ab#", "c#d#") == False
	assert candidate("", "") == True
	assert candidate("y#fo##f", "y#fo##f") == True
	assert candidate("##", "") == True
	assert candidate(
    "a#b#c", "a#b#c") == True
	assert candidate(
    "a#b#c",
    "a###") == False
	assert candidate("a##c", "#a#c") == True
	assert candidate("a#c", "b") == False
	assert candidate("a#b", "c") == False
	assert candidate("a#b#c#d#e#", "e#d#c#b#a#") == True
	assert candidate("#", "") == True
	assert candidate("ab#", "cd#") == False
	assert candidate("a#####", "") == True
	assert candidate(
    "ap#p#pc#pp#p##c", "ap#ppp#pc#pp#p##c"
) == False
	assert candidate("a##c", "b") == False
	assert candidate(
    "abc#####def###gh###", "abc#def###gh#") == False
	assert candidate("##", "#") == True
	assert candidate("bxo#j##", "bxj###o##") == False
	assert candidate("a##c", "d#e#") == False
	assert candidate("bxj##tw", "bxj###tw") == False
	assert candidate("y#fo##f", "y#f#o##f") == True
	assert candidate("a####", "") == True
	assert candidate("y#f#i#f", "y#f#i##f") == True
	assert candidate("abc##def##g####", "") == True
	assert candidate("abc##de#", "d") == False
	assert candidate("vz#w", "w#") == False
	assert candidate("a#b#c", "a#b#d") == False
	assert candidate("abc##def##g######", "") == True
	assert candidate("bxj##tw", "bxj##tw") == True
def test_check():
	check(backspace_compare)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string,stack,simulation
# Metadata Coverage: 100
