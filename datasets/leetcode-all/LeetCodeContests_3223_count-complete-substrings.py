def countCompleteSubstrings(word: str, k: int) -> int:
    """
    You are given a string word and an integer k.
    A substring s of word is complete if:
    
    Each character in s occurs exactly k times.
    The difference between two adjacent characters is at most 2. That is, for any two adjacent characters c1 and c2 in s, the absolute difference in their positions in the alphabet is at most 2.
    
    Return the number of complete substrings of word.
    A substring is a non-empty contiguous sequence of characters in a string.
    
    Example 1:
    
    Input: word = "igigee", k = 2
    Output: 3
    Explanation: The complete substrings where each character appears exactly twice and the difference between adjacent characters is at most 2 are: igigee, igigee, igigee.
    
    Example 2:
    
    Input: word = "aaabbbccc", k = 3
    Output: 6
    Explanation: The complete substrings where each character appears exactly three times and the difference between adjacent characters is at most 2 are: aaabbbccc, aaabbbccc, aaabbbccc, aaabbbccc, aaabbbccc, aaabbbccc.
    
    
    Constraints:
    
    1 <= word.length <= 105
    word consists only of lowercase English letters.
    1 <= k <= word.length
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(igigee, 2) == 3
    assert candidate(aaabbbccc, 3) == 6
    assert candidate(a, 1) == 1
    assert candidate(b, 1) == 1
    assert candidate(c, 1) == 1
    assert candidate(aa, 2) == 1
    assert candidate(ab, 2) == 0
    assert candidate(ac, 2) == 0
    assert candidate(ba, 1) == 3
    assert candidate(bb, 2) == 1
    assert candidate(bc, 1) == 3
    assert candidate(ca, 1) == 3
    assert candidate(cb, 1) == 3
    assert candidate(cc, 2) == 1
    assert candidate(aaa, 1) == 3
    assert candidate(aab, 3) == 0
    assert candidate(aac, 2) == 1
    assert candidate(aba, 3) == 0
    assert candidate(abb, 1) == 4
    assert candidate(abc, 3) == 0
    assert candidate(aca, 1) == 5
    assert candidate(acb, 2) == 0
    assert candidate(acc, 3) == 0
    assert candidate(baa, 2) == 1
    assert candidate(bab, 3) == 0
    assert candidate(bac, 2) == 0
    assert candidate(bba, 1) == 4
    assert candidate(bbb, 2) == 2
    assert candidate(bbc, 2) == 1
    assert candidate(bca, 2) == 0
    assert candidate(bcb, 1) == 5
    assert candidate(bcc, 2) == 1
    assert candidate(caa, 1) == 4
    assert candidate(cab, 2) == 0
    assert candidate(cac, 2) == 0
    assert candidate(cba, 1) == 6
    assert candidate(cbb, 3) == 0
    assert candidate(cbc, 2) == 0
    assert candidate(cca, 2) == 1
    assert candidate(ccb, 1) == 4
    assert candidate(ccc, 2) == 2
    assert candidate(aaaa, 4) == 1
    assert candidate(aaab, 4) == 0
    assert candidate(aaac, 4) == 0
    assert candidate(aaba, 3) == 0
    assert candidate(aabb, 1) == 5
    assert candidate(aabc, 3) == 0
    assert candidate(aaca, 3) == 0
    assert candidate(aacb, 2) == 1
    assert candidate(aacc, 4) == 0
    assert candidate(abaa, 3) == 0
    assert candidate(abab, 1) == 7
    assert candidate(abac, 4) == 0
    assert candidate(abba, 3) == 0
    assert candidate(abbb, 4) == 0
    assert candidate(abbc, 2) == 1
    assert candidate(abca, 1) == 9
    assert candidate(abcb, 1) == 8
    assert candidate(abcc, 4) == 0
    assert candidate(acaa, 1) == 6
    assert candidate(acab, 2) == 0
    assert candidate(acac, 1) == 7
    assert candidate(acba, 2) == 0
    assert candidate(acbb, 1) == 7
    assert candidate(acbc, 2) == 0
    assert candidate(acca, 1) == 6
    assert candidate(accb, 3) == 0
    assert candidate(accc, 4) == 0
    assert candidate(baaa, 2) == 2
    assert candidate(baab, 1) == 6
    assert candidate(baac, 1) == 6
    assert candidate(baba, 1) == 7
    assert candidate(babb, 1) == 6
    assert candidate(babc, 3) == 0
    assert candidate(baca, 4) == 0
    assert candidate(bacb, 3) == 0
    assert candidate(bacc, 1) == 7
    assert candidate(bbaa, 2) == 3
    assert candidate(bbab, 3) == 0
    assert candidate(bbac, 4) == 0
    assert candidate(bbba, 4) == 0
    assert candidate(bbbb, 1) == 4
    assert candidate(bbbc, 3) == 1
    assert candidate(bbca, 4) == 0
    assert candidate(bbcb, 1) == 6
    assert candidate(bbcc, 4) == 0
    assert candidate(bcaa, 2) == 1
    assert candidate(bcab, 3) == 0
    assert candidate(bcac, 3) == 0
    assert candidate(bcba, 1) == 8
    assert candidate(bcbb, 1) == 6
    assert candidate(bcbc, 2) == 1
    assert candidate(bcca, 4) == 0
    assert candidate(bccb, 3) == 0
    assert candidate(bccc, 4) == 0
    assert candidate(caaa, 3) == 1
    assert candidate(caab, 1) == 6
    assert candidate(caac, 4) == 0
    assert candidate(caba, 4) == 0
    assert candidate(cabb, 3) == 0


def test_check():
    check(countCompleteSubstrings)


### Metadata below ###
# question_id = 3223
# question_title = Count Complete Substrings
# question_title_slug = count-complete-substrings
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 154
# question_dislikes = 30