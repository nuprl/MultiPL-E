def max_number_of_balloons(text: str) -> int:
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
    letter_count = [0] * 5
    for c in text:
        if c == 'b':
            letter_count[0] += 1
        if c == 'a':
            letter_count[1] += 1
        if c == 'l':
            letter_count[2] += 1
        if c == 'o':
            letter_count[3] += 1
        if c == 'n':
            letter_count[4] += 1
    letter_count[2] //= 2
    letter_count[3] //= 2
    return min(letter_count)




### Unit tests below ###
def check(candidate):
	assert candidate("bal") == 0
	assert candidate("lnlb") == 0
	assert candidate("llooonbll") == 0
	assert candidate("lllolnnlll") == 0
	assert candidate("nlll") == 0
	assert candidate("balloonballoonballoon") == 3
	assert candidate("balooballoon") == 1
	assert candidate("nllono") == 0
	assert candidate("nlool") == 0
	assert candidate("a") == 0
	assert candidate("lloob") == 0
	assert candidate("blln") == 0
	assert candidate("balon") == 0
	assert candidate("nlaeeb") == 0
	assert candidate("nlaebolko") == 1
	assert candidate("oool") == 0
	assert candidate("balo") == 0
	assert candidate("lloo") == 0
	assert candidate("lo") == 0
	assert candidate("b") == 0
	assert candidate("nnlll") == 0
	assert candidate("blnbln") == 0
	assert candidate("balloonballoonballoo") == 2
	assert candidate("balloonloo") == 1
	assert candidate("bll") == 0
	assert candidate("ooob") == 0
	assert candidate(
    "looonnbalballooomtiloonnloliildkkdkfkakf") == 2
	assert candidate("oo") == 0
	assert candidate("loonbalxballpooon") == 2
	assert candidate("looonnbaalllooon") == 1
	assert candidate("lllbb") == 0
	assert candidate("balbalbalbalbalbal") == 0
	assert candidate(
    "looonnbalxballnlooonblnlooonblnballnloonblnlooballoonloon") == 4
	assert candidate("looonbll") == 0
	assert candidate("balloo") == 0
	assert candidate("o") == 0
	assert candidate("lool") == 0
	assert candidate("ba") == 0
	assert candidate("baloonss") == 0
	assert candidate("lolol") == 0
	assert candidate("onlhbnlaenlk") == 0
	assert candidate("balbalbalbal") == 0
	assert candidate("nnlo") == 0
	assert candidate("looballoon") == 1
	assert candidate("baloonbaloonbaloon") == 1
	assert candidate("oonnn") == 0
	assert candidate("llooonbbll") == 0
	assert candidate("nloo") == 0
	assert candidate("lbbl") == 0
	assert candidate("lolnbll") == 0
	assert candidate("oonnbalxblxblnl") == 1
	assert candidate("onnballooblln") == 1
	assert candidate("looonn") == 0
	assert candidate("llooonnnbbbaallll") == 1
	assert candidate("l") == 0
	assert candidate("balloon") == 1
	assert candidate("oooballoob") == 0
	assert candidate("ballon") == 0
	assert candidate("nlaeb") == 0
	assert candidate("balloonnbaallloon") == 2
	assert candidate("baloon") == 0
	assert candidate("ballooballoon") == 1
	assert candidate("looballoob") == 0
	assert candidate("n") == 0
	assert candidate("llooonbln") == 0
	assert candidate("balbal") == 0
	assert candidate("ballo") == 0
	assert candidate("bbll") == 0
	assert candidate("oooonbblll") == 0
	assert candidate("loonbalxballpoon") == 2
	assert candidate("ballllloooon") == 1
	assert candidate("balloob") == 0
	assert candidate("") == 0
	assert candidate("balooob") == 0
	assert candidate("ballooon") == 1
	assert candidate("llonbballoon") == 1
	assert candidate("ooolloob") == 0
	assert candidate("oob") == 0
	assert candidate("onl") == 0
	assert candidate("leetcode") == 0
	assert candidate("onbll") == 0
	assert candidate("balooo") == 0
	assert candidate("oonnba") == 0
	assert candidate("llooonnn") == 0
	assert candidate("balloonlooon") == 1
def test_check():
	check(max_number_of_balloons)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string,counting
# Metadata Coverage: 100
