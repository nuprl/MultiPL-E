def checkStrings(s1: str, s2: str) -> bool:
    """
    You are given two strings s1 and s2, both of length n, consisting of lowercase English letters.
    
    You can apply the following operation on any of the two strings any number of times:
    
     * Choose any two indices i and j such that i < j and the difference j - i is even, then swap the two characters at those indices in the string.
    
    Return true if you can make the strings s1 and s2 equal, and false otherwise.
    
    Example 1:
    
    Input: s1 = "abcdba", s2 = "cabdab"
    Output: true
    Explanation: We can apply the following operations on s1:
    - Choose the indices i = 0, j = 2. The resulting string is s1 = "cbadba".
    - Choose the indices i = 2, j = 4. The resulting string is s1 = "cbbdaa".
    - Choose the indices i = 1, j = 5. The resulting string is s1 = "cabdab" = s2.
    
    Example 2:
    
    Input: s1 = "abe", s2 = "bea"
    Output: false
    Explanation: It is not possible to make the two strings equal.
    
    
    Constraints:
    
     * n == s1.length == s2.length
     * 1 <= n <= 105
     * s1 and s2 consist only of lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(abe, bea) == False
    assert candidate(abcdba, cabdab) == True
    assert candidate(ublnlasppynwgx, ganplbuylnswpx) == True
    assert candidate(jghn, jghn) == True
    assert candidate(pqtsprqmvi, qrvqpitmps) == True
    assert candidate(aavizsxpqhxztrwi, zvisqatzpaxhixwr) == False
    assert candidate(slmqqdbrwyvm, qyldmmwsrqvb) == False
    assert candidate(shvqocguj, vqsghujco) == False
    assert candidate(ktjpralqanofuuqsyal, qjlornpasktfuyluaqa) == False
    assert candidate(mgflranpdjdkrh, fpcgobmkdxbzyl) == False
    assert candidate(usvpwcehhvlg, ehuvvshcwplg) == True
    assert candidate(jh, fy) == False
    assert candidate(kfqofkvsoiiirznw, hosthwbinxrsikkf) == False
    assert candidate(ppmfd, pfdpm) == True
    assert candidate(ntuuwwh, jyjwmdf) == False
    assert candidate(lcgcm, brdxe) == False
    assert candidate(hjswnccgwjcapko, acwjnjoscchgwpk) == False
    assert candidate(epjtzubboiallzd, dboilpzzjteualb) == True
    assert candidate(c, c) == True
    assert candidate(oziiqbotydegrm, ytizriobogqmed) == True
    assert candidate(ztmuzn, muztzn) == True
    assert candidate(jkzcqlh, hkqczlj) == True
    assert candidate(qnh, cmq) == False
    assert candidate(azagmtvhske, mkazstvhage) == True
    assert candidate(jitb, zqbg) == False
    assert candidate(tgznpamgczyvqjzvp, mpyzvzzjvaqntgpgc) == False
    assert candidate(tcl, lct) == True
    assert candidate(datuhdkoqe, hetddokuqa) == True
    assert candidate(ztnpdilyrxz, yxzitnrdlzp) == False
    assert candidate(vx, zv) == False
    assert candidate(tpfcyceq, fceqtpyc) == True
    assert candidate(rcugebinbszkhy, zkebryhcbginus) == True
    assert candidate(ryykp, rkpyy) == True
    assert candidate(lpyfmysemgoxgawwr, wfoyspygralemxgwm) == True
    assert candidate(bfylavpyffcnj, cljfbfyvpnayf) == True
    assert candidate(chhbmikpp, hpcimbkhp) == True
    assert candidate(nateujd, jeutnad) == False
    assert candidate(sxrjofoedghtplnex, sgdeolnepthfojrxx) == True
    assert candidate(ajvfujrczdciilihi, jcriaviuiflicdhzj) == False
    assert candidate(gajpuahzcexdunltldh, xxatubgvqzmxjvzcxah) == False
    assert candidate(hnisnfvikgrhkfoe, hgkivsifrekfonnh) == True
    assert candidate(fvfsxftpuemgpnkzz, mgknxpuztffvzepsf) == True
    assert candidate(zrwzpibwp, pwpiwzbrz) == True
    assert candidate(zoqpcssnhugxffcptsj, chgospjssfxnfpcuqzt) == False
    assert candidate(ldpjhj, jdlpjh) == False
    assert candidate(zodbh, pqdpy) == False
    assert candidate(mdcvitezgqur, mvigcqrdeztu) == False
    assert candidate(rdyau, dyrau) == False
    assert candidate(pyymcw, ptlqxp) == False
    assert candidate(ebicv, vibce) == False
    assert candidate(xkzknvrbvajwbj, rnkwzbvvxkjbja) == False
    assert candidate(zoxpiqxvnk, xvkpxinqoz) == False
    assert candidate(obhmqltgmoszljeyh, ogmmlbhoeysjtlhzq) == True
    assert candidate(wfsdirrheuglhfkbjk, wfsuhhglifkrebrdjk) == True
    assert candidate(shn, hsn) == False
    assert candidate(xdicugry, igucxdry) == True
    assert candidate(bkfmkrbybim, brbimkkmbyf) == True
    assert candidate(dwowyfgreakdvfi, yfiddfvwerkaowg) == True
    assert candidate(bdywnvbgmum, guymbwdbnmv) == False
    assert candidate(tmujoqerfvupnyy, uvortyfmuqypnje) == True
    assert candidate(hggckwudke, ylkgulkehd) == False
    assert candidate(zrppcm, okurkg) == False
    assert candidate(ennl, ennl) == True
    assert candidate(spznlxodciidngyvvkl, lnvnzdixivoglydscpk) == False
    assert candidate(nxezcoklmdbekyjp, cdkenlkyeomxjzbp) == True
    assert candidate(yui, iyu) == False
    assert candidate(zphe, hpze) == True
    assert candidate(oyjngnej, oynjjeng) == False
    assert candidate(kvwdssgl, wskxsdgv) == False
    assert candidate(ozzfbhzkowpcv, vzpwzkbhzfoco) == True
    assert candidate(h, h) == True
    assert candidate(mqkdv, kqvdm) == True
    assert candidate(hphfqesitgprud, tpisuhqhfgdrpe) == False
    assert candidate(yrbto, orytb) == True
    assert candidate(lvahby, ilbyaz) == False
    assert candidate(bbaiabphflgyfo, bhglybaoaipbff) == False
    assert candidate(uielps, uselpi) == True
    assert candidate(ftyhgkgwg, gtfhgwgky) == True
    assert candidate(mzrfxrwlliuoi, llrouzirwimfx) == True
    assert candidate(drofbzocwolcznzfi, wzocdnirzfbclozfo) == True
    assert candidate(popefwbkepdxy, pxbwpeekfoypd) == True
    assert candidate(swgzqluzcvhskegvdry, seuwkvclqzyvdsgrgzh) == True
    assert candidate(hik, ihk) == False
    assert candidate(zq, zq) == True
    assert candidate(igdzd, phcyi) == False
    assert candidate(cazutcxkhcklpuogt, ockghuukctcztxapl) == False
    assert candidate(bx, bx) == True
    assert candidate(bkujvjwgjzxdzuw, zgjubjwkwzxdujv) == True
    assert candidate(ujpudt, dtujpu) == True
    assert candidate(hkalpd, hlpkad) == True
    assert candidate(kbcpjzadbv, dsgzcapzao) == False
    assert candidate(rubbbf, rbbubf) == True
    assert candidate(ybudbyrlmiddsxks, nuyyabyisyptvdnb) == False
    assert candidate(wiijtcgqez, ctqzwjgiei) == False
    assert candidate(bgalfvefwmhodexazkd, fbgmdfholzakvxaweed) == False
    assert candidate(oxlphorosradotpshnt, hdotpaoorosrlhtsxpn) == False
    assert candidate(mnvnzakjaymsxhojq, oaxjoeanksmyqmglm) == False
    assert candidate(hsm, hsm) == True
    assert candidate(qgloiyhewunm, qehuwonmiylg) == True
    assert candidate(drdu, dudr) == True


def test_check():
    check(checkStrings)


### Metadata below ###
# question_id = 2978
# question_title = Check if Strings Can be Made Equal With Operations II
# question_title_slug = check-if-strings-can-be-made-equal-with-operations-ii
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 231
# question_dislikes = 2