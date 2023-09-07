def reverseVowels(s: str) -> str:
    """
    Given a string s, reverse only all the vowels in the string and return it.
    The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.
 
    Example 1:
    Input: s = "hello"
    Output: "holle"
    Example 2:
    Input: s = "leetcode"
    Output: "leotcede"

 
    Constraints:

    1 <= s.length <= 3 * 105
    s consist of printable ASCII characters.

    """
    ### Canonical solution below ###
    vowels = set('aeiouAEIOU')
    s_list = list(s)
    i, j = 0, len(s) - 1
    while i < j:
        if s_list[i] not in vowels:
            i += 1
        elif s_list[j] not in vowels:
            j -= 1
        else:
            s_list[i], s_list[j] = s_list[j], s_list[i]
            i += 1
            j -= 1
    return ''.join(s_list)




### Unit tests below ###
def check(candidate):
	assert candidate(
    "bbb") == "bbb"
	assert candidate("Hello, World!") == "Hollo, Werld!"
	assert candidate("aeiouAEIOU") == "UOIEAuoiea"
	assert candidate("hello") == "holle"
	assert candidate("AEIOU") == "UOIEA"
	assert candidate(
    "AeI") == "IeA"
	assert candidate("AEIO") == "OIEA"
	assert candidate("aeiou") == "uoiea"
	assert candidate("a") == "a"
	assert candidate("AeIoU") == "UoIeA"
	assert candidate(
    "a") == "a"
	assert candidate("leetcode") == "leotcede"
	assert candidate("baa") == "baa"
	assert candidate(
    "AAAAA") == "AAAAA"
	assert candidate(
    "baobab") == "baobab"
	assert candidate("AEI") == "IEA"
	assert candidate(
    "bbbaa") == "bbbaa"
	assert candidate(
    "babab") == "babab"
	assert candidate("python") == "python"
	assert candidate("baaa") == "baaa"
	assert candidate("A") == "A"
	assert candidate("ae") == "ea"
	assert candidate("HELLO") == "HOLLE"
	assert candidate("bbbbb") == "bbbbb"
	assert candidate("EA") == "AE"
	assert candidate("aei") == "iea"
	assert candidate("aEiOu") == "uOiEa"
	assert candidate(
    "aA") == "Aa"
	assert candidate(
    "IU") == "UI"
	assert candidate(
    "I") == "I"
	assert candidate(
    "ab") == "ab"
	assert candidate("aeio") == "oiea"
	assert candidate("PYTHON") == "PYTHON"
def test_check():
	check(reverseVowels)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
