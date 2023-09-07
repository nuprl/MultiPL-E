from typing import List


def find_words(words: List[str]) -> List[str]:
    """
    Given an array of strings words, return the words that can be typed using letters of the alphabet on only one row of American keyboard like the image below.
    In the American keyboard:

    the first row consists of the characters "qwertyuiop",
    the second row consists of the characters "asdfghjkl", and
    the third row consists of the characters "zxcvbnm".


 
    Example 1:

    Input: words = ["Hello","Alaska","Dad","Peace"]
    Output: ["Alaska","Dad"]

    Example 2:

    Input: words = ["omk"]
    Output: []

    Example 3:

    Input: words = ["adsdf","sfd"]
    Output: ["adsdf","sfd"]

 
    Constraints:

    1 <= words.length <= 20
    1 <= words[i].length <= 100
    words[i] consists of English letters (both lowercase and uppercase). 

    """
    ### Canonical solution below ###
    rows = [
        set("qwertyuiopQWERTYUIOP"),
        set("asdfghjklASDFGHJKL"),
        set("zxcvbnmZXCVBNM")
    ]
    res = []

    for word in words:
        row = -1
        for i in range(3):
            if word[0] in rows[i]:
                row = i
                break

        if all(c in rows[row] for c in word):
            res.append(word)

    return res




### Unit tests below ###
def check(candidate):
	assert candidate(["aSdfg","Adfg","Asdfg","asdfg"]) == ["aSdfg","Adfg","Asdfg","asdfg"]
	assert candidate(["mix", "of", "rows"]) == []
	assert candidate(["adsdf", "sfd"]) == ["adsdf", "sfd"]
	assert candidate(["omk"]) == []
	assert candidate(["QwErTy", "UiOp", "AsDfGhJkL", "ZxCvBnM"]) == ["QwErTy", "UiOp", "AsDfGhJkL", "ZxCvBnM"]
	assert candidate(["mNbvcxz"]) == ["mNbvcxz"]
	assert candidate(["aSdfg"]) == ["aSdfg"]
	assert candidate(["aSdfghjkL", "Qwerty"]) == ["aSdfghjkL", "Qwerty"]
	assert candidate(["Mnbvcxz"]) == ["Mnbvcxz"]
	assert candidate(["a", "b"]) == ["a", "b"]
	assert candidate(["Qwerty", "Uiop", "Asdfghjkl", "Zxcvbnm"]) == ["Qwerty", "Uiop", "Asdfghjkl", "Zxcvbnm"]
	assert candidate(["Hello", "Alaska", "Dad", "Peace"]) == ["Alaska", "Dad"]
	assert candidate(["adsdf","sfd","asdfghjkl","zxcvbnm"]) == ["adsdf","sfd","asdfghjkl","zxcvbnm"]
	assert candidate(["QWERTY", "UIOP", "ASDFGHJKL", "ZXCVBNM"]) == ["QWERTY", "UIOP", "ASDFGHJKL", "ZXCVBNM"]
	assert candidate(["adsFd"]) == ["adsFd"]
	assert candidate(["Adsdf"]) == ["Adsdf"]
	assert candidate(["qwerty", "uiop", "asdfghjkl", "zxcvbnm"]) == ["qwerty", "uiop", "asdfghjkl", "zxcvbnm"]
	assert candidate(["adsdf"]) == ["adsdf"]
	assert candidate(["aSdfg","Adfg","Asdfg"]) == ["aSdfg","Adfg","Asdfg"]
def test_check():
	check(find_words)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,string
# Metadata Coverage: 100
