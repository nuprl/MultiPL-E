def canBeEqual(s1: str, s2: str) -> bool:
    """
    You are given two strings s1 and s2, both of length 4, consisting of lowercase English letters.
    
    You can apply the following operation on any of the two strings any number of times:
    
     * Choose any two indices i and j such that j - i = 2, then swap the two characters at those indices in the string.
    
    Return true if you can make the strings s1 and s2 equal, and false otherwise.
    
    Example 1:
    
    Input: s1 = "abcd", s2 = "cdab"
    Output: true
    Explanation: We can do the following operations on s1:
    - Choose the indices i = 0, j = 2. The resulting string is s1 = "cbad".
    - Choose the indices i = 1, j = 3. The resulting string is s1 = "cdab" = s2.
    
    Example 2:
    
    Input: s1 = "abcd", s2 = "dacb"
    Output: false
    Explanation: It is not possible to make the two strings equal.
    
    
    Constraints:
    
     * s1.length == s2.length == 4
     * s1 and s2 consist only of lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(abcd, cdab) == True
    assert candidate(abcd, dacb) == False
    assert candidate(gudo, ogdu) == False
    assert candidate(bnxw, bwxn) == True
    assert candidate(zzon, zozn) == False
    assert candidate(cmpr, rmcp) == False
    assert candidate(qnde, flsi) == False
    assert candidate(vofo, oofv) == False
    assert candidate(xsvc, vcxs) == True
    assert candidate(hvsz, hzsv) == True
    assert candidate(ifjz, jzfi) == False
    assert candidate(zrmq, mrzq) == True
    assert candidate(hazw, pfmp) == False
    assert candidate(kina, kina) == True
    assert candidate(fymg, famj) == False
    assert candidate(riti, riti) == True
    assert candidate(goze, gezo) == True
    assert candidate(seeo, vfvm) == False
    assert candidate(ybyd, himj) == False
    assert candidate(gcdm, dmgc) == True
    assert candidate(kvne, nekv) == True
    assert candidate(cbyo, cbyo) == True
    assert candidate(fezu, zufe) == True
    assert candidate(homs, fhdu) == False
    assert candidate(zlek, zlek) == True
    assert candidate(bxqt, xbtq) == False
    assert candidate(waso, wyjd) == False
    assert candidate(nibi, seua) == False
    assert candidate(oynw, sgxl) == False
    assert candidate(ehui, uhei) == True
    assert candidate(vchn, jfwr) == False
    assert candidate(zgmt, zgmt) == True
    assert candidate(eobz, boez) == True
    assert candidate(zpzg, zzpg) == False
    assert candidate(bbfp, fbbp) == True
    assert candidate(vxqp, xpvq) == False
    assert candidate(ihtv, ixji) == False
    assert candidate(ahsk, aksh) == True
    assert candidate(zexw, miva) == False
    assert candidate(iicq, ihda) == False
    assert candidate(kunv, ziac) == False
    assert candidate(gqzd, gqzd) == True
    assert candidate(ppeb, ebpp) == True
    assert candidate(uouc, ucuo) == True
    assert candidate(laxa, xala) == True
    assert candidate(rbwe, wbre) == True
    assert candidate(mswt, wsmt) == True
    assert candidate(yfyz, deyv) == False
    assert candidate(jlai, alji) == True
    assert candidate(uliu, bsmu) == False
    assert candidate(bhag, kuws) == False
    assert candidate(bvwr, wrbv) == True
    assert candidate(safs, safs) == True
    assert candidate(hzfp, hpfz) == True
    assert candidate(xide, dixe) == True
    assert candidate(qpye, qpye) == True
    assert candidate(zaus, zsua) == True
    assert candidate(lpsc, cslp) == False
    assert candidate(taxc, taxc) == True
    assert candidate(kkjc, kcjk) == True
    assert candidate(pshr, prhs) == True
    assert candidate(kpdr, djoe) == False
    assert candidate(vzla, lzva) == True
    assert candidate(tcar, tacr) == False
    assert candidate(zkyt, yfzr) == False
    assert candidate(puwg, pgwu) == True
    assert candidate(ownv, ovnw) == True
    assert candidate(rayz, bpnf) == False
    assert candidate(zbwg, wbzg) == True
    assert candidate(rypk, pyrk) == True
    assert candidate(qchw, bcqn) == False
    assert candidate(qtpf, qfpt) == True
    assert candidate(apnl, nlap) == True
    assert candidate(pkmh, mkph) == True
    assert candidate(ouxw, xuow) == True
    assert candidate(dlgd, gdld) == False
    assert candidate(xbcx, cxxb) == True
    assert candidate(eaba, uaul) == False
    assert candidate(fyro, rofy) == True
    assert candidate(bzqb, bzqb) == True
    assert candidate(zyjv, xjzr) == False
    assert candidate(jdvv, djvv) == False
    assert candidate(nyxb, ocry) == False
    assert candidate(gxlx, lxgx) == True
    assert candidate(kgkr, krkg) == True
    assert candidate(edfw, fdew) == True
    assert candidate(vxkq, kqxv) == False
    assert candidate(qnjc, jivc) == False
    assert candidate(zzaf, azzf) == True
    assert candidate(esgr, gres) == True
    assert candidate(meuu, yqlh) == False
    assert candidate(gjda, djga) == True
    assert candidate(qaqz, qaqz) == True
    assert candidate(legy, lyge) == True
    assert candidate(eeum, emue) == True
    assert candidate(vsvs, vsvs) == True
    assert candidate(mxlk, mxlk) == True
    assert candidate(nbre, renb) == True
    assert candidate(erfk, gmfy) == False
    assert candidate(gsic, snvs) == False


def test_check():
    check(canBeEqual)


### Metadata below ###
# question_id = 2999
# question_title = Check if Strings Can be Made Equal With Operations I
# question_title_slug = check-if-strings-can-be-made-equal-with-operations-i
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 164
# question_dislikes = 20