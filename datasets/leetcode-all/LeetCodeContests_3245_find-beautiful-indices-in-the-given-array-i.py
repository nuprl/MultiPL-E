from typing import List

def beautifulIndices(s: str, a: str, b: str, k: int) -> List[int]:
    """
    You are given a 0-indexed string s, a string a, a string b, and an integer k.
    An index i is beautiful if:
    
    0 <= i <= s.length - a.length
    s[i..(i + a.length - 1)] == a
    There exists an index j such that:
    	
    0 <= j <= s.length - b.length
    s[j..(j + b.length - 1)] == b
    |j - i| <= k
    
    
    
    Return the array that contains beautiful indices in sorted order from smallest to largest.
    
    Example 1:
    
    Input: s = "isawsquirrelnearmysquirrelhouseohmy", a = "my", b = "squirrel", k = 15
    Output: [16,33]
    Explanation: There are 2 beautiful indices: [16,33].
    - The index 16 is beautiful as s[16..17] == "my" and there exists an index 4 with s[4..11] == "squirrel" and |16 - 4| <= 15.
    - The index 33 is beautiful as s[33..34] == "my" and there exists an index 18 with s[18..25] == "squirrel" and |33 - 18| <= 15.
    Thus we return [16,33] as the result.
    
    Example 2:
    
    Input: s = "abcd", a = "a", b = "a", k = 4
    Output: [0]
    Explanation: There is 1 beautiful index: [0].
    - The index 0 is beautiful as s[0..0] == "a" and there exists an index 0 with s[0..0] == "a" and |0 - 0| <= 4.
    Thus we return [0] as the result.
    
    
    Constraints:
    
    1 <= k <= s.length <= 105
    1 <= a.length, b.length <= 10
    s, a, and b contain only lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(isawsquirrelnearmysquirrelhouseohmy, my, squirrel, 15) == [16,33]
    assert candidate(abcd, a, a, 4) == [0]
    assert candidate(sqgrt, rt, sq, 3) == [3]
    assert candidate(mquz, tklr, caz, 4) == []
    assert candidate(wl, xjigt, wl, 2) == []
    assert candidate(bavgoc, ba, c, 6) == [0]
    assert candidate(xpcp, yxnod, xpc, 4) == []
    assert candidate(lahhnlwx, hhnlw, ty, 6) == []
    assert candidate(dexgscgecd, gscge, d, 6) == [3]
    assert candidate(vjrao, vjr, yxpsw, 5) == []
    assert candidate(oo, swhup, o, 1) == []
    assert candidate(bxlzgxc, ducf, xlzgx, 3) == []
    assert candidate(wetlgztzm, box, wetl, 4) == []
    assert candidate(ocmm, m, oc, 3) == [2,3]
    assert candidate(goxmox, gibs, ox, 6) == []
    assert candidate(kzlrqzldvy, zl, tfsr, 9) == []
    assert candidate(qhd, hd, od, 1) == []
    assert candidate(bozpeh, bozp, vrjn, 2) == []
    assert candidate(ggfsg, gfsg, g, 4) == [1]
    assert candidate(fape, vq, ap, 4) == []
    assert candidate(isitbenom, pmng, itben, 5) == []
    assert candidate(gw, ln, gw, 1) == []
    assert candidate(jhu, sio, xnx, 3) == []
    assert candidate(elcklvcvdg, lck, e, 5) == [1]
    assert candidate(subsu, tdo, su, 1) == []
    assert candidate(jqcdc, c, d, 2) == [2,4]
    assert candidate(hhvc, gfwo, hh, 4) == []
    assert candidate(tyoq, vhjit, yoq, 2) == []
    assert candidate(rtbp, migjb, es, 2) == []
    assert candidate(gkkstqvl, gkkst, xszl, 2) == []
    assert candidate(bc, spzk, wsick, 1) == []
    assert candidate(gyalx, neet, rbhl, 3) == []
    assert candidate(qo, agt, xrh, 2) == []
    assert candidate(rinzbrrr, nzb, r, 2) == [2]
    assert candidate(tjly, j, n, 2) == []
    assert candidate(frkxslnnn, rkxsl, n, 2) == []
    assert candidate(cffczbccc, ff, c, 9) == [1]
    assert candidate(uiddqbeoaw, iddq, rlr, 6) == []
    assert candidate(fh, ywab, qcjyl, 2) == []
    assert candidate(gdbm, gdbm, uefwm, 3) == []
    assert candidate(bpcwswu, zi, pcwsw, 1) == []
    assert candidate(dh, jmcds, nytk, 1) == []
    assert candidate(qjgckhiif, hiif, jgc, 4) == [5]
    assert candidate(qyixufgyk, y, ixuf, 5) == [1,7]
    assert candidate(wiwiwinwio, hm, wi, 8) == []
    assert candidate(ffnlge, bjt, pavkr, 6) == []
    assert candidate(rj, m, umg, 2) == []
    assert candidate(bkgqxl, yufy, kgq, 1) == []
    assert candidate(hhcwp, sixek, cwp, 4) == []
    assert candidate(czr, cz, wxxql, 3) == []
    assert candidate(tdbnme, t, dbnme, 4) == [0]
    assert candidate(px, acgz, jaxel, 2) == []
    assert candidate(wfa, fyntx, a, 1) == []
    assert candidate(ixfkxfld, ixfk, urkke, 6) == []
    assert candidate(kmjvlkjy, gll, vlk, 6) == []
    assert candidate(bsbsvnmvnm, vnm, bs, 7) == [4,7]
    assert candidate(uzqauzqw, uzq, psnso, 2) == []
    assert candidate(fsvkche, yot, svkc, 1) == []
    assert candidate(cwwzmfzz, fnlgc, cwwzm, 6) == []
    assert candidate(profguo, o, oyzje, 6) == []
    assert candidate(ckbdnw, djpc, ckbdn, 5) == []
    assert candidate(ankfahcorr, r, kfah, 7) == [8,9]
    assert candidate(ahjzfg, hjzf, zs, 6) == []
    assert candidate(eueuau, u, e, 3) == [1,3,5]
    assert candidate(etuwwhwljf, uwwh, efcuq, 3) == []
    assert candidate(vvjhgg, g, kj, 1) == []
    assert candidate(igytmsmsgx, msmsg, gyt, 3) == [4]
    assert candidate(cheoeo, eo, y, 1) == []
    assert candidate(gqzf, cgpdn, zf, 1) == []
    assert candidate(zapqwtmx, apqwt, m, 1) == []
    assert candidate(klxtee, e, klx, 2) == []
    assert candidate(xa, gzsj, oooq, 2) == []
    assert candidate(gxoxqgxoxq, gxoxq, x, 2) == [0,5]
    assert candidate(lsuo, d, uo, 3) == []
    assert candidate(yhi, ph, yhi, 3) == []
    assert candidate(cj, j, em, 2) == []
    assert candidate(clxzclxz, ge, clxz, 5) == []
    assert candidate(gjtcpyiniv, cpyi, hjvtq, 9) == []
    assert candidate(kyrvedszzo, rve, y, 3) == [2]
    assert candidate(makolbcrme, qlhpf, akol, 9) == []
    assert candidate(vgxshd, vgx, en, 2) == []
    assert candidate(wfvxfzut, wfv, ut, 6) == [0]
    assert candidate(xxtxxuftxt, tx, x, 2) == [2,7]
    assert candidate(cwtybs, wgfez, cwty, 4) == []
    assert candidate(opnkctux, op, nkctu, 5) == [0]
    assert candidate(swswmcsksw, mcsk, sw, 4) == [4]
    assert candidate(qqnb, q, q, 2) == [0,1]
    assert candidate(tt, t, q, 1) == []
    assert candidate(lllclbii, l, i, 7) == [0,1,2,4]
    assert candidate(oanyzue, yzu, oan, 5) == [3]
    assert candidate(opmfgzthj, opmf, g, 9) == [0]
    assert candidate(uiddidde, idd, sal, 7) == []
    assert candidate(gzzau, za, rwu, 2) == []
    assert candidate(srpxqurxx, nsr, x, 3) == []
    assert candidate(sxaono, jy, xaon, 6) == []
    assert candidate(acxtjiova, acx, tjiov, 3) == [0]
    assert candidate(iltazkww, k, z, 6) == [5]
    assert candidate(ltxbhpi, cjfbb, ltxb, 5) == []
    assert candidate(gysgysh, gys, qzvae, 5) == []
    assert candidate(zypvgt, zypv, ljxni, 4) == []


def test_check():
    check(beautifulIndices)


### Metadata below ###
# question_id = 3245
# question_title = Find Beautiful Indices in the Given Array I
# question_title_slug = find-beautiful-indices-in-the-given-array-i
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 91
# question_dislikes = 21