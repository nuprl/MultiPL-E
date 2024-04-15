def maximumLength(s: str) -> int:
    """
    You are given a string s that consists of lowercase English letters.
    A string is called special if it is made up of only a single character. For example, the string "abc" is not special, whereas the strings "ddd", "zz", and "f" are special.
    Return the length of the longest special substring of s which occurs at least thrice, or -1 if no special substring occurs at least thrice.
    A substring is a contiguous non-empty sequence of characters within a string.
    
    Example 1:
    
    Input: s = "aaaa"
    Output: 2
    Explanation: The longest special substring which occurs thrice is "aa": substrings "aaaa", "aaaa", and "aaaa".
    It can be shown that the maximum length achievable is 2.
    
    Example 2:
    
    Input: s = "abcdef"
    Output: -1
    Explanation: There exists no special substring which occurs at least thrice. Hence return -1.
    
    Example 3:
    
    Input: s = "abcaba"
    Output: 1
    Explanation: The longest special substring which occurs thrice is "a": substrings "abcaba", "abcaba", and "abcaba".
    It can be shown that the maximum length achievable is 1.
    
    
    Constraints:
    
    3 <= s.length <= 50
    s consists of only lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(aaaa) == 2
    assert candidate(abcdef) == -1
    assert candidate(abcaba) == 1
    assert candidate(abcccccdddd) == 3
    assert candidate(aaa) == 1
    assert candidate(acc) == -1
    assert candidate(cab) == -1
    assert candidate(cad) == -1
    assert candidate(cbc) == -1
    assert candidate(ccc) == 1
    assert candidate(dca) == -1
    assert candidate(ddd) == 1
    assert candidate(fff) == 1
    assert candidate(ggg) == 1
    assert candidate(hhh) == 1
    assert candidate(kkk) == 1
    assert candidate(lll) == 1
    assert candidate(ooo) == 1
    assert candidate(ppp) == 1
    assert candidate(qqq) == 1
    assert candidate(rrr) == 1
    assert candidate(xxx) == 1
    assert candidate(yyy) == 1
    assert candidate(aaau) == 1
    assert candidate(affe) == -1
    assert candidate(agae) == -1
    assert candidate(aiii) == 1
    assert candidate(bbbb) == 2
    assert candidate(bbbz) == 1
    assert candidate(bddd) == 1
    assert candidate(beee) == 1
    assert candidate(bnnn) == 1
    assert candidate(bsss) == 1
    assert candidate(bxxx) == 1
    assert candidate(cafc) == -1
    assert candidate(ccag) == -1
    assert candidate(cfff) == 1
    assert candidate(dddd) == 2
    assert candidate(dsss) == 1
    assert candidate(eccc) == 1
    assert candidate(eeew) == 1
    assert candidate(gfdc) == -1
    assert candidate(giii) == 1
    assert candidate(hhhn) == 1
    assert candidate(hyyy) == 1
    assert candidate(iiii) == 2
    assert candidate(jiii) == 1
    assert candidate(jjjj) == 2
    assert candidate(kbbb) == 1
    assert candidate(kddd) == 1
    assert candidate(looo) == 1
    assert candidate(nnnn) == 2
    assert candidate(oaaa) == 1
    assert candidate(osss) == 1
    assert candidate(pppp) == 2
    assert candidate(pppw) == 1
    assert candidate(qqqc) == 1
    assert candidate(qqqo) == 1
    assert candidate(qqqq) == 2
    assert candidate(reee) == 1
    assert candidate(rzzz) == 1
    assert candidate(thhh) == 1
    assert candidate(tttt) == 2
    assert candidate(unnn) == 1
    assert candidate(uuuu) == 2
    assert candidate(uyyy) == 1
    assert candidate(vddd) == 1
    assert candidate(vfff) == 1
    assert candidate(vvvv) == 2
    assert candidate(wbbb) == 1
    assert candidate(wqqq) == 1
    assert candidate(wwwg) == 1
    assert candidate(xxxk) == 1
    assert candidate(xxxx) == 2
    assert candidate(zfff) == 1
    assert candidate(ammmm) == 2
    assert candidate(aqqqu) == 1
    assert candidate(axxxx) == 2
    assert candidate(bahhh) == 1
    assert candidate(bbbbz) == 2
    assert candidate(bbccc) == 1
    assert candidate(biaei) == -1
    assert candidate(bjjjj) == 2
    assert candidate(cccll) == 1
    assert candidate(ceaaa) == 1
    assert candidate(cjlll) == 1
    assert candidate(crqqq) == 1
    assert candidate(cyyyy) == 2
    assert candidate(ddddj) == 2
    assert candidate(ddddt) == 2
    assert candidate(dkkkk) == 2
    assert candidate(eefff) == 1
    assert candidate(efage) == -1
    assert candidate(epppp) == 2
    assert candidate(fafff) == 1
    assert candidate(ffbbb) == 1
    assert candidate(ffffr) == 2
    assert candidate(gcgbf) == -1
    assert candidate(gcooo) == 1
    assert candidate(gfgec) == -1


def test_check():
    check(maximumLength)


### Metadata below ###
# question_id = 3267
# question_title = Find Longest Special Substring That Occurs Thrice I
# question_title_slug = find-longest-special-substring-that-occurs-thrice-i
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 112
# question_dislikes = 6