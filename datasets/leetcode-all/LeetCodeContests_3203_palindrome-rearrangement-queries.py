from typing import List

def canMakePalindromeQueries(s: str, queries: List[List[int]]) -> List[bool]:
    """
    You are given a 0-indexed string s having an even length n.
    You are also given a 0-indexed 2D integer array, queries, where queries[i] = [ai, bi, ci, di].
    For each query i, you are allowed to perform the following operations:
    
    Rearrange the characters within the substring s[ai:bi], where 0 <= ai <= bi < n / 2.
    Rearrange the characters within the substring s[ci:di], where n / 2 <= ci <= di < n.
    
    For each query, your task is to determine whether it is possible to make s a palindrome by performing the operations.
    Each query is answered independently of the others.
    Return a 0-indexed array answer, where answer[i] == true if it is possible to make s a palindrome by performing operations specified by the ith query, and false otherwise.
    
    A substring is a contiguous sequence of characters within a string.
    s[x:y] represents the substring consisting of characters from the index x to index y in s, both inclusive.
    
    
    Example 1:
    
    Input: s = "abcabc", queries = [[1,1,3,5],[0,2,5,5]]
    Output: [true,true]
    Explanation: In this example, there are two queries:
    In the first query:
    - a0 = 1, b0 = 1, c0 = 3, d0 = 5.
    - So, you are allowed to rearrange s[1:1] => abcabc and s[3:5] => abcabc.
    - To make s a palindrome, s[3:5] can be rearranged to become => abccba.
    - Now, s is a palindrome. So, answer[0] = true.
    In the second query:
    - a1 = 0, b1 = 2, c1 = 5, d1 = 5.
    - So, you are allowed to rearrange s[0:2] => abcabc and s[5:5] => abcabc.
    - To make s a palindrome, s[0:2] can be rearranged to become => cbaabc.
    - Now, s is a palindrome. So, answer[1] = true.
    
    Example 2:
    
    Input: s = "abbcdecbba", queries = [[0,2,7,9]]
    Output: [false]
    Explanation: In this example, there is only one query.
    a0 = 0, b0 = 2, c0 = 7, d0 = 9.
    So, you are allowed to rearrange s[0:2] => abbcdecbba and s[7:9] => abbcdecbba.
    It is not possible to make s a palindrome by rearranging these substrings because s[3:6] is not a palindrome.
    So, answer[0] = false.
    Example 3:
    
    Input: s = "acbcab", queries = [[1,2,4,5]]
    Output: [true]
    Explanation: In this example, there is only one query.
    a0 = 1, b0 = 2, c0 = 4, d0 = 5.
    So, you are allowed to rearrange s[1:2] => acbcab and s[4:5] => acbcab.
    To make s a palindrome s[1:2] can be rearranged to become abccab.
    Then, s[4:5] can be rearranged to become abccba.
    Now, s is a palindrome. So, answer[0] = true.
    
    Constraints:
    
    2 <= n == s.length <= 105
    1 <= queries.length <= 105
    queries[i].length == 4
    ai == queries[i][0], bi == queries[i][1]
    ci == queries[i][2], di == queries[i][3]
    0 <= ai <= bi < n / 2
    n / 2 <= ci <= di < n 
    n is even.
    s consists of only lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(abcabc, [[1, 1, 3, 5], [0, 2, 5, 5]]) == [True,True]
    assert candidate(abbcdecbba, [[0, 2, 7, 9]]) == [False]
    assert candidate(acbcab, [[1, 2, 4, 5]]) == [True]
    assert candidate(bcdbdc, [[1, 2, 3, 3]]) == [False]
    assert candidate(bb, [[0, 0, 1, 1]]) == [True]
    assert candidate(eoquueqo, [[3, 3, 6, 6]]) == [False]
    assert candidate(dd, [[0, 0, 1, 1]]) == [True]
    assert candidate(ceddceddcc, [[0, 1, 6, 8]]) == [False]
    assert candidate(bdbd, [[0, 0, 2, 3]]) == [True]
    assert candidate(eeee, [[0, 1, 2, 3]]) == [True]
    assert candidate(deebdeeddb, [[1, 2, 5, 7]]) == [False]
    assert candidate(xwaswsxwaw, [[1, 3, 5, 6]]) == [False]
    assert candidate(askloakosala, [[2, 4, 7, 10]]) == [False]
    assert candidate(bbccbb, [[0, 1, 4, 5]]) == [True]
    assert candidate(djaypzjpyzad, [[0, 3, 7, 8]]) == [False]
    assert candidate(ajvnbnznjnzbva, [[5, 6, 10, 11]]) == [False]
    assert candidate(vbeptwzvtwpzbe, [[3, 6, 10, 11]]) == [False]
    assert candidate(cababc, [[1, 2, 3, 4]]) == [True]
    assert candidate(cbbbbc, [[1, 1, 5, 5]]) == [True]
    assert candidate(qupzexxhqxpzhxeu, [[2, 4, 8, 12]]) == [False]
    assert candidate(cdbdbc, [[1, 2, 3, 3]]) == [True]
    assert candidate(odaxusaweuasuoeudxwa, [[0, 5, 10, 14]]) == [False]
    assert candidate(ujfscqolkwjucoswlkfq, [[1, 9, 17, 18]]) == [False]
    assert candidate(ceacea, [[0, 2, 3, 5]]) == [True]
    assert candidate(bnjzcgmnecxxbmnjngxzecxc, [[8, 9, 19, 22]]) == [False]
    assert candidate(daeaed, [[0, 2, 3, 3]]) == [True]
    assert candidate(ddaadd, [[0, 2, 3, 4]]) == [True]
    assert candidate(ddedde, [[0, 2, 4, 5]]) == [True]
    assert candidate(pmzwetzhzursuhmeswpzrztz, [[4, 6, 16, 17]]) == [False]
    assert candidate(qcryjkdzmqyoojzrckymdqyq, [[2, 8, 21, 22]]) == [False]
    assert candidate(qdltkndnclarncadtqnlldkr, [[3, 4, 15, 16]]) == [False]
    assert candidate(ecbbce, [[0, 1, 3, 5]]) == [True]
    assert candidate(eczecz, [[0, 0, 3, 5]]) == [True]
    assert candidate(etuouqokbalafokfbuqaaoetlu, [[3, 11, 21, 23]]) == [False]
    assert candidate(mpepem, [[0, 2, 3, 4]]) == [True]
    assert candidate(nbpechkpmudbsenphdmsbbupck, [[6, 7, 18, 19]]) == [False]
    assert candidate(bccacacb, [[3, 3, 4, 7]]) == [True]
    assert candidate(stgjtzqwgkuadjgqugkwdtzast, [[5, 10, 13, 23]]) == [False]
    assert candidate(qiyikbayvhkcgxyaqckgxkhivbyi, [[5, 12, 17, 24]]) == [False]
    assert candidate(ceedceed, [[0, 1, 4, 7]]) == [True]
    assert candidate(rcguwczbjhjhgqrggqcbwjzhjuch, [[5, 7, 16, 20]]) == [False]
    assert candidate(ckwbnmqmtzbixrrkixbtbqzmnwmc, [[1, 9, 15, 24]]) == [True]
    assert candidate(riirxzxuqpspoiixpirsoxrzpiuq, [[1, 6, 14, 21]]) == [False]
    assert candidate(geettndnusqufidtqdfgtsieenundu, [[6, 8, 19, 23]]) == [False]
    assert candidate(bb, [[0, 0, 1, 1], [0, 0, 1, 1]]) == [True,True]
    assert candidate(cc, [[0, 0, 1, 1], [0, 0, 1, 1]]) == [True,True]
    assert candidate(dd, [[0, 0, 1, 1], [0, 0, 1, 1]]) == [True,True]
    assert candidate(ee, [[0, 0, 1, 1], [0, 0, 1, 1]]) == [True,True]
    assert candidate(aeae, [[1, 1, 2, 3], [1, 1, 3, 3]]) == [True,False]
    assert candidate(eaae, [[0, 1, 3, 3], [0, 0, 2, 3]]) == [True,True]
    assert candidate(eded, [[0, 1, 2, 3], [1, 1, 2, 3]]) == [True,True]
    assert candidate(lrlr, [[0, 1, 2, 3], [0, 0, 2, 2]]) == [True,False]
    assert candidate(dbaabd, [[0, 1, 5, 5], [1, 2, 4, 5]]) == [True,True]
    assert candidate(dcbcbd, [[0, 1, 4, 4], [0, 2, 3, 4]]) == [False,True]
    assert candidate(hykkyh, [[0, 0, 3, 4], [1, 2, 3, 4]]) == [True,True]
    assert candidate(lvrvrl, [[2, 2, 4, 5], [0, 2, 3, 4]]) == [False,True]
    assert candidate(adceaecd, [[3, 3, 5, 5], [0, 1, 4, 6]]) == [False,True]
    assert candidate(baadadba, [[1, 2, 4, 5], [0, 2, 4, 5]]) == [False,True]
    assert candidate(bceaabec, [[1, 3, 4, 7], [0, 2, 6, 6]]) == [True,True]
    assert candidate(ifchcifh, [[1, 2, 5, 6], [1, 1, 4, 6]]) == [False,False]
    assert candidate(adeeeeeaed, [[2, 4, 7, 9], [3, 4, 8, 8]]) == [True,False]
    assert candidate(aedbdbddea, [[4, 4, 7, 8], [2, 2, 8, 9]]) == [False,False]
    assert candidate(caeaaaaaec, [[0, 2, 5, 8], [0, 0, 5, 9]]) == [True,True]
    assert candidate(dbaccccdba, [[4, 4, 6, 7], [2, 3, 8, 9]]) == [False,False]
    assert candidate(deabadabea, [[0, 3, 7, 9], [0, 2, 5, 7]]) == [False,True]
    assert candidate(eddeededee, [[0, 3, 6, 9], [0, 0, 6, 9]]) == [False,False]
    assert candidate(eedbbedebb, [[2, 2, 6, 7], [2, 2, 5, 6]]) == [False,False]
    assert candidate(gvtkakgvat, [[1, 2, 7, 7], [2, 3, 7, 9]]) == [False,False]
    assert candidate(bzvvicviczbv, [[1, 2, 7, 8], [1, 4, 7, 8]]) == [False,False]
    assert candidate(ljccjajcljac, [[2, 4, 6, 10], [3, 5, 7, 9]]) == [False,False]
    assert candidate(rxvzvezvrvxe, [[1, 4, 8, 10], [3, 3, 10, 11]]) == [False,False]
    assert candidate(amgpelwpmlaewg, [[3, 4, 7, 9], [0, 6, 7, 10]]) == [False,True]
    assert candidate(leubdglmbglleudm, [[1, 3, 9, 14], [2, 6, 13, 14]]) == [False,False]
    assert candidate(ooxuznriuzrooixn, [[1, 3, 10, 12], [1, 4, 9, 13]]) == [False,False]
    assert candidate(nlaonaphinpnalohai, [[2, 5, 13, 13], [2, 7, 9, 14]]) == [False,False]
    assert candidate(rujokutobuttlysjusrtltuobkoytu, [[5, 6, 18, 23], [10, 13, 15, 26]]) == [False,False]
    assert candidate(bb, [[0, 0, 1, 1], [0, 0, 1, 1], [0, 0, 1, 1]]) == [True,True,True]
    assert candidate(cc, [[0, 0, 1, 1], [0, 0, 1, 1], [0, 0, 1, 1]]) == [True,True,True]
    assert candidate(dbdb, [[0, 0, 2, 2], [1, 1, 3, 3], [0, 1, 2, 3]]) == [False,False,True]
    assert candidate(ebbe, [[0, 1, 3, 3], [1, 1, 2, 2], [0, 0, 2, 3]]) == [True,True,True]
    assert candidate(acacaa, [[0, 1, 5, 5], [1, 1, 4, 4], [1, 2, 3, 4]]) == [False,False,True]
    assert candidate(bbaabb, [[0, 1, 4, 5], [0, 2, 3, 5], [2, 2, 5, 5]]) == [True,True,True]
    assert candidate(bbebbe, [[0, 1, 3, 5], [2, 2, 4, 5], [0, 1, 5, 5]]) == [True,False,False]
    assert candidate(ddaadd, [[1, 1, 4, 4], [0, 0, 4, 4], [0, 2, 3, 5]]) == [True,True,True]
    assert candidate(nlhhln, [[2, 2, 4, 5], [1, 2, 5, 5], [2, 2, 3, 3]]) == [True,True,True]
    assert candidate(zbebez, [[0, 2, 5, 5], [1, 1, 3, 5], [0, 2, 4, 5]]) == [True,True,True]
    assert candidate(cbcbbcbc, [[0, 2, 7, 7], [1, 2, 4, 7], [0, 2, 4, 5]]) == [True,True,True]
    assert candidate(deceecde, [[3, 3, 6, 7], [1, 2, 4, 5], [2, 3, 7, 7]]) == [True,False,False]
    assert candidate(fydyfyyd, [[0, 2, 4, 6], [1, 3, 4, 7], [2, 3, 6, 7]]) == [True,True,False]
    assert candidate(dccabcdbca, [[1, 3, 5, 8], [2, 4, 7, 7], [0, 2, 6, 9]]) == [False,False,False]
    assert candidate(eacbdeacbd, [[4, 4, 8, 9], [3, 4, 7, 9], [0, 0, 6, 8]]) == [False,False,False]
    assert candidate(eddaaedada, [[0, 1, 7, 8], [0, 1, 7, 8], [0, 3, 7, 9]]) == [False,False,False]
    assert candidate(vvsbgsvgbv, [[0, 1, 6, 9], [2, 3, 8, 9], [0, 0, 6, 7]]) == [False,False,False]
    assert candidate(sukesivksseuiv, [[2, 3, 11, 13], [5, 5, 7, 13], [2, 5, 8, 13]]) == [False,True,False]
    assert candidate(pbcjpsfxwtbcfjwpsptx, [[0, 4, 13, 13], [5, 5, 15, 18], [2, 3, 13, 18]]) == [False,False,False]
    assert candidate(natvhtruvwyutyvvnarhwt, [[5, 7, 14, 21], [0, 8, 11, 19], [2, 8, 11, 14]]) == [False,False,False]
    assert candidate(yjsjywxbriejyxieysrwbj, [[4, 5, 15, 19], [1, 9, 12, 17], [3, 6, 12, 18]]) == [False,False,False]
    assert candidate(ellaghdbmazdallhmegabddz, [[4, 6, 13, 19], [4, 11, 17, 17], [7, 10, 13, 16]]) == [False,False,False]
    assert candidate(wcfnhuaulqxbuuxafcwhnbql, [[5, 11, 13, 18], [7, 8, 18, 21], [3, 6, 21, 23]]) == [False,False,False]
    assert candidate(qyioinjmvpgpropimvqiygrnjp, [[1, 4, 15, 25], [1, 8, 19, 22], [4, 9, 18, 23]]) == [False,False,False]


def test_check():
    check(canMakePalindromeQueries)


### Metadata below ###
# question_id = 3203
# question_title = Palindrome Rearrangement Queries
# question_title_slug = palindrome-rearrangement-queries
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 73
# question_dislikes = 23