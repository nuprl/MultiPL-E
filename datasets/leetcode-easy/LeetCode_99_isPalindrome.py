def isPalindrome(s: str) -> bool:
    """
    A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
    Given a string s, return true if it is a palindrome, or false otherwise.
 
    Example 1:

    Input: s = "A man, a plan, a canal: Panama"
    Output: true
    Explanation: "amanaplanacanalpanama" is a palindrome.

    Example 2:

    Input: s = "race a car"
    Output: false
    Explanation: "raceacar" is not a palindrome.

    Example 3:

    Input: s = " "
    Output: true
    Explanation: s is an empty string "" after removing non-alphanumeric characters.
    Since an empty string reads the same forward and backward, it is a palindrome.

 
    Constraints:

    1 <= s.length <= 2 * 105
    s consists only of printable ASCII characters.

    """
    ### Canonical solution below ###
    cleaned = "".join(c.lower() for c in s if c.isalnum())
    left, right = 0, len(cleaned) - 1
    while left < right:
        if cleaned[left] != cleaned[right]:
            return False
        left += 1
        right -= 1
    return True




### Unit tests below ###
def check(candidate):
	assert candidate("Civic duty is what I live for.") == False
	assert candidate("Doc, note: I dissent. A fast never prevents a fatness. I diet on cod.") == True
	assert candidate("Satan, oscillate my metallic sonatas.") == True
	assert candidate("Able was I, ere I saw Elba!") == True
	assert candidate("Redraw was I ere I saw warder.") == True
	assert candidate("No, it is not a palindrome. Nope.") == False
	assert candidate("Gallahad, a knight of Arthur, had one sad day.") == False
	assert candidate("123421") == False
	assert candidate("I roam under it as a tired Noe.") == False
	assert candidate("Redder") == True
	assert candidate("Rise to vote, sir.") == True
	assert candidate("0P") == False
	assert candidate("Redder, sir!") == False
	assert candidate("a") == True
	assert candidate("Rats live on no evil star.") == True
	assert candidate("I am itchy to do that.") == False
	assert candidate("No, an angel came to visit me. It was an ala!") == False
	assert candidate("Am I mad? No, I'm mad.") == False
	assert candidate("Redder than redder?") == False
	assert candidate("  ") == True
	assert candidate("racecar") == True
	assert candidate("Eva, can I stab bats in a cave?") == True
	assert candidate("Sir, I demand, I am a maid named Iris.") == True
	assert candidate("Otto") == True
	assert candidate("Red roses run no risk, sir, on Nurse's order.") == True
	assert candidate("Don't I act so tacit now?") == False
	assert candidate("???????") == True
	assert candidate(" ") == True
	assert candidate("main") == False
	assert candidate("mom") == True
	assert candidate("Red roses") == False
	assert candidate("A") == True
	assert candidate("Ma is a nun, as I am.") == True
	assert candidate("Am I mad, or am I mad?") == False
	assert candidate("Madam, in Eden, I'm madam.") == False
	assert candidate(
    "Satan, oscillate my metallic sonatas.") == True
	assert candidate("Eva, can I stack Rod's sad-ass, dork cats in a cave?") == True
	assert candidate(
    "A man, a plan, a canal: Panama!") == True
	assert candidate("noon") == True
	assert candidate("Eva, can I see bees in a cave?") == True
	assert candidate("ab") == False
	assert candidate("race a car") == False
	assert candidate("A man, a plan, a cat, a ham, a yak, a yam, a hat, a canal-Panama!") == True
	assert candidate("Desserts I stressed.") == True
	assert candidate("level") == True
	assert candidate("No more Mr. Nice Guy") == False
	assert candidate("") == True
	assert candidate("Civic duty, I'm bad.") == False
	assert candidate("Was it a car or a cat I saw?") == True
	assert candidate("No, it is not a palindrome.") == False
	assert candidate("Madam, in Eden, I'm Adam") == True
	assert candidate("Dammit, I'm mad!") == True
	assert candidate("Nope") == False
	assert candidate("aba") == True
	assert candidate("Alice") == False
	assert candidate("123321") == True
	assert candidate("A man, a plan, a canal, Panama.") == True
	assert candidate("Noa had, a man named Omar.") == False
	assert candidate("Don't nod") == True
	assert candidate("Able was I ere I saw Elba.") == True
	assert candidate("????????????????") == True
	assert candidate(
    "Eat a cup of coffee, a tea cup, too. Did you know, tea cups, coffee mugs, and flags of all countries, too, have the same shape?!") == False
	assert candidate("This is not a palindrome.") == False
	assert candidate(
    "A man, a plan, a canal, Panama!") == True
	assert candidate("A man, a plan, a canal: Panama. Nope.") == False
	assert candidate("H") == True
	assert candidate("Redder than red, sir.") == False
	assert candidate("Panama! I am in Panama.") == False
	assert candidate("This is my nifty hand.") == False
	assert candidate("A man, a plan, a canal: Panama") == True
	assert candidate("Eyeball") == False
	assert candidate("Was it Eliot's toilet I saw?") == True
	assert candidate("Never odd or even.") == True
	assert candidate("I was itching to do that.") == False
	assert candidate("12344321") == True
	assert candidate("saippuakivikauppias") == True
	assert candidate("Hello") == False
	assert candidate("Was it a car or a cat I saw") == True
	assert candidate("Murder for a jar of red rum.") == True
	assert candidate("Lisa Bonet ate no basil") == True
	assert candidate("I am tired.") == False
	assert candidate("Am I not a seal?") == False
	assert candidate("????") == True
	assert candidate("No lemon, no melon") == True
	assert candidate("Yo, Banana Boy!") == True
	assert candidate("!@#$%^&*()_-=+|/.,<>?[]{}") == True
	assert candidate("?!?") == True
	assert candidate("12321") == True
	assert candidate("123454321") == True
	assert candidate("Race, a car!") == False
	assert candidate("I roamed under it as a tired nude Maori.") == True
	assert candidate("no") == False
	assert candidate("Able was I ere I saw Elba") == True
	assert candidate("redder") == True
	assert candidate("No lemon, no melon.") == True
	assert candidate("A man, a plan, a canal, Panama!") == True
def test_check():
	check(isPalindrome)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
