def minimumPushes(word: str) -> int:
    """
    You are given a string word containing distinct lowercase English letters.
    Telephone keypads have keys mapped with distinct collections of lowercase English letters, which can be used to form words by pushing them. For example, the key 2 is mapped with ["a","b","c"], we need to push the key one time to type "a", two times to type "b", and three times to type "c" .
    It is allowed to remap the keys numbered 2 to 9 to distinct collections of letters. The keys can be remapped to any amount of letters, but each letter must be mapped to exactly one key. You need to find the minimum number of times the keys will be pushed to type the string word.
    Return the minimum number of pushes needed to type word after remapping the keys.
    An example mapping of letters to keys on a telephone keypad is given below. Note that 1, *, #, and 0 do not map to any letters.
    
    
    Example 1:
    
    
    Input: word = "abcde"
    Output: 5
    Explanation: The remapped keypad given in the image provides the minimum cost.
    "a" -> one push on key 2
    "b" -> one push on key 3
    "c" -> one push on key 4
    "d" -> one push on key 5
    "e" -> one push on key 6
    Total cost is 1 + 1 + 1 + 1 + 1 = 5.
    It can be shown that no other mapping can provide a lower cost.
    
    Example 2:
    
    
    Input: word = "xycdefghij"
    Output: 12
    Explanation: The remapped keypad given in the image provides the minimum cost.
    "x" -> one push on key 2
    "y" -> two pushes on key 2
    "c" -> one push on key 3
    "d" -> two pushes on key 3
    "e" -> one push on key 4
    "f" -> one push on key 5
    "g" -> one push on key 6
    "h" -> one push on key 7
    "i" -> one push on key 8
    "j" -> one push on key 9
    Total cost is 1 + 2 + 1 + 2 + 1 + 1 + 1 + 1 + 1 + 1 = 12.
    It can be shown that no other mapping can provide a lower cost.
    
    
    Constraints:
    
    1 <= word.length <= 26
    word consists of lowercase English letters.
    All letters in word are distinct.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(abcde) == 5
    assert candidate(xycdefghij) == 12
    assert candidate(b) == 1
    assert candidate(d) == 1
    assert candidate(e) == 1
    assert candidate(f) == 1
    assert candidate(g) == 1
    assert candidate(h) == 1
    assert candidate(i) == 1
    assert candidate(k) == 1
    assert candidate(n) == 1
    assert candidate(o) == 1
    assert candidate(q) == 1
    assert candidate(u) == 1
    assert candidate(v) == 1
    assert candidate(w) == 1
    assert candidate(x) == 1
    assert candidate(bc) == 2
    assert candidate(cu) == 2
    assert candidate(dl) == 2
    assert candidate(dn) == 2
    assert candidate(ev) == 2
    assert candidate(gn) == 2
    assert candidate(gq) == 2
    assert candidate(hu) == 2
    assert candidate(jr) == 2
    assert candidate(ln) == 2
    assert candidate(lz) == 2
    assert candidate(mv) == 2
    assert candidate(mw) == 2
    assert candidate(sw) == 2
    assert candidate(wz) == 2
    assert candidate(amw) == 3
    assert candidate(bco) == 3
    assert candidate(btx) == 3
    assert candidate(cgp) == 3
    assert candidate(cjq) == 3
    assert candidate(clu) == 3
    assert candidate(clx) == 3
    assert candidate(crs) == 3
    assert candidate(csz) == 3
    assert candidate(dfp) == 3
    assert candidate(htv) == 3
    assert candidate(iwz) == 3
    assert candidate(kux) == 3
    assert candidate(nsv) == 3
    assert candidate(svz) == 3
    assert candidate(cfos) == 4
    assert candidate(demr) == 4
    assert candidate(dimo) == 4
    assert candidate(dnpt) == 4
    assert candidate(dorz) == 4
    assert candidate(fgkn) == 4
    assert candidate(fimn) == 4
    assert candidate(hior) == 4
    assert candidate(jkpy) == 4
    assert candidate(jluv) == 4
    assert candidate(knpv) == 4
    assert candidate(kopu) == 4
    assert candidate(lmpt) == 4
    assert candidate(ltuw) == 4
    assert candidate(qwxz) == 4
    assert candidate(abhoz) == 5
    assert candidate(aejwx) == 5
    assert candidate(agjnr) == 5
    assert candidate(aikmu) == 5
    assert candidate(ajkmv) == 5
    assert candidate(cflvx) == 5
    assert candidate(dhstu) == 5
    assert candidate(djmnx) == 5
    assert candidate(dlovx) == 5
    assert candidate(eglqy) == 5
    assert candidate(ejntw) == 5
    assert candidate(ekrsz) == 5
    assert candidate(fopuz) == 5
    assert candidate(jlnvz) == 5
    assert candidate(jnstu) == 5
    assert candidate(afikno) == 6
    assert candidate(almsyz) == 6
    assert candidate(bcehov) == 6
    assert candidate(bdmprt) == 6
    assert candidate(bfhmnu) == 6
    assert candidate(bfhpty) == 6
    assert candidate(bfjstu) == 6
    assert candidate(cdfjmw) == 6
    assert candidate(dfilps) == 6
    assert candidate(dmswyz) == 6
    assert candidate(dpqruw) == 6
    assert candidate(fhmprz) == 6
    assert candidate(gjqrvy) == 6
    assert candidate(ijopsv) == 6
    assert candidate(lmqrtz) == 6
    assert candidate(bxnqpha) == 7
    assert candidate(ekbfqat) == 7
    assert candidate(esoizcx) == 7
    assert candidate(fmteczo) == 7
    assert candidate(lrywetm) == 7
    assert candidate(lvbornx) == 7
    assert candidate(pesmonc) == 7
    assert candidate(pudymjw) == 7


def test_check():
    check(minimumPushes)


### Metadata below ###
# question_id = 3275
# question_title = Minimum Number of Pushes to Type Word I
# question_title_slug = minimum-number-of-pushes-to-type-word-i
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 39
# question_dislikes = 7