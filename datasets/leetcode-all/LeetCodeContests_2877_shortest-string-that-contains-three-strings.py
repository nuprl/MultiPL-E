def minimumString(a: str, b: str, c: str) -> str:
    """
    Given three strings a, b, and c, your task is to find a string that has the minimum length and contains all three strings as substrings.
    
    If there are multiple such strings, return the lexicographically smallest one.
    
    Return a string denoting the answer to the problem.
    
    Notes
    
     * A string a is lexicographically smaller than a string b (of the same length) if in the first position where a and b differ, string a has a letter that appears earlier in the alphabet than the corresponding letter in b.
     * A substring is a contiguous sequence of characters within a string.
    
    Example 1:
    
    Input: a = "abc", b = "bca", c = "aaa"
    Output: "aaabca"
    Explanation:  We show that "aaabca" contains all the given strings: a = ans[2...4], b = ans[3..5], c = ans[0..2]. It can be shown that the length of the resulting string would be at least 6 and "aaabca" is the lexicographically smallest one.
    
    Example 2:
    
    Input: a = "ab", b = "ba", c = "aba"
    Output: "aba"
    Explanation: We show that the string "aba" contains all the given strings: a = ans[0..1], b = ans[1..2], c = ans[0..2]. Since the length of c is 3, the length of the resulting string would be at least 3. It can be shown that "aba" is the lexicographically smallest one.
    
    
    Constraints:
    
     * 1 <= a.length, b.length, c.length <= 100
     * a, b, c consist only of lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(abc, bca, aaa) == "aaabca"
    assert candidate(ab, ba, aba) == "aba"
    assert candidate(xyyyz, xzyz, zzz) == "xyyyzxzyzzz"
    assert candidate(a, a, a) == "a"
    assert candidate(a, a, b) == "ab"
    assert candidate(a, c, a) == "ac"
    assert candidate(a, b, b) == "ab"
    assert candidate(a, a, c) == "ac"
    assert candidate(a, c, b) == "abc"
    assert candidate(c, c, a) == "ac"
    assert candidate(k, e, a) == "aek"
    assert candidate(a, b, a) == "ab"
    assert candidate(b, b, a) == "ab"
    assert candidate(b, b, b) == "b"
    assert candidate(b, b, c) == "bc"
    assert candidate(c, b, b) == "bc"
    assert candidate(b, c, c) == "bc"
    assert candidate(b, c, a) == "abc"
    assert candidate(c, a, c) == "ac"
    assert candidate(c, b, c) == "bc"
    assert candidate(c, c, c) == "c"
    assert candidate(e, k, y) == "eky"
    assert candidate(z, p, m) == "mpz"
    assert candidate(a, aa, a) == "aa"
    assert candidate(ac, a, a) == "ac"
    assert candidate(ca, a, a) == "ca"
    assert candidate(a, cc, a) == "acc"
    assert candidate(a, a, aa) == "aa"
    assert candidate(c, a, aa) == "aac"
    assert candidate(a, ab, a) == "ab"
    assert candidate(ab, b, a) == "ab"
    assert candidate(ab, a, c) == "abc"
    assert candidate(c, ac, a) == "ac"
    assert candidate(ab, a, b) == "ab"
    assert candidate(b, a, ba) == "ba"
    assert candidate(ba, a, a) == "ba"
    assert candidate(b, ba, a) == "ba"
    assert candidate(a, bc, a) == "abc"
    assert candidate(c, a, bc) == "abc"
    assert candidate(a, c, ab) == "abc"
    assert candidate(c, a, ac) == "ac"
    assert candidate(a, c, ca) == "ca"
    assert candidate(c, a, cc) == "acc"
    assert candidate(a, ca, a) == "ca"
    assert candidate(a, cc, c) == "acc"
    assert candidate(aa, a, a) == "aa"
    assert candidate(aa, b, a) == "aab"
    assert candidate(a, aa, c) == "aac"
    assert candidate(b, c, aa) == "aabc"
    assert candidate(b, b, ab) == "ab"
    assert candidate(ab, b, c) == "abc"
    assert candidate(ac, c, b) == "acb"
    assert candidate(c, c, ac) == "ac"
    assert candidate(ba, b, a) == "ba"
    assert candidate(a, b, ca) == "bca"
    assert candidate(b, a, aa) == "aab"
    assert candidate(b, b, aa) == "aab"
    assert candidate(b, ab, a) == "ab"
    assert candidate(b, ab, b) == "ab"
    assert candidate(ac, b, a) == "acb"
    assert candidate(b, b, ac) == "acb"
    assert candidate(bb, b, b) == "bb"
    assert candidate(b, bc, b) == "bc"
    assert candidate(b, b, ca) == "bca"
    assert candidate(cb, b, b) == "cb"
    assert candidate(b, b, bb) == "bb"
    assert candidate(b, a, bc) == "abc"
    assert candidate(b, bc, c) == "bc"
    assert candidate(b, ab, c) == "abc"
    assert candidate(b, bb, c) == "bbc"
    assert candidate(c, b, bc) == "bc"
    assert candidate(b, cb, c) == "cb"
    assert candidate(b, cc, c) == "bcc"
    assert candidate(b, cb, a) == "acb"
    assert candidate(b, b, cb) == "cb"
    assert candidate(c, b, cb) == "cb"
    assert candidate(a, ba, b) == "ba"
    assert candidate(ba, a, b) == "ba"
    assert candidate(ba, b, b) == "ba"
    assert candidate(b, ba, c) == "bac"
    assert candidate(c, ba, b) == "bac"
    assert candidate(c, c, ba) == "bac"
    assert candidate(bb, a, b) == "abb"
    assert candidate(b, bb, b) == "bb"
    assert candidate(c, bb, b) == "bbc"
    assert candidate(a, bc, b) == "abc"
    assert candidate(bc, b, c) == "bc"
    assert candidate(bc, c, b) == "bc"
    assert candidate(bc, c, c) == "bc"
    assert candidate(ac, a, c) == "ac"
    assert candidate(c, c, aa) == "aac"
    assert candidate(cb, b, c) == "cb"
    assert candidate(c, b, cc) == "bcc"
    assert candidate(ba, b, c) == "bac"
    assert candidate(aa, c, c) == "aac"
    assert candidate(c, bc, c) == "bc"
    assert candidate(c, ca, c) == "ca"
    assert candidate(c, cb, c) == "cb"
    assert candidate(c, c, cc) == "cc"
    assert candidate(ca, c, a) == "ca"


def test_check():
    check(minimumString)


### Metadata below ###
# question_id = 2877
# question_title = Shortest String That Contains Three Strings
# question_title_slug = shortest-string-that-contains-three-strings
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 301
# question_dislikes = 244