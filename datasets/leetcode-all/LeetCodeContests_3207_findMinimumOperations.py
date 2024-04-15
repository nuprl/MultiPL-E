def findMinimumOperations(s1: str, s2: str, s3: str) -> int:
    """
    You are given three strings s1, s2, and s3. You have to perform the following operation on these three strings as many times as you want.
    In one operation you can choose one of these three strings such that its length is at least 2 and delete the rightmost character of it.
    Return the minimum number of operations you need to perform to make the three strings equal if there is a way to make them equal, otherwise, return -1.
    
    Example 1:
    
    Input: s1 = "abc", s2 = "abb", s3 = "ab"
    Output: 2
    Explanation: Performing operations on s1 and s2 once will lead to three equal strings.
    It can be shown that there is no way to make them equal with less than two operations.
    Example 2:
    
    Input: s1 = "dac", s2 = "bac", s3 = "cac"
    Output: -1
    Explanation: Because the leftmost letters of s1 and s2 are not equal, they could not be equal after any number of operations. So the answer is -1.
    
    
    Constraints:
    
    1 <= s1.length, s2.length, s3.length <= 100
    s1, s2 and s3 consist only of lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(abc, abb, ab) == 2
    assert candidate(dac, bac, cac) == -1
    assert candidate(a, a, a) == 0
    assert candidate(kui, m, v) == -1
    assert candidate(a, aabc, a) == 3
    assert candidate(cc, cccb, c) == 4
    assert candidate(luso, lu, lu) == 2
    assert candidate(xx, phe, xie) == -1
    assert candidate(gzd, bcju, db) == -1
    assert candidate(cbba, cbaa, c) == 6
    assert candidate(k, kfb, krcnf) == 6
    assert candidate(oby, obz, obf) == 3
    assert candidate(b, aba, aaccaa) == -1
    assert candidate(a, accabb, aaa) == 7
    assert candidate(b, bccaaba, ba) == 7
    assert candidate(b, bacccab, cc) == -1
    assert candidate(ca, cccabb, cb) == 7
    assert candidate(ccb, ccba, ccb) == 1
    assert candidate(mbooi, pdq, br) == -1
    assert candidate(xxfzj, faho, c) == -1
    assert candidate(acbc, acba, acb) == 2
    assert candidate(aduyyk, v, lpyt) == -1
    assert candidate(xd, sl, azoeaje) == -1
    assert candidate(bbbaa, bacab, b) == 8
    assert candidate(cibn, ioom, bxa) == -1
    assert candidate(bcb, bbac, cbbc) == -1
    assert candidate(aabbb, cc, cccb) == -1
    assert candidate(i, xqsfy, diqae) == -1
    assert candidate(iq, iimanmy, id) == 8
    assert candidate(pitggt, pi, pih) == 5
    assert candidate(ten, ten, tenob) == 2
    assert candidate(vejy, fbqfo, gl) == -1
    assert candidate(aca, abcc, accba) == 9
    assert candidate(br, br, brvhgtou) == 6
    assert candidate(c, bcc, aacbcaca) == -1
    assert candidate(cab, caac, cacbb) == 6
    assert candidate(ccab, cbbcbb, ca) == 9
    assert candidate(inuc, iwpdfj, ib) == 9
    assert candidate(jrrpyyc, jr, jrt) == 6
    assert candidate(l, gebqrgnz, jkr) == -1
    assert candidate(naynn, ax, bhdcz) == -1
    assert candidate(rexmx, ujmbg, gg) == -1
    assert candidate(aacbcb, a, acaaac) == 10
    assert candidate(acbb, acbacc, acb) == 4
    assert candidate(baacbab, bcc, bca) == 10
    assert candidate(bcacbba, bca, bca) == 4
    assert candidate(bcaca, bcaba, bca) == 4
    assert candidate(ba, bcbcab, bbcbb) == 10
    assert candidate(cabc, cab, cabbac) == 4
    assert candidate(bbbbcaac, a, cbcc) == -1
    assert candidate(gjbtodtym, gxp, g) == 10
    assert candidate(hfkq, hfrbvno, hf) == 7
    assert candidate(hym, hl, hshxmbbj) == 10
    assert candidate(mkdflu, mmbn, mge) == 10
    assert candidate(nvlobl, mekbzd, s) == -1
    assert candidate(rpa, rpaxpoh, rpa) == 4
    assert candidate(ac, aacccccbc, acc) == 11
    assert candidate(abb, abaac, abcaca) == 8
    assert candidate(caa, caccaccacb, c) == 11
    assert candidate(baccaab, cababc, a) == -1
    assert candidate(cacbb, ca, cacbcac) == 8
    assert candidate(cbba, cabcabab, ca) == 11
    assert candidate(cb, cbcbb, cbaaabb) == 8
    assert candidate(ccabaa, ccabc, cca) == 5
    assert candidate(ccb, ccac, cccaaca) == 8
    assert candidate(ccccbb, cccc, cccc) == 2
    assert candidate(cxxq, cxx, cxxdeqh) == 5
    assert candidate(d, dffjiulzya, dke) == 11
    assert candidate(dogv, dofjkhx, dog) == 8
    assert candidate(dwefrocz, dzz, dwn) == 11
    assert candidate(etr, ejb, etpubpvr) == 11
    assert candidate(f, morycy, vledqoo) == -1
    assert candidate(ful, fular, fulvkv) == 5
    assert candidate(kzwat, ku, koftvbd) == 11
    assert candidate(qey, qevtkbss, qeb) == 8
    assert candidate(saqy, hvufcpko, xm) == -1
    assert candidate(tllwgcdi, t, tvham) == 11
    assert candidate(vmwdmadn, vmw, vmw) == 5
    assert candidate(xobwwhu, xobb, xob) == 5
    assert candidate(yptajimiz, yp, ypr) == 8
    assert candidate(z, zcrouxlukb, zbb) == 11
    assert candidate(aaabc, aaaa, aaaabc) == 6
    assert candidate(aaa, aab, aabaacaab) == 9
    assert candidate(aac, aac, aacabbbca) == 6
    assert candidate(abaab, abaabb, abaa) == 3
    assert candidate(abcomon, gkuneup, q) == -1
    assert candidate(acc, accacb, acbabc) == 9
    assert candidate(cca, caaab, babbacc) == -1
    assert candidate(bccbc, bc, bcccbcac) == 9
    assert candidate(bpp, bin, bfkbyhubw) == 12
    assert candidate(bbsyg, blbp, brghkr) == 12
    assert candidate(bxpvamp, bxpv, bxpv) == 3
    assert candidate(ccbabca, cbcbaca, c) == 12
    assert candidate(accb, bbc, cbbaccba) == -1
    assert candidate(cbccc, cbc, cbcccba) == 6
    assert candidate(cac, ccacc, cabacba) == 12
    assert candidate(ccb, ccbcb, ccbccab) == 6
    assert candidate(caacabcbc, ccb, ccc) == 12
    assert candidate(cccabaacc, ccc, ccc) == 6
    assert candidate(ajjdre, gsrq, eurcj) == -1


def test_check():
    check(findMinimumOperations)


### Metadata below ###
# question_id = 3207
# question_title = Make Three Strings Equal
# question_title_slug = make-three-strings-equal
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 114
# question_dislikes = 30