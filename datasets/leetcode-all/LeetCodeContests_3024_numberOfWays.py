def numberOfWays(s: str, t: str, k: int) -> int:
    """
    You are given two strings s and t of equal length n. You can perform the following operation on the string s:
    
     * Remove a suffix of s of length l where 0 < l < n and append it at the start of s.
       For example, let s = 'abcd' then in one operation you can remove the suffix 'cd' and append it in front of s making s = 'cdab'.
    
    You are also given an integer k. Return the number of ways in which s can be transformed into t in exactly k operations.
    
    Since the answer can be large, return it modulo 109 + 7.
    
    Example 1:
    
    Input: s = "abcd", t = "cdab", k = 2
    Output: 2
    Explanation:
    First way:
    In first operation, choose suffix from index = 3, so resulting s = "dabc".
    In second operation, choose suffix from index = 3, so resulting s = "cdab".
    
    Second way:
    In first operation, choose suffix from index = 1, so resulting s = "bcda".
    In second operation, choose suffix from index = 1, so resulting s = "cdab".
    
    Example 2:
    
    Input: s = "ababab", t = "ababab", k = 1
    Output: 2
    Explanation:
    First way:
    Choose suffix from index = 2, so resulting s = "ababab".
    
    Second way:
    Choose suffix from index = 4, so resulting s = "ababab".
    
    
    Constraints:
    
     * 2 <= s.length <= 5 * 105
     * 1 <= k <= 1015
     * s.length == t.length
     * s and t consist of only lowercase English alphabets.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(abcd, cdab, 2) == 2
    assert candidate(ababab, ababab, 1) == 2
    assert candidate(goxoq, dfqgl, 244326024901249) == 0
    assert candidate(ceoceo, eoceoc, 4) == 208
    assert candidate(ib, ib, 10) == 1
    assert candidate(ttttttt, ttttttt, 5) == 7776
    assert candidate(aaaa, aaaa, 8) == 6561
    assert candidate(meplrmeplr, eplrmeplrm, 7) == 956594
    assert candidate(dsmn, smnd, 3) == 7
    assert candidate(jjj, jjj, 10) == 1024
    assert candidate(rrrrr, rrrrr, 1) == 4
    assert candidate(fefe, fefe, 9) == 9841
    assert candidate(pfly, wvqr, 840550364246523) == 0
    assert candidate(ltjwwltjww, jwwltjwwlt, 1) == 2
    assert candidate(mb, mb, 3) == 0
    assert candidate(jjjjjjjjjj, jjjjjjjjjj, 3) == 729
    assert candidate(oqytlmi, lmioqyt, 8) == 239945
    assert candidate(hpcg, pcgh, 5) == 61
    assert candidate(bqbqbqbqbq, bqbqbqbqbq, 9) == 193710244
    assert candidate(ccccccccc, ccccccccc, 7) == 2097152
    assert candidate(jjjjjjjjjj, jjjjjjjjjj, 9) == 387420489
    assert candidate(qqqq, qqqq, 9) == 19683
    assert candidate(loppaqg, nvbxtmh, 104865546226045) == 0
    assert candidate(qqqqqqqqqq, qqqqqqqqqq, 3) == 729
    assert candidate(qsqsqsqsqs, qsqsqsqsqs, 2) == 41
    assert candidate(nnnnn, nnnnn, 5) == 1024
    assert candidate(klncccd, klncccd, 1) == 0
    assert candidate(qqqqq, qqqqq, 9) == 262144
    assert candidate(qvxrlh, hqvxrl, 6) == 2604
    assert candidate(uuuu, uuuu, 9) == 19683
    assert candidate(sss, sss, 7) == 128
    assert candidate(gggggggggg, gggggggggg, 1) == 9
    assert candidate(ks, cj, 400700574233583) == 0
    assert candidate(lllllllll, lllllllll, 5) == 32768
    assert candidate(uhixx, xxuhi, 3) == 13
    assert candidate(vkrvkrvkr, rvkrvkrvk, 2) == 21
    assert candidate(xtxtxtxt, xtxtxtxt, 8) == 2882401
    assert candidate(nzybrhi, rhinzyb, 6) == 6665
    assert candidate(ff, ff, 4) == 1
    assert candidate(ubagdasws, aswsubagd, 9) == 14913081
    assert candidate(aaaaa, aaaaa, 10) == 1048576
    assert candidate(iiiiiiiiii, iiiiiiiiii, 4) == 6561
    assert candidate(nnjqjmgome, gbfuecwlqc, 359221508193514) == 0
    assert candidate(slmzyj, slmzyj, 4) == 105
    assert candidate(vfyxl, vfyxl, 10) == 209716
    assert candidate(sxzfvsxzfv, vsxzfvsxzf, 2) == 16
    assert candidate(kalt, ltka, 7) == 547
    assert candidate(jj, jj, 7) == 1
    assert candidate(bcriunp, criunpb, 2) == 5
    assert candidate(rutmzyj, zyjrutm, 6) == 6665
    assert candidate(vvvvv, vvvvv, 3) == 64
    assert candidate(hlld, hlld, 9) == 4920
    assert candidate(kctcsgswa, qfyyjeohe, 966836940319300) == 0
    assert candidate(otwqxmpktt, totwqxmpkt, 7) == 478297
    assert candidate(kkkkkkk, kkkkkkk, 7) == 279936
    assert candidate(iyl, iyl, 6) == 22
    assert candidate(glao, ogla, 10) == 14762
    assert candidate(jp, jp, 8) == 1
    assert candidate(uuuuuu, uuuuuu, 7) == 78125
    assert candidate(achach, achach, 10) == 3255209
    assert candidate(uuuuuuuu, uuuuuuuu, 7) == 823543
    assert candidate(gjh, jhg, 9) == 171
    assert candidate(cliuw, fphcn, 647756904366432) == 0
    assert candidate(zmcum, mzmcu, 1) == 1
    assert candidate(ll, ll, 5) == 1
    assert candidate(ccccc, ccccc, 1) == 4
    assert candidate(rrrr, rrrr, 1) == 3
    assert candidate(ih, hi, 8) == 0
    assert candidate(qfgihqrw, rwqfgihq, 8) == 720600
    assert candidate(cd, cd, 2) == 1
    assert candidate(oooooooooo, oooooooooo, 4) == 6561
    assert candidate(wp, wp, 6) == 1
    assert candidate(rqq, nln, 776508964349618) == 0
    assert candidate(rr, rr, 9) == 1
    assert candidate(knwppsd, psdknwp, 2) == 5
    assert candidate(epfeepfe, feepfeep, 9) == 10088402
    assert candidate(wwwww, wwwww, 9) == 262144
    assert candidate(cdcdcdcd, cdcdcdcd, 6) == 58825
    assert candidate(uphfr, fruph, 7) == 3277
    assert candidate(cocococo, cocococo, 3) == 171
    assert candidate(vhzjo, jovhz, 1) == 1
    assert candidate(bbbbbbbbbb, bbbbbbbbbb, 1) == 9
    assert candidate(pgnrstuh, yjzhldlg, 618648276258027) == 0
    assert candidate(cccccc, cccccc, 5) == 3125
    assert candidate(kkkkkkk, kkkkkkk, 3) == 216
    assert candidate(lxqqzsvej, svejlxqqz, 3) == 57
    assert candidate(lllll, lllll, 3) == 64
    assert candidate(hhhhhhhhhh, hhhhhhhhhh, 8) == 43046721
    assert candidate(gggg, gggg, 5) == 243
    assert candidate(jj, jj, 6) == 1
    assert candidate(uuuuuuuuu, uuuuuuuuu, 10) == 73741817
    assert candidate(qvx, vxq, 8) == 85
    assert candidate(nolnqlgqcs, jkguybcfcu, 179216079747558) == 0
    assert candidate(xpk, xpk, 6) == 22
    assert candidate(xzoyb, bxzoy, 5) == 205
    assert candidate(krxjvvg, krxjvvg, 2) == 6
    assert candidate(ks, sk, 2) == 0
    assert candidate(ty, ty, 6) == 1
    assert candidate(otototot, totototo, 7) == 411772
    assert candidate(uoaowbdznp, npuoaowbdz, 10) == 348678440


def test_check():
    check(numberOfWays)


### Metadata below ###
# question_id = 3024
# question_title = String Transformation
# question_title_slug = string-transformation
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 140
# question_dislikes = 19