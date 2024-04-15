def sortVowels(s: str) -> str:
    """
    Given a 0-indexed string s, permute s to get a new string t such that:
    
     * All consonants remain in their original places. More formally, if there is an index i with 0 <= i < s.length such that s[i] is a consonant, then t[i] = s[i].
     * The vowels must be sorted in the nondecreasing order of their ASCII values. More formally, for pairs of indices i, j with 0 <= i < j < s.length such that s[i] and s[j] are vowels, then t[i] must not have a higher ASCII value than t[j].
    
    Return the resulting string.
    
    The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in lowercase or uppercase. Consonants comprise all letters that are not vowels.
    
    Example 1:
    
    Input: s = "lEetcOde"
    Output: "lEOtcede"
    Explanation: 'E', 'O', and 'e' are the vowels in s; 'l', 't', 'c', and 'd' are all consonants. The vowels are sorted according to their ASCII values, and the consonants remain in the same places.
    
    Example 2:
    
    Input: s = "lYmpH"
    Output: "lYmpH"
    Explanation: There are no vowels in s (all characters in s are consonants), so we return "lYmpH".
    
    
    Constraints:
    
     * 1 <= s.length <= 105
     * s consists only of letters of the English alphabet in uppercase and lowercase.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(lEetcOde) == "lEOtcede"
    assert candidate(lYmpH) == "lYmpH"
    assert candidate(mDVD) == "mDVD"
    assert candidate(xdX) == "xdX"
    assert candidate(xdE) == "xdE"
    assert candidate(RiQYo) == "RiQYo"
    assert candidate(LQRamBOHfq) == "LQROmBaHfq"
    assert candidate(UpjPbEnOj) == "EpjPbOnUj"
    assert candidate(ziF) == "ziF"
    assert candidate(WxkKdjhL) == "WxkKdjhL"
    assert candidate(uZcPmqAd) == "AZcPmqud"
    assert candidate(UjshJXjkjS) == "UjshJXjkjS"
    assert candidate(nElwWTQHJ) == "nElwWTQHJ"
    assert candidate(kwcJqvsgM) == "kwcJqvsgM"
    assert candidate(z) == "z"
    assert candidate(Pz) == "Pz"
    assert candidate(T) == "T"
    assert candidate(syRWvFi) == "syRWvFi"
    assert candidate(G) == "G"
    assert candidate(MuQYHVy) == "MuQYHVy"
    assert candidate(gsc) == "gsc"
    assert candidate(nynBd) == "nynBd"
    assert candidate(qUSUCJeJZt) == "qUSUCJeJZt"
    assert candidate(PoEvPD) == "PEovPD"
    assert candidate(SrSuArHDvA) == "SrSAArHDvu"
    assert candidate(zI) == "zI"
    assert candidate(zpVZt) == "zpVZt"
    assert candidate(dZVLG) == "dZVLG"
    assert candidate(EHhQZGJBbp) == "EHhQZGJBbp"
    assert candidate(aPLCji) == "aPLCji"
    assert candidate(HSe) == "HSe"
    assert candidate(HvDMPPU) == "HvDMPPU"
    assert candidate(LYACGrvJLZ) == "LYACGrvJLZ"
    assert candidate(RepLvwHFI) == "RIpLvwHFe"
    assert candidate(vjbObvLfs) == "vjbObvLfs"
    assert candidate(sKQwLo) == "sKQwLo"
    assert candidate(PoqU) == "PUqo"
    assert candidate(QgUxRvJTfH) == "QgUxRvJTfH"
    assert candidate(wUMnwnblpu) == "wUMnwnblpu"
    assert candidate(JpqXrPuMd) == "JpqXrPuMd"
    assert candidate(wdtDPSQdKl) == "wdtDPSQdKl"
    assert candidate(Dl) == "Dl"
    assert candidate(v) == "v"
    assert candidate(axRukCyOHm) == "OxRakCyuHm"
    assert candidate(sQyytiAh) == "sQyytAih"
    assert candidate(ieTwHeOR) == "OeTwHeiR"
    assert candidate(LLxyZ) == "LLxyZ"
    assert candidate(s) == "s"
    assert candidate(oefu) == "eofu"
    assert candidate(XV) == "XV"
    assert candidate(VkfjDpSH) == "VkfjDpSH"
    assert candidate(rg) == "rg"
    assert candidate(ecV) == "ecV"
    assert candidate(RUnxytMua) == "RUnxytMau"
    assert candidate(gUyMeyzOZo) == "gOyMUyzeZo"
    assert candidate(WEir) == "WEir"
    assert candidate(zZWs) == "zZWs"
    assert candidate(WULsDqIhp) == "WILsDqUhp"
    assert candidate(pw) == "pw"
    assert candidate(nOWxdSzo) == "nOWxdSzo"
    assert candidate(NfK) == "NfK"
    assert candidate(wXRFu) == "wXRFu"
    assert candidate(XXtjDoinAD) == "XXtjDAinoD"
    assert candidate(SGUzEv) == "SGEzUv"
    assert candidate(RFOvEt) == "RFEvOt"
    assert candidate(umQePdr) == "emQuPdr"
    assert candidate(wRqZ) == "wRqZ"
    assert candidate(blu) == "blu"
    assert candidate(QeOQEatFaW) == "QEOQaatFeW"
    assert candidate(jzWiXrYa) == "jzWaXrYi"
    assert candidate(xs) == "xs"
    assert candidate(DwROc) == "DwROc"
    assert candidate(XMhLlJd) == "XMhLlJd"
    assert candidate(uAmir) == "Aimur"
    assert candidate(PTlFpeAI) == "PTlFpAIe"
    assert candidate(XLYy) == "XLYy"
    assert candidate(vA) == "vA"
    assert candidate(y) == "y"
    assert candidate(C) == "C"
    assert candidate(wrnMlek) == "wrnMlek"
    assert candidate(JWbfCfGgf) == "JWbfCfGgf"
    assert candidate(OPGlnq) == "OPGlnq"
    assert candidate(DeOMW) == "DOeMW"
    assert candidate(xG) == "xG"
    assert candidate(ZcaBhfkWC) == "ZcaBhfkWC"
    assert candidate(pKa) == "pKa"
    assert candidate(DXSEKrfJCe) == "DXSEKrfJCe"
    assert candidate(xA) == "xA"
    assert candidate(Jb) == "Jb"
    assert candidate(SBQT) == "SBQT"
    assert candidate(LWRfYb) == "LWRfYb"
    assert candidate(tvLWAeGDFK) == "tvLWAeGDFK"
    assert candidate(jFkj) == "jFkj"
    assert candidate(zC) == "zC"
    assert candidate(ikYSsAveh) == "AkYSsevih"
    assert candidate(YXkS) == "YXkS"
    assert candidate(SOEo) == "SEOo"
    assert candidate(qoJx) == "qoJx"
    assert candidate(qGJbgTQ) == "qGJbgTQ"
    assert candidate(yiYYO) == "yOYYi"


def test_check():
    check(sortVowels)


### Metadata below ###
# question_id = 2887
# question_title = Sort Vowels in a String
# question_title_slug = sort-vowels-in-a-string
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 883
# question_dislikes = 50