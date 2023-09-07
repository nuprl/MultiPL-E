def maxNumberOfBalloons(text: str) -> int:
    """
    Given a string text, you want to use the characters of text to form as many instances of the word "balloon" as possible.
    You can use each character in text at most once. Return the maximum number of instances that can be formed.
 
    Example 1:


    Input: text = "nlaebolko"
    Output: 1

    Example 2:


    Input: text = "loonbalxballpoon"
    Output: 2

    Example 3:

    Input: text = "leetcode"
    Output: 0

 
    Constraints:

    1 <= text.length <= 104
    text consists of lower case English letters only.

    """
    ### Canonical solution below ###
    freqs = [0] * 26
    for c in text:
        freqs[ord(c) - ord('a')] += 1
    subs = [freqs[ord('b') - ord('a')], freqs[ord('a') - ord('a')], freqs[ord('l') - ord('a')] // 2, freqs[ord('o') - ord('a')] // 2, freqs[ord('n') - ord('a')]]
    return min(subs)




### Unit tests below ###
def check(candidate):
	assert candidate(
    "llooonnnbbllaaalaallooonnnbbllaaalaa") == 3
	assert candidate(
    "nnlobregxrkjii") == 0, "Your function failed on {'input': 'nnlobregxrkjii', 'expected': 0, 'actual': 0}"
	assert candidate("nnnloonbalxballpoon") == 2
	assert candidate("baaaallllllllooooooonn") == 1
	assert candidate("nbla") == 0
	assert candidate("bbblllnnnn") == 0
	assert candidate("baoln") == 0
	assert candidate("balloonbaloonballo") == 2
	assert candidate("nnnnloonbalxballpoon") == 2
	assert candidate("") == 0
	assert candidate("balloon") == 1
	assert candidate("nloonbalxballpoon") == 2
	assert candidate("blllooon") == 0
	assert candidate(
    "nlaebolko") == 1, "Your function failed on {'input': 'nlaebolko', 'expected': 1, 'actual': 0}"
	assert candidate("nlooonnllll") == 0
	assert candidate("balloonloooballoonball") == 2
	assert candidate("nnnnnnnnnnnnnloonbalxballpoon") == 2
	assert candidate("nnnnnnnnnloonbalxballpoon") == 2
	assert candidate("nnnba") == 0
	assert candidate("nnnnnnnnnnnnloonbalxballpoon") == 2
	assert candidate("balloonballoonballoonballoo") == 3
	assert candidate("nnnnnloonbalxballpoon") == 2
	assert candidate("nnnnnnnnloonbalxballpoon") == 2
	assert candidate("loonbalxballpoon") == 2
	assert candidate(
    "leetcode") == 0, "Your function failed on {'input': 'leetcode', 'expected': 0, 'actual': 0}"
	assert candidate("nnnnnnnnnnnloonbalxballpoon") == 2
	assert candidate("leetcode") == 0
	assert candidate("nnnnnnloonbalxballpoon") == 2
	assert candidate("blllooonnll") == 0
	assert candidate(
    "lnnxbdbllnkf") == 0, "Your function failed on {'input': 'lnnxbdbllnkf', 'expected': 0, 'actual': 0}"
	assert candidate("nooonnlll") == 0
	assert candidate("nl") == 0
	assert candidate("nnnnnnnnnnloonbalxballpoon") == 2
	assert candidate(
    "loonbalxballpoon") == 2, "Your function failed on {'input': 'loonbalxballpoon', 'expected': 2, 'actual': 0}"
	assert candidate(
    "nlaebbbllllooonbaln") == 1
	assert candidate("nnba") == 0
	assert candidate("bal") == 0
	assert candidate("baaaalllllllloooo") == 0
	assert candidate("balloonballoonballoonball") == 3
	assert candidate("nlaebolko") == 1
	assert candidate("balloonballoonbaloon") == 2
	assert candidate("nnloonbalxballpoon") == 2
	assert candidate("nnnnnnnloonbalxballpoon") == 2
	assert candidate("nnnbal") == 0
	assert candidate(
    "leetcode") == 0
	assert candidate("ballon") == 0
	assert candidate(
    "loonbalxballpoon") == 2
	assert candidate("balloonballoonballoon") == 3
def test_check():
	check(maxNumberOfBalloons)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string,counting
# Metadata Coverage: 100
