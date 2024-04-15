def beautifulSubstrings(s: str, k: int) -> int:
    """
    You are given a string s and a positive integer k.
    Let vowels and consonants be the number of vowels and consonants in a string.
    A string is beautiful if:
    
    vowels == consonants.
    (vowels * consonants) % k == 0, in other terms the multiplication of vowels and consonants is divisible by k.
    
    Return the number of non-empty beautiful substrings in the given string s.
    A substring is a contiguous sequence of characters in a string.
    Vowel letters in English are 'a', 'e', 'i', 'o', and 'u'.
    Consonant letters in English are every letter except vowels.
    
    Example 1:
    
    Input: s = "baeyh", k = 2
    Output: 2
    Explanation: There are 2 beautiful substrings in the given string.
    - Substring "baeyh", vowels = 2 (["a",e"]), consonants = 2 (["y","h"]).
    You can see that string "aeyh" is beautiful as vowels == consonants and vowels * consonants % k == 0.
    - Substring "baeyh", vowels = 2 (["a",e"]), consonants = 2 (["b","y"]). 
    You can see that string "baey" is beautiful as vowels == consonants and vowels * consonants % k == 0.
    It can be shown that there are only 2 beautiful substrings in the given string.
    
    Example 2:
    
    Input: s = "abba", k = 1
    Output: 3
    Explanation: There are 3 beautiful substrings in the given string.
    - Substring "abba", vowels = 1 (["a"]), consonants = 1 (["b"]). 
    - Substring "abba", vowels = 1 (["a"]), consonants = 1 (["b"]).
    - Substring "abba", vowels = 2 (["a","a"]), consonants = 2 (["b","b"]).
    It can be shown that there are only 3 beautiful substrings in the given string.
    
    Example 3:
    
    Input: s = "bcdf", k = 1
    Output: 0
    Explanation: There are no beautiful substrings in the given string.
    
    
    Constraints:
    
    1 <= s.length <= 1000
    1 <= k <= 1000
    s consists of only English lowercase letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(baeyh, 2) == 2
    assert candidate(abba, 1) == 3
    assert candidate(bcdf, 1) == 0
    assert candidate(ihroyeeb, 5) == 0
    assert candidate(uzuxpzou, 3) == 1
    assert candidate(ouuoeqd, 2) == 1
    assert candidate(eeebjoxxujuaeoqibd, 8) == 4
    assert candidate(ilougekqlovegioemdvu, 4) == 21
    assert candidate(tqaewreikaztwpfwnef, 8) == 3
    assert candidate(oykiuhsafgfjumnzb, 7) == 0
    assert candidate(ifvsa, 3) == 0
    assert candidate(svzauyuevujektj, 5) == 3
    assert candidate(urahjig, 2) == 2
    assert candidate(ime, 2) == 0
    assert candidate(oacghieut, 5) == 0
    assert candidate(aoluu, 3) == 0
    assert candidate(ioaoiciiuoziout, 1) == 5
    assert candidate(ouafupsuhid, 6) == 0
    assert candidate(ox, 2) == 0
    assert candidate(tlaiwoauazutusiaaui, 10) == 0
    assert candidate(caepeym, 2) == 2
    assert candidate(apyxvceue, 4) == 1
    assert candidate(imkqbb, 4) == 0
    assert candidate(caaz, 2) == 1
    assert candidate(pyicoy, 1) == 6
    assert candidate(uopmyrsntjhiroikup, 8) == 2
    assert candidate(aujfxqxcj, 5) == 0
    assert candidate(eeizejuoxeumz, 4) == 6
    assert candidate(uuouuaifnboeiulttio, 4) == 10
    assert candidate(woozzxd, 3) == 0
    assert candidate(pulorolqcvhafexui, 9) == 3
    assert candidate(hmuaewojioizoguvoaje, 3) == 4
    assert candidate(b, 1) == 0
    assert candidate(aiejouohnqnketinvat, 3) == 6
    assert candidate(mjiogpri, 2) == 3
    assert candidate(movbyaeouil, 3) == 2
    assert candidate(puureouausxmitvav, 6) == 2
    assert candidate(op, 1) == 1
    assert candidate(iuhoezpooxcohtlapolo, 1) == 39
    assert candidate(cioi, 2) == 0
    assert candidate(pueutaoyaxk, 6) == 0
    assert candidate(iiuresacruaaan, 3) == 3
    assert candidate(agntyaazvpejidwaph, 8) == 1
    assert candidate(wiybolyniexiibou, 6) == 2
    assert candidate(coiyakadxi, 2) == 8
    assert candidate(oraajoeruiakixj, 3) == 1
    assert candidate(jeayap, 1) == 7
    assert candidate(iu, 1) == 0
    assert candidate(awozoy, 2) == 3
    assert candidate(fheabmlsyeeeuoeogyz, 9) == 5
    assert candidate(eaizneuxi, 1) == 10
    assert candidate(uurqufaucsuoqljh, 4) == 14
    assert candidate(jrtept, 4) == 0
    assert candidate(olgioxooiejooosaed, 5) == 0
    assert candidate(uizoy, 2) == 1
    assert candidate(lswabfiujjhexzos, 4) == 5
    assert candidate(iuu, 1) == 0
    assert candidate(qeaxut, 1) == 7
    assert candidate(aojiau, 2) == 0
    assert candidate(oaiaaaargkonlcsoaygf, 5) == 2
    assert candidate(zoowrawkm, 4) == 3
    assert candidate(uqiwuoevkfhkkua, 4) == 6
    assert candidate(kavuaaeodvaxicm, 6) == 0
    assert candidate(qpxeceq, 1) == 6
    assert candidate(iaabaofuodcbek, 5) == 3
    assert candidate(eel, 1) == 1
    assert candidate(ikeuhe, 1) == 5
    assert candidate(lueikvo, 2) == 2
    assert candidate(oauau, 2) == 0
    assert candidate(qzoieeotieeakqraeao, 4) == 4
    assert candidate(ehaascocsdmgekni, 9) == 3
    assert candidate(euqeklniykiji, 5) == 0
    assert candidate(vaeiiioidiioxhduu, 7) == 0
    assert candidate(aa, 1) == 0
    assert candidate(chaua, 3) == 0
    assert candidate(edfrglfr, 3) == 0
    assert candidate(dqbe, 1) == 1
    assert candidate(ghooirorxge, 4) == 6
    assert candidate(fodartekaonq, 4) == 9
    assert candidate(feeanzkjpfehzeuni, 6) == 0
    assert candidate(ignoouesduu, 2) == 6
    assert candidate(yif, 2) == 0
    assert candidate(gondfjaeeuhbuuasgip, 10) == 0
    assert candidate(djooomsffoonelyeode, 3) == 14
    assert candidate(pgaimei, 4) == 2
    assert candidate(naipqentonee, 4) == 8
    assert candidate(bouov, 2) == 0
    assert candidate(lcuhoypz, 5) == 0
    assert candidate(g, 1) == 0
    assert candidate(qc, 2) == 0
    assert candidate(mhznea, 2) == 1
    assert candidate(uxvjixdujgyfauo, 8) == 1
    assert candidate(iyjkuox, 3) == 1
    assert candidate(xbjfoayfpafatnuyord, 3) == 3
    assert candidate(nvoede, 3) == 1
    assert candidate(usnuaxpaktrweatruu, 5) == 0
    assert candidate(euojmsora, 1) == 10
    assert candidate(iapgoi, 3) == 0
    assert candidate(uafuimcpxyeoixgbyeio, 5) == 3
    assert candidate(weuaatpu, 5) == 0


def test_check():
    check(beautifulSubstrings)


### Metadata below ###
# question_id = 3210
# question_title = Count Beautiful Substrings I
# question_title_slug = count-beautiful-substrings-i
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 102
# question_dislikes = 8