def minimumChanges(s: str, k: int) -> int:
    """
    Given a string s and an integer k, partition s into k substrings such that the sum of the number of letter changes required to turn each substring into a semi-palindrome is minimized.
    
    Return an integer denoting the minimum number of letter changes required.
    
    Notes
    
     * A string is a palindrome if it can be read the same way from left to right and right to left.
     * A string with a length of len is considered a semi-palindrome if there exists a positive integer d such that 1 <= d < len and len % d == 0, and if we take indices that have the same modulo by d, they form a palindrome. For example, "aa", "aba", "adbgad", and, "abab" are semi-palindrome and "a", "ab", and, "abca" are not.
     * A substring is a contiguous sequence of characters within a string.
    
    Example 1:
    
    Input: s = "abcac", k = 2
    Output: 1
    Explanation: We can divide s into substrings "ab" and "cac". The string "cac" is already a semi-palindrome. If we change "ab" to "aa", it becomes a semi-palindrome with d = 1.
    It can be shown that there is no way to divide the string "abcac" into two semi-palindrome substrings. Therefore, the answer would be at least 1.
    
    Example 2:
    
    Input: s = "abcdef", k = 2
    Output: 2
    Explanation: We can divide it into substrings "abc" and "def". Each of the substrings "abc" and "def" requires one change to become a semi-palindrome, so we need 2 changes in total to make all substrings semi-palindrome.
    It can be shown that we cannot divide the given string into two substrings in a way that it would require less than 2 changes.
    
    Example 3:
    
    Input: s = "aabbaa", k = 3
    Output: 0
    Explanation: We can divide it into substrings "aa", "bb" and "aa".
    The strings "aa" and "bb" are already semi-palindromes. Thus, the answer is zero.
    
    
    Constraints:
    
     * 2 <= s.length <= 200
     * 1 <= k <= s.length / 2
     * s consists only of lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(abcac, 2) == 1
    assert candidate(abcdef, 2) == 2
    assert candidate(aabbaa, 3) == 0
    assert candidate(aq, 1) == 1
    assert candidate(bb, 1) == 0
    assert candidate(aac, 1) == 1
    assert candidate(abcc, 1) == 2
    assert candidate(acba, 2) == 2
    assert candidate(edaswf, 1) == 2
    assert candidate(aabcbaa, 1) == 0
    assert candidate(dqpldq, 3) == 3
    assert candidate(eksddulf, 1) == 3
    assert candidate(aaaaacabbb, 1) == 3
    assert candidate(aaabacacbb, 1) == 3
    assert candidate(abbbbacaaa, 1) == 3
    assert candidate(abcccbaccb, 1) == 2
    assert candidate(baacbbbaba, 1) == 2
    assert candidate(babcbaccba, 1) == 1
    assert candidate(cabbcabcbc, 1) == 3
    assert candidate(ccbccaaabb, 1) == 4
    assert candidate(cccbabbbbc, 1) == 2
    assert candidate(cccccbaaac, 1) == 3
    assert candidate(dyfnbbbqbm, 1) == 4
    assert candidate(hafrypzupv, 1) == 4
    assert candidate(aabcacccabc, 1) == 4
    assert candidate(abbcaabaaac, 1) == 5
    assert candidate(baabaabbcb, 2) == 0
    assert candidate(bbbabcbaccb, 1) == 2
    assert candidate(bcababccaa, 2) == 1
    assert candidate(bcacacacaab, 1) == 1
    assert candidate(bcacccacbaa, 1) == 4
    assert candidate(bccaaccacb, 2) == 2
    assert candidate(caacbacbaca, 1) == 4
    assert candidate(ccccaaacca, 2) == 1
    assert candidate(efrsgmjneph, 1) == 5
    assert candidate(ehdvhthgbxq, 1) == 4
    assert candidate(eymakkvrvc, 2) == 3
    assert candidate(gilkaelnfr, 2) == 4
    assert candidate(iiaenfiasiv, 1) == 4
    assert candidate(piazrazesdk, 1) == 5
    assert candidate(pypwcllynf, 2) == 3
    assert candidate(uqicxuvkorn, 1) == 5
    assert candidate(ziirnywodfz, 1) == 4
    assert candidate(zpogsiabazr, 1) == 5
    assert candidate(aacacaacabba, 1) == 2
    assert candidate(abacacabba, 3) == 0
    assert candidate(acbcbccccba, 2) == 2
    assert candidate(bbcaaaaacbb, 2) == 2
    assert candidate(cbabaabccba, 2) == 1
    assert candidate(cbacccbabcaa, 1) == 3
    assert candidate(cbbcbcacca, 3) == 1
    assert candidate(ccaabbbccacb, 1) == 3
    assert candidate(ccabcbbcaa, 3) == 1
    assert candidate(epenvgssid, 3) == 3
    assert candidate(grllkopehr, 3) == 3
    assert candidate(iaemfpyhrtgb, 1) == 4
    assert candidate(iqjvqxzhjc, 3) == 4
    assert candidate(kpkzjgcvgopr, 1) == 4
    assert candidate(neocjmpaltv, 2) == 4
    assert candidate(uvdbxsjyso, 3) == 4
    assert candidate(wsezruidpcy, 2) == 4
    assert candidate(ybexlzsvsi, 3) == 3
    assert candidate(abacabccaa, 4) == 1
    assert candidate(abccbacbcbc, 3) == 1
    assert candidate(abccccbaaba, 3) == 2
    assert candidate(acabbbacacbb, 2) == 1
    assert candidate(acbbbbccacc, 3) == 1
    assert candidate(acbcbbaaca, 4) == 2
    assert candidate(accbabbbaacaa, 1) == 2
    assert candidate(baaaccbaaa, 4) == 2
    assert candidate(baababcacc, 4) == 2
    assert candidate(baabbccbbc, 4) == 2
    assert candidate(bacbbaaccb, 4) == 2
    assert candidate(baccbbccab, 4) == 3
    assert candidate(bbababccabca, 2) == 2
    assert candidate(bbacbccbca, 4) == 2
    assert candidate(bbacccbbaabbb, 1) == 4
    assert candidate(bbccbbbcaab, 3) == 2
    assert candidate(bbccbcccaba, 3) == 0
    assert candidate(bcaacaabaa, 4) == 2
    assert candidate(bcbcbabaabaa, 2) == 1
    assert candidate(bofqvqapnjo, 3) == 3
    assert candidate(bvatyzbdffqdp, 1) == 6
    assert candidate(cabbcbcbcbcca, 1) == 3
    assert candidate(cbacbbcbccccc, 1) == 3
    assert candidate(ccaccaacbcaac, 1) == 3
    assert candidate(ccbabcbabb, 4) == 1
    assert candidate(ccbacacbcbac, 2) == 2
    assert candidate(edulrtnsbb, 4) == 3
    assert candidate(feecuhvurk, 4) == 4
    assert candidate(ffqbqdocclh, 3) == 2
    assert candidate(gceeouniipz, 3) == 4
    assert candidate(gdlitshyeehtx, 1) == 6
    assert candidate(hpbijyuygkk, 3) == 3
    assert candidate(kxvwhuewyftpp, 1) == 6
    assert candidate(mrqvwotsqjtfv, 1) == 6
    assert candidate(qhzievvxauf, 3) == 4
    assert candidate(rbiuxrgidyzuu, 1) == 6
    assert candidate(rkyidomzyud, 3) == 4
    assert candidate(wvewmaevkzjp, 2) == 3


def test_check():
    check(minimumChanges)


### Metadata below ###
# question_id = 2879
# question_title = Minimum Changes to Make K Semi-palindromes
# question_title_slug = minimum-changes-to-make-k-semi-palindromes
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 50
# question_dislikes = 78