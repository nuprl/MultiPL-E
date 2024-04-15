def countKSubsequencesWithMaxBeauty(s: str, k: int) -> int:
    """
    You are given a string s and an integer k.
    
    A k-subsequence is a subsequence of s, having length k, and all its characters are unique, i.e., every character occurs once.
    
    Let f(c) denote the number of times the character c occurs in s.
    
    The beauty of a k-subsequence is the sum of f(c) for every character c in the k-subsequence.
    
    For example, consider s = "abbbdd" and k = 2:
    
     * f('a') = 1, f('b') = 3, f('d') = 2
     * Some k-subsequences of s are:
       * "abbbdd" -> "ab" having a beauty of f('a') + f('b') = 4
       * "abbbdd" -> "ad" having a beauty of f('a') + f('d') = 3
       * "abbbdd" -> "bd" having a beauty of f('b') + f('d') = 5
    
    Return an integer denoting the number of k-subsequences whose beauty is the maximum among all k-subsequences. Since the answer may be too large, return it modulo 109 + 7.
    
    A subsequence of a string is a new string formed from the original string by deleting some (possibly none) of the characters without disturbing the relative positions of the remaining characters.
    
    Notes
    
     * f(c) is the number of times a character c occurs in s, not a k-subsequence.
     * Two k-subsequences are considered different if one is formed by an index that is not present in the other. So, two k-subsequences may form the same string.
    
    Example 1:
    
    Input: s = "bcca", k = 2
    Output: 4
    Explanation: From s we have f('a') = 1, f('b') = 1, and f('c') = 2.
    The k-subsequences of s are:
    bcca having a beauty of f('b') + f('c') = 3
    bcca having a beauty of f('b') + f('c') = 3
    bcca having a beauty of f('b') + f('a') = 2
    bcca having a beauty of f('c') + f('a') = 3
    bcca having a beauty of f('c') + f('a') = 3
    There are 4 k-subsequences that have the maximum beauty, 3.
    Hence, the answer is 4.
    
    Example 2:
    
    Input: s = "abbcd", k = 4
    Output: 2
    Explanation: From s we have f('a') = 1, f('b') = 2, f('c') = 1, and f('d') = 1.
    The k-subsequences of s are:
    abbcd having a beauty of f('a') + f('b') + f('c') + f('d') = 5
    abbcd having a beauty of f('a') + f('b') + f('c') + f('d') = 5
    There are 2 k-subsequences that have the maximum beauty, 5.
    Hence, the answer is 2.
    
    
    Constraints:
    
     * 1 <= s.length <= 2 * 105
     * 1 <= k <= s.length
     * s consists only of lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(bcca, 2) == 4
    assert candidate(abbcd, 4) == 2
    assert candidate(am, 2) == 1
    assert candidate(az, 2) == 1
    assert candidate(ci, 1) == 2
    assert candidate(dd, 2) == 0
    assert candidate(di, 2) == 1
    assert candidate(dw, 2) == 1
    assert candidate(ef, 1) == 2
    assert candidate(gq, 2) == 1
    assert candidate(hj, 1) == 2
    assert candidate(hx, 1) == 2
    assert candidate(ii, 2) == 0
    assert candidate(il, 2) == 1
    assert candidate(jb, 1) == 2
    assert candidate(kx, 1) == 2
    assert candidate(qh, 2) == 1
    assert candidate(qk, 2) == 1
    assert candidate(qr, 2) == 1
    assert candidate(rg, 2) == 1
    assert candidate(rn, 1) == 2
    assert candidate(st, 1) == 2
    assert candidate(tb, 1) == 2
    assert candidate(tl, 2) == 1
    assert candidate(xc, 2) == 1
    assert candidate(auy, 1) == 3
    assert candidate(axm, 3) == 1
    assert candidate(dqc, 1) == 3
    assert candidate(fkp, 2) == 3
    assert candidate(fmk, 2) == 3
    assert candidate(fvl, 3) == 1
    assert candidate(hcx, 3) == 1
    assert candidate(iua, 3) == 1
    assert candidate(kzb, 2) == 3
    assert candidate(mhb, 3) == 1
    assert candidate(nzo, 1) == 3
    assert candidate(oof, 3) == 0
    assert candidate(rfh, 2) == 3
    assert candidate(sty, 1) == 3
    assert candidate(sue, 3) == 1
    assert candidate(tba, 3) == 1
    assert candidate(tmc, 1) == 3
    assert candidate(wes, 2) == 3
    assert candidate(wvl, 1) == 3
    assert candidate(xho, 2) == 3
    assert candidate(xke, 2) == 3
    assert candidate(ysu, 3) == 1
    assert candidate(yxn, 2) == 3
    assert candidate(zco, 1) == 3
    assert candidate(zpq, 3) == 1
    assert candidate(axgn, 4) == 1
    assert candidate(dfyq, 2) == 6
    assert candidate(dogq, 2) == 6
    assert candidate(drbs, 2) == 6
    assert candidate(elex, 4) == 0
    assert candidate(fsaj, 1) == 4
    assert candidate(fxau, 2) == 6
    assert candidate(glbq, 4) == 1
    assert candidate(hzcj, 4) == 1
    assert candidate(minc, 3) == 4
    assert candidate(nkim, 1) == 4
    assert candidate(otpl, 2) == 6
    assert candidate(pvrz, 4) == 1
    assert candidate(qwmy, 4) == 1
    assert candidate(rliu, 4) == 1
    assert candidate(tpig, 2) == 6
    assert candidate(ucvh, 4) == 1
    assert candidate(vevt, 2) == 4
    assert candidate(xstt, 3) == 2
    assert candidate(ypmv, 3) == 4
    assert candidate(znoq, 3) == 4
    assert candidate(bicnt, 1) == 5
    assert candidate(bnhom, 5) == 1
    assert candidate(culhr, 5) == 1
    assert candidate(dpfki, 1) == 5
    assert candidate(dscbu, 2) == 10
    assert candidate(edwlo, 3) == 10
    assert candidate(ggsgo, 3) == 3
    assert candidate(guzzf, 4) == 2
    assert candidate(gzzzl, 3) == 3
    assert candidate(kjojr, 3) == 6
    assert candidate(kvsds, 5) == 0
    assert candidate(ljdvp, 1) == 5
    assert candidate(mdccc, 5) == 0
    assert candidate(mmqny, 4) == 2
    assert candidate(mrbrj, 2) == 6
    assert candidate(pwtbx, 4) == 5
    assert candidate(qcxkr, 3) == 10
    assert candidate(qvauy, 1) == 5
    assert candidate(tzwoq, 3) == 10
    assert candidate(ufxge, 4) == 5
    assert candidate(unzxd, 4) == 5
    assert candidate(vhqqj, 3) == 6
    assert candidate(vnkbt, 1) == 5
    assert candidate(wpbkz, 2) == 10
    assert candidate(xdgvy, 1) == 5
    assert candidate(yelem, 5) == 0
    assert candidate(zwkhq, 3) == 10
    assert candidate(anxnfi, 5) == 2
    assert candidate(cfbyuf, 5) == 2


def test_check():
    check(countKSubsequencesWithMaxBeauty)


### Metadata below ###
# question_id = 3057
# question_title = Count K-Subsequences of a String With Maximum Beauty
# question_title_slug = count-k-subsequences-of-a-string-with-maximum-beauty
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 286
# question_dislikes = 21