def isLongPressedName(name: str, typed: str) -> bool:
    """
    Your friend is typing his name into a keyboard. Sometimes, when typing a character c, the key might get long pressed, and the character will be typed 1 or more times.
    You examine the typed characters of the keyboard. Return True if it is possible that it was your friends name, with some characters (possibly none) being long pressed.
 
    Example 1:

    Input: name = "alex", typed = "aaleex"
    Output: true
    Explanation: 'a' and 'e' in 'alex' were long pressed.

    Example 2:

    Input: name = "saeed", typed = "ssaaedd"
    Output: false
    Explanation: 'e' must have been pressed twice, but it was not in the typed output.

 
    Constraints:

    1 <= name.length, typed.length <= 1000
    name and typed consist of only lowercase English letters.

    """
    ### Canonical solution below ###
    i, j = 0, 0
    while j < len(typed):
        if i < len(name) and name[i] == typed[j]:
            i += 1
        elif j == 0 or typed[j] != typed[j - 1]:
            return False
        j += 1
    return i == len(name)




### Unit tests below ###
def check(candidate):
	assert candidate("cwksv", "ccwcwksv") == False
	assert candidate("yvqzznx", "yvvvqqzzzznnxxxx") == True
	assert candidate("yvqzznx", "yvvvqqzzzznnxxxz") == False
	assert candidate("hii", "hihi") == False
	assert candidate("wruoooosk", "wrroooosssskk") == False
	assert candidate("laiden", "laiden") == True
	assert candidate("sue", "suue") == True
	assert candidate("vtkgn", "vttkgnn") == True
	assert candidate("saeed", "ssaaedd") == False
	assert candidate("", "kksdakya") == False
	assert candidate("x", "y") == False
	assert candidate("yuyugi", "yuyugi") == True
	assert candidate("alex", "alexxr") == False
	assert candidate("db", "dbbbbbb") == True
	assert candidate("nwhlq", "nwhlq") == True
	assert candidate("y", "y") == True
	assert candidate("yyrz", "yyrrzz") == True
	assert candidate("yvqzznx", "yvvvqqzzzznnxxxxx") == True
	assert candidate("yqn", "yyqqnny") == False
	assert candidate(
    "vjtqslelaixoultizxklqwertyjusamovfthqlj",
    "vjtqslelaixoultizxklqwertyjusamovfthqlj",
) == True
	assert candidate("yvqzznx", "yvvvqqzzzznnxxxzx") == False
	assert candidate("x", "xx") == True
	assert candidate("yqn", "yyqqnn") == True
	assert candidate("alex", "alexxrr") == False
	assert candidate("leelee", "lleeelee") == True
	assert candidate("hello", "heeellooo") == True
	assert candidate("alex", "aaleex") == True
	assert candidate("zzv", "zzzzvv") == True
	assert candidate("s", "ssss") == True
	assert candidate("saeed", "ssaaeddd") == False
	assert candidate("alex", "aalleelxx") == False
	assert candidate("alex", "aaleelx") == False
	assert candidate("name", "naame") == True
	assert candidate("yy", "yyyyyyyyy") == True
	assert candidate("hejjj", "hejjj") == True
	assert candidate("yugi", "yuyugi") == False
	assert candidate("yyqn", "yyyqn") == True
	assert candidate("bignuzqfpvxqisidjjvcxyniwzkqzbx", "bignuzqfpvxqisidjjvcxyniwzkqzbx") == True
	assert candidate("kfz", "kfzzz") == True
	assert candidate("bignuzqfpvxqisidjjvcxyniwzkqzbx", "bignuzqfpvxqisidjjvcxyniwzkqzbxbbbb") == False
	assert candidate("y", "yy") == True
	assert candidate("tkvluzbvup", "vktvluzbvup") == False
def test_check():
	check(isLongPressedName)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
