def halves_are_alike(s: str) -> bool:
    """
    You are given a string s of even length. Split this string into two halves of equal lengths, and let a be the first half and b be the second half.
    Two strings are alike if they have the same number of vowels ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'). Notice that s contains uppercase and lowercase letters.
    Return true if a and b are alike. Otherwise, return false.
 
    Example 1:

    Input: s = "book"
    Output: true
    Explanation: a = "bo" and b = "ok". a has 1 vowel and b has 1 vowel. Therefore, they are alike.

    Example 2:

    Input: s = "textbook"
    Output: false
    Explanation: a = "text" and b = "book". a has 1 vowel whereas b has 2. Therefore, they are not alike.
    Notice that the vowel o is counted twice.

 
    Constraints:

    2 <= s.length <= 1000
    s.length is even.
    s consists of uppercase and lowercase letters.

    """
    ### Canonical solution below ###
    half_length = len(s) // 2
    count_a, count_b = 0, 0

    for i in range(half_length):
        if s[i] in "aeiouAEIOU":
            count_a += 1

    for i in range(half_length, len(s)):
        if s[i] in "aeiouAEIOU":
            count_b += 1

    return count_a == count_b




### Unit tests below ###
def check(candidate):
	assert candidate("HereIsAnotherTest") == False
	assert candidate("AAAAAA") == True
	assert candidate("HereIsAnotherTestHereIsAnotherTest") == True
	assert candidate("textbook") == False
	assert candidate("AaEeIiOoUu") == True
	assert candidate("Christmas") == True
	assert candidate(
    "ThisIsATestThisIsATestThisIsATestThisIsATestThisIsATestThisIsATestThisIsATestThisIsATest") == True
	assert candidate("Aa") == True
	assert candidate("ThisIsATestThisIsATest") == True
	assert candidate("AEIOU") == False
	assert candidate("aeIOUAeiou") == True
	assert candidate("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") == True
	assert candidate("Merry") == False
	assert candidate("AaaaAA") == True
	assert candidate("Ab") == False
	assert candidate(
    "WoHoWoHoWoHoWoHoWoHoWooohohoohoohoohohoho"
) == False, "Extra checks for the bonus part"
	assert candidate("abcdefghijklmnopqrstuvwxyz") == False
	assert candidate("aeiou") == False
	assert candidate("abcdefghijklmnopqrstuvwxyzz") == False
	assert candidate("QWERTYUIOP") == False
	assert candidate("ABCDEFGHIJKLMNOPQRSTUVWXYZ") == False
	assert candidate("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZaefghZjklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") == False
	assert candidate(
    "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ") == False
	assert candidate("lowercase") == True
	assert candidate("book") == True
	assert candidate("Textbook") == False
	assert candidate("AaAaAaAaAaAaAaAaAaAaAaAaAaAaAaa") == False
	assert candidate("AaAaAaAaAaAaAaAaAaAaAaAaAaAaAa") == True
	assert candidate("aeiouAEIOU") == True
	assert candidate(
    "WoHoWoHoWoHoWoHoWoHoWoHoWoHoWoHoWoHoWoHo"
) == True, "Extra checks for the bonus part"
	assert candidate("qwertyUIOP") == False
	assert candidate("AaEeIiOoUuAaEeIiOoUu") == True
	assert candidate("AaaaaAAAAa") == True
def test_check():
	check(halves_are_alike)
# Metadata Difficulty: Easy
# Metadata Topics: string,counting
# Metadata Coverage: 100
