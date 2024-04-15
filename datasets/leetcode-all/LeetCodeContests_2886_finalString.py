def finalString(s: str) -> str:
    """
    Your laptop keyboard is faulty, and whenever you type a character 'i' on it, it reverses the string that you have written. Typing other characters works as expected.
    
    You are given a 0-indexed string s, and you type each character of s using your faulty keyboard.
    
    Return the final string that will be present on your laptop screen.
    
    Example 1:
    
    Input: s = "string"
    Output: "rtsng"
    Explanation:
    After typing first character, the text on the screen is "s".
    After the second character, the text is "st".
    After the third character, the text is "str".
    Since the fourth character is an 'i', the text gets reversed and becomes "rts".
    After the fifth character, the text is "rtsn".
    After the sixth character, the text is "rtsng".
    Therefore, we return "rtsng".
    
    Example 2:
    
    Input: s = "poiinter"
    Output: "ponter"
    Explanation:
    After the first character, the text on the screen is "p".
    After the second character, the text is "po".
    Since the third character you type is an 'i', the text gets reversed and becomes "op".
    Since the fourth character you type is an 'i', the text gets reversed and becomes "po".
    After the fifth character, the text is "pon".
    After the sixth character, the text is "pont".
    After the seventh character, the text is "ponte".
    After the eighth character, the text is "ponter".
    Therefore, we return "ponter".
    
    Constraints:
    
     * 1 <= s.length <= 100
     * s consists of lowercase English letters.
     * s[0] != 'i'
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(string) == "rtsng"
    assert candidate(poiinter) == "ponter"
    assert candidate(goci) == "cog"
    assert candidate(ksi) == "sk"
    assert candidate(fii) == "f"
    assert candidate(qskyviiiii) == "vyksq"
    assert candidate(pft) == "pft"
    assert candidate(viwif) == "wvf"
    assert candidate(wiie) == "we"
    assert candidate(kiis) == "ks"
    assert candidate(xihbosxitx) == "xsobhxtx"
    assert candidate(uwioili) == "lwuo"
    assert candidate(aapziai) == "aaapz"
    assert candidate(pviist) == "pvst"
    assert candidate(miiuiei) == "emu"
    assert candidate(diiiiq) == "dq"
    assert candidate(eirov) == "erov"
    assert candidate(niiiiisiii) == "sn"
    assert candidate(siiuii) == "su"
    assert candidate(piijciivq) == "pjcvq"
    assert candidate(tidtwitik) == "ttdtwk"
    assert candidate(z) == "z"
    assert candidate(ffyuidnn) == "uyffdnn"
    assert candidate(xitiiinix) == "nxtx"
    assert candidate(ciiiuifab) == "ucfab"
    assert candidate(x) == "x"
    assert candidate(v) == "v"
    assert candidate(liinii) == "ln"
    assert candidate(ziii) == "z"
    assert candidate(ei) == "e"
    assert candidate(tidiiiii) == "dt"
    assert candidate(krjiqjii) == "jrkqj"
    assert candidate(mxczii) == "mxcz"
    assert candidate(bz) == "bz"
    assert candidate(zbwri) == "rwbz"
    assert candidate(biiq) == "bq"
    assert candidate(mmiiliir) == "mmlr"
    assert candidate(plibeici) == "clpbe"
    assert candidate(cii) == "c"
    assert candidate(wiilg) == "wlg"
    assert candidate(cdidi) == "dcd"
    assert candidate(fsq) == "fsq"
    assert candidate(hkjciaiii) == "ahkjc"
    assert candidate(l) == "l"
    assert candidate(vilcoizi) == "zvlco"
    assert candidate(tgigivipx) == "vgtgpx"
    assert candidate(ri) == "r"
    assert candidate(kficiiioiy) == "ofkcy"
    assert candidate(o) == "o"
    assert candidate(piifwiiit) == "wfpt"
    assert candidate(sifsiui) == "usfs"
    assert candidate(sxiuiiiii) == "usx"
    assert candidate(tiiiihiw) == "htw"
    assert candidate(ko) == "ko"
    assert candidate(gagi) == "gag"
    assert candidate(yyigiir) == "yygr"
    assert candidate(jimiiaci) == "camj"
    assert candidate(xiiiei) == "ex"
    assert candidate(hwi) == "wh"
    assert candidate(ji) == "j"
    assert candidate(heii) == "he"
    assert candidate(zitjcq) == "ztjcq"
    assert candidate(upmipaw) == "mpupaw"
    assert candidate(fiixkgp) == "fxkgp"
    assert candidate(ldr) == "ldr"
    assert candidate(kiboiithi) == "htobk"
    assert candidate(svcii) == "svc"
    assert candidate(d) == "d"
    assert candidate(edgijwiua) == "wjedgua"
    assert candidate(wiidqoiwov) == "oqdwwov"
    assert candidate(zimxiiqqi) == "qqxmz"
    assert candidate(githpgiini) == "ngphtg"
    assert candidate(fy) == "fy"
    assert candidate(hesi) == "seh"
    assert candidate(eiiii) == "e"
    assert candidate(be) == "be"
    assert candidate(rpi) == "pr"
    assert candidate(mi) == "m"
    assert candidate(wiiiiii) == "w"
    assert candidate(rbiiiii) == "br"
    assert candidate(diiii) == "d"
    assert candidate(poiiifl) == "opfl"
    assert candidate(loifiicii) == "olfc"
    assert candidate(bii) == "b"
    assert candidate(nirii) == "nr"
    assert candidate(wiigipio) == "pwgo"
    assert candidate(gimliibin) == "blmgn"
    assert candidate(zi) == "z"
    assert candidate(tjn) == "tjn"
    assert candidate(ly) == "ly"
    assert candidate(sqzviyiimi) == "mysqzv"
    assert candidate(jhmaxm) == "jhmaxm"
    assert candidate(py) == "py"
    assert candidate(yyilwiib) == "yylwb"
    assert candidate(ryjiilj) == "ryjlj"
    assert candidate(tnokpgfii) == "tnokpgf"
    assert candidate(niihiliiv) == "hnlv"
    assert candidate(gvhms) == "gvhms"
    assert candidate(yg) == "yg"
    assert candidate(eiiiuizgi) == "gzeu"


def test_check():
    check(finalString)


### Metadata below ###
# question_id = 2886
# question_title = Faulty Keyboard
# question_title_slug = faulty-keyboard
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 343
# question_dislikes = 5