def removeAlmostEqualCharacters(word: str) -> int:
    """
    You are given a 0-indexed string word.
    In one operation, you can pick any index i of word and change word[i] to any lowercase English letter.
    Return the minimum number of operations needed to remove all adjacent almost-equal characters from word.
    Two characters a and b are almost-equal if a == b or a and b are adjacent in the alphabet.
    
    Example 1:
    
    Input: word = "aaaaa"
    Output: 2
    Explanation: We can change word into "acaca" which does not have any adjacent almost-equal characters.
    It can be shown that the minimum number of operations needed to remove all adjacent almost-equal characters from word is 2.
    
    Example 2:
    
    Input: word = "abddez"
    Output: 2
    Explanation: We can change word into "ybdoez" which does not have any adjacent almost-equal characters.
    It can be shown that the minimum number of operations needed to remove all adjacent almost-equal characters from word is 2.
    Example 3:
    
    Input: word = "zyxyxyz"
    Output: 3
    Explanation: We can change word into "zaxaxaz" which does not have any adjacent almost-equal characters. 
    It can be shown that the minimum number of operations needed to remove all adjacent almost-equal characters from word is 3.
    
    
    Constraints:
    
    1 <= word.length <= 100
    word consists only of lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(aaaaa) == 2
    assert candidate(abddez) == 2
    assert candidate(zyxyxyz) == 3
    assert candidate(a) == 0
    assert candidate(b) == 0
    assert candidate(c) == 0
    assert candidate(aa) == 1
    assert candidate(ab) == 1
    assert candidate(ac) == 0
    assert candidate(ba) == 1
    assert candidate(bb) == 1
    assert candidate(bc) == 1
    assert candidate(ca) == 0
    assert candidate(cb) == 1
    assert candidate(cc) == 1
    assert candidate(aaa) == 1
    assert candidate(aab) == 1
    assert candidate(aac) == 1
    assert candidate(aba) == 1
    assert candidate(abb) == 1
    assert candidate(abc) == 1
    assert candidate(aca) == 0
    assert candidate(acb) == 1
    assert candidate(acc) == 1
    assert candidate(baa) == 1
    assert candidate(bab) == 1
    assert candidate(bac) == 1
    assert candidate(bba) == 1
    assert candidate(bbb) == 1
    assert candidate(bbc) == 1
    assert candidate(bca) == 1
    assert candidate(bcb) == 1
    assert candidate(bcc) == 1
    assert candidate(caa) == 1
    assert candidate(cab) == 1
    assert candidate(cac) == 0
    assert candidate(cba) == 1
    assert candidate(cbb) == 1
    assert candidate(cbc) == 1
    assert candidate(cca) == 1
    assert candidate(ccb) == 1
    assert candidate(ccc) == 1
    assert candidate(aaaa) == 2
    assert candidate(aaab) == 2
    assert candidate(aaac) == 1
    assert candidate(aaba) == 2
    assert candidate(aabb) == 2
    assert candidate(aabc) == 2
    assert candidate(aaca) == 1
    assert candidate(aacb) == 2
    assert candidate(aacc) == 2
    assert candidate(abaa) == 2
    assert candidate(abab) == 2
    assert candidate(abac) == 1
    assert candidate(abba) == 2
    assert candidate(abbb) == 2
    assert candidate(abbc) == 2
    assert candidate(abca) == 1
    assert candidate(abcb) == 2
    assert candidate(abcc) == 2
    assert candidate(acaa) == 1
    assert candidate(acab) == 1
    assert candidate(acac) == 0
    assert candidate(acba) == 1
    assert candidate(acbb) == 1
    assert candidate(acbc) == 1
    assert candidate(acca) == 1
    assert candidate(accb) == 1
    assert candidate(accc) == 1
    assert candidate(baaa) == 2
    assert candidate(baab) == 2
    assert candidate(baac) == 1
    assert candidate(baba) == 2
    assert candidate(babb) == 2
    assert candidate(babc) == 2
    assert candidate(baca) == 1
    assert candidate(bacb) == 2
    assert candidate(bacc) == 2
    assert candidate(bbaa) == 2
    assert candidate(bbab) == 2
    assert candidate(bbac) == 1
    assert candidate(bbba) == 2
    assert candidate(bbbb) == 2
    assert candidate(bbbc) == 2
    assert candidate(bbca) == 1
    assert candidate(bbcb) == 2
    assert candidate(bbcc) == 2
    assert candidate(bcaa) == 2
    assert candidate(bcab) == 2
    assert candidate(bcac) == 1
    assert candidate(bcba) == 2
    assert candidate(bcbb) == 2
    assert candidate(bcbc) == 2
    assert candidate(bcca) == 1
    assert candidate(bccb) == 2
    assert candidate(bccc) == 2
    assert candidate(caaa) == 1
    assert candidate(caab) == 1
    assert candidate(caac) == 1
    assert candidate(caba) == 1


def test_check():
    check(removeAlmostEqualCharacters)


### Metadata below ###
# question_id = 3230
# question_title = Remove Adjacent Almost-Equal Characters
# question_title_slug = remove-adjacent-almost-equal-characters
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 115
# question_dislikes = 16