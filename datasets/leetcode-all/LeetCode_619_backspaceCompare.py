def backspaceCompare(s: str, t: str) -> bool:
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
    i, j = len(s) - 1, len(t) - 1
    while True:
        back = 0
        while i >= 0 and (back > 0 or s[i] == '#'):
            back = back + 1 if s[i] == '#' else back - 1
            i -= 1
        back = 0
        while j >= 0 and (back > 0 or t[j] == '#'):
            back = back + 1 if t[j] == '#' else back - 1
            j -= 1
        if i >= 0 and j >= 0 and s[i] == t[j]:
            i, j = i - 1, j - 1
        else:
            return i == -1 and j == -1




### Unit tests below ###
def check(candidate):
	assert candidate("#", "#") == True
	assert candidate("a###bc#", "b###d#") == False
	assert candidate("a###b", "b###c") == False
	assert candidate("ab##", "c#d#") == True
	assert candidate("a###bcd", "bcd###a") == False
	assert candidate("a##b", "c##d") == False
	assert candidate("ab##c", "b##d") == False
	assert candidate("abc#", "abc#") == True
	assert candidate("abcd#", "abcd#") == True
	assert candidate("a#abc#", "ab#abc") == False
	assert candidate("abc######", "abc######") == True
	assert candidate("a#b#c#d", "d#e#f#g") == False
	assert candidate("abcd", "a#bcd") == False
	assert candidate("a#abc#d", "a#abc#d") == True
	assert candidate("a##c", "b##d") == False
	assert candidate("ab#c", "ab##c") == False
	assert candidate("a#####b", "c#####d") == False
	assert candidate("a#b#d", "c#d#e") == False
	assert candidate("ab#c#d", "ad#c#d") == True
	assert candidate("a#", "b#") == True
	assert candidate("a#b#d", "c#d##") == False
	assert candidate("a#bc#d", "a#bcd#") == False
	assert candidate("##abc#", "##def#") == False
	assert candidate("ab", "a#b") == False
	assert candidate("a###bcd", "a#b###") == False
	assert candidate("a#b#cd", "a#b#cd") == True
	assert candidate("ab#c", "ad#c") == True
	assert candidate("a#bcd#", "a#bcd#") == True
	assert candidate("a#b##c#", "d#e#f#") == True
	assert candidate("a#bcd#", "ab#c#d#") == False
	assert candidate("abcd##", "a#c#d##") == False
	assert candidate("ab#c##", "ad#c##") == True
	assert candidate("a##", "b##") == True
	assert candidate("a####b", "c####d") == False
	assert candidate("a#c", "b") == False
	assert candidate("a#b##c#", "d#e##f#") == True
	assert candidate("a#b#c", "d#e#f") == False
	assert candidate("a#b#c#", "d#e#f#") == True
	assert candidate("a#b", "a#c") == False
	assert candidate("ab##cd", "ab##cd") == True
	assert candidate("a#abc#", "a#ab#c") == False
	assert candidate("ab#cd####", "a#bcd####") == True
	assert candidate("a#abc", "ab#abc#") == False
	assert candidate("#####", "#####") == True
	assert candidate("abcd#", "abcd##") == False
	assert candidate("a#a#a#a", "b#b#b#b") == False
	assert candidate("#a#b#c", "#d#e#f") == False
	assert candidate("abcd####", "abcd####") == True
	assert candidate("abc###", "def###") == True
	assert candidate("a#abc#", "ab#abc#") == False
	assert candidate("#a#", "#a#") == True
	assert candidate("a#b#cd", "a#b#ef") == False
	assert candidate("ab#d", "ab#d") == True
	assert candidate("a#abc#", "a#cba#") == False
	assert candidate("a#abc", "a#abc#") == False
	assert candidate("a##c", "b##d#") == False
	assert candidate("a#c", "b#d") == False
	assert candidate("a####b#c", "b#c#d###") == False
	assert candidate("a#abc#", "a#b#c") == False
	assert candidate("ab#cd#", "ab#cd#") == True
	assert candidate("abcd##", "abcd##") == True
	assert candidate("a###", "b###") == True
	assert candidate("a##b##c", "d##e##f") == False
	assert candidate("a#abc#", "a#abc#d") == False
	assert candidate("ab#cd###", "a#bcd###") == True
	assert candidate("abc##d", "abc##d") == True
	assert candidate("ab#cd#", "a#bcd#") == False
	assert candidate("ab##c", "b##d#") == False
def test_check():
	check(backspaceCompare)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string,stack,simulation
# Metadata Coverage: 100
