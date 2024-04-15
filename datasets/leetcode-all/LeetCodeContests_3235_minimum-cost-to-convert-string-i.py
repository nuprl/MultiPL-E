from typing import List

def minimumCost(source: str, target: str, original: List[str], changed: List[str], cost: List[int]) -> int:
    """
    You are given two 0-indexed strings source and target, both of length n and consisting of lowercase English letters. You are also given two 0-indexed character arrays original and changed, and an integer array cost, where cost[i] represents the cost of changing the character original[i] to the character changed[i].
    You start with the string source. In one operation, you can pick a character x from the string and change it to the character y at a cost of z if there exists any index j such that cost[j] == z, original[j] == x, and changed[j] == y.
    Return the minimum cost to convert the string source to the string target using any number of operations. If it is impossible to convert source to target, return -1.
    Note that there may exist indices i, j such that original[j] == original[i] and changed[j] == changed[i].
    
    Example 1:
    
    Input: source = "abcd", target = "acbe", original = ["a","b","c","c","e","d"], changed = ["b","c","b","e","b","e"], cost = [2,5,5,1,2,20]
    Output: 28
    Explanation: To convert the string "abcd" to string "acbe":
    - Change value at index 1 from 'b' to 'c' at a cost of 5.
    - Change value at index 2 from 'c' to 'e' at a cost of 1.
    - Change value at index 2 from 'e' to 'b' at a cost of 2.
    - Change value at index 3 from 'd' to 'e' at a cost of 20.
    The total cost incurred is 5 + 1 + 2 + 20 = 28.
    It can be shown that this is the minimum possible cost.
    
    Example 2:
    
    Input: source = "aaaa", target = "bbbb", original = ["a","c"], changed = ["c","b"], cost = [1,2]
    Output: 12
    Explanation: To change the character 'a' to 'b' change the character 'a' to 'c' at a cost of 1, followed by changing the character 'c' to 'b' at a cost of 2, for a total cost of 1 + 2 = 3. To change all occurrences of 'a' to 'b', a total cost of 3 * 4 = 12 is incurred.
    
    Example 3:
    
    Input: source = "abcd", target = "abce", original = ["a"], changed = ["e"], cost = [10000]
    Output: -1
    Explanation: It is impossible to convert source to target because the value at index 3 cannot be changed from 'd' to 'e'.
    
    
    Constraints:
    
    1 <= source.length == target.length <= 105
    source, target consist of lowercase English letters.
    1 <= cost.length == original.length == changed.length <= 2000
    original[i], changed[i] are lowercase English letters.
    1 <= cost[i] <= 106
    original[i] != changed[i]
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(abcd, acbe, ['a', 'b', 'c', 'c', 'e', 'd'], ['b', 'c', 'b', 'e', 'b', 'e'], [2, 5, 5, 1, 2, 20]) == 28
    assert candidate(aaaa, bbbb, ['a', 'c'], ['c', 'b'], [1, 2]) == 12
    assert candidate(abcd, abce, ['a'], ['e'], [10000]) == -1
    assert candidate(aaaabadaaa, dbdadddbad, ['c', 'a', 'c', 'a', 'a', 'b', 'b', 'b', 'd', 'd', 'c'], ['a', 'c', 'b', 'd', 'b', 'c', 'a', 'd', 'c', 'b', 'd'], [7, 8, 11, 9, 7, 6, 4, 6, 9, 5, 9]) == 56
    assert candidate(aaadbdcdac, cdbabaddba, ['a', 'c', 'b', 'd', 'b', 'a', 'c'], ['c', 'a', 'd', 'b', 'c', 'b', 'd'], [7, 2, 1, 3, 6, 1, 7]) == 39
    assert candidate(aababdaacb, bcdcdcbdcb, ['a', 'd', 'd', 'a', 'c', 'b', 'c', 'a', 'c', 'd', 'b', 'b'], ['b', 'c', 'b', 'd', 'a', 'a', 'b', 'c', 'd', 'a', 'c', 'd'], [11, 4, 3, 2, 7, 11, 7, 6, 9, 2, 1, 7]) == 42
    assert candidate(aababdbddc, adcbbbcdba, ['a', 'd', 'b', 'a', 'd', 'c', 'd', 'b'], ['b', 'a', 'd', 'c', 'c', 'a', 'b', 'a'], [10, 6, 8, 3, 6, 10, 8, 6]) == 72
    assert candidate(aabbcabbdb, acddbabbdd, ['c', 'd', 'c', 'a', 'd', 'c', 'a', 'd', 'b', 'a', 'b'], ['d', 'b', 'a', 'c', 'c', 'b', 'b', 'a', 'd', 'd', 'c'], [5, 3, 8, 10, 9, 7, 8, 7, 5, 1, 10]) == 32
    assert candidate(aabbddccbc, abbbaabaca, ['a', 'b', 'c', 'b', 'a', 'd'], ['d', 'c', 'b', 'd', 'b', 'b'], [3, 8, 7, 6, 7, 10]) == -1
    assert candidate(aabdbaabaa, bdaacabcab, ['b', 'd', 'd', 'a', 'c', 'c', 'a', 'd', 'a', 'b'], ['c', 'c', 'b', 'd', 'b', 'd', 'b', 'a', 'c', 'a'], [9, 1, 7, 9, 2, 1, 3, 8, 8, 2]) == 43
    assert candidate(aacacaaccd, dadaacaabd, ['c', 'c', 'a', 'a', 'd', 'b', 'd', 'd'], ['b', 'd', 'd', 'b', 'b', 'c', 'c', 'a'], [7, 8, 9, 11, 4, 6, 9, 10]) == 77
    assert candidate(aacbabbacc, adbdbcbdaa, ['c', 'b', 'a', 'b', 'a', 'c', 'd', 'c', 'd'], ['b', 'c', 'b', 'd', 'd', 'a', 'b', 'd', 'c'], [2, 6, 7, 4, 7, 4, 3, 5, 6]) == 41
    assert candidate(aacbbabdad, ddadcababd, ['d', 'b', 'c', 'a', 'b', 'c', 'd', 'c', 'b', 'a', 'a'], ['c', 'd', 'd', 'b', 'c', 'b', 'b', 'a', 'a', 'c', 'd'], [7, 10, 4, 2, 7, 4, 4, 4, 6, 2, 8]) == 45
    assert candidate(aacbbbbcab, cdacdcddac, ['b', 'd', 'c', 'c', 'b', 'a'], ['c', 'c', 'b', 'a', 'a', 'd'], [4, 7, 9, 11, 3, 4]) == 67
    assert candidate(aacbcabcad, bbcadddcdd, ['b', 'a', 'd', 'a', 'b', 'c', 'a', 'd', 'd', 'b'], ['d', 'b', 'b', 'd', 'c', 'a', 'c', 'c', 'a', 'a'], [7, 7, 9, 8, 6, 3, 8, 2, 1, 5]) == 53
    assert candidate(aacbdbcdca, bbbdbcaacd, ['a', 'c', 'b', 'd', 'd', 'a', 'c', 'd'], ['c', 'b', 'c', 'c', 'b', 'd', 'd', 'a'], [9, 5, 4, 1, 2, 4, 7, 1]) == 47
    assert candidate(aadbbcdbbd, badddbdbac, ['c', 'd', 'c', 'd', 'b', 'a'], ['b', 'b', 'a', 'a', 'a', 'd'], [11, 4, 7, 8, 5, 2]) == -1
    assert candidate(aadbccbddd, cacdbabadc, ['d', 'b', 'c', 'd', 'a', 'a', 'c', 'b'], ['c', 'c', 'b', 'b', 'b', 'd', 'a', 'a'], [5, 8, 7, 2, 4, 7, 1, 5]) == 46
    assert candidate(aadbddcabd, bdcdccbada, ['d', 'a', 'a', 'b', 'd', 'b'], ['b', 'c', 'd', 'c', 'a', 'd'], [6, 10, 5, 8, 11, 4]) == -1
    assert candidate(aaddadccad, cbaaadbcba, ['c', 'a', 'a', 'd', 'c', 'c', 'b', 'b', 'a', 'd'], ['a', 'c', 'd', 'c', 'd', 'b', 'd', 'c', 'b', 'b'], [1, 10, 2, 8, 9, 1, 9, 10, 5, 1]) == 44
    assert candidate(aaddadcdba, caaaccbbca, ['b', 'b', 'c', 'd', 'b', 'c', 'a', 'a'], ['a', 'd', 'd', 'a', 'c', 'b', 'c', 'b'], [11, 7, 10, 8, 7, 5, 10, 10]) == 84
    assert candidate(abaacbbcaa, bdbdbcbdcd, ['d', 'a', 'd', 'a', 'b', 'b'], ['a', 'd', 'b', 'b', 'a', 'c'], [10, 9, 8, 11, 4, 11]) == -1
    assert candidate(abacaadcba, cadbadcdbd, ['b', 'd', 'c', 'a', 'b', 'd', 'b'], ['a', 'b', 'b', 'b', 'c', 'a', 'd'], [9, 10, 6, 2, 7, 10, 9]) == 89
    assert candidate(abacbadadc, aabbdaaccb, ['d', 'a', 'b', 'd', 'a', 'a', 'c', 'b', 'c', 'c', 'd', 'b'], ['c', 'b', 'a', 'a', 'd', 'c', 'b', 'c', 'd', 'a', 'b', 'd'], [2, 10, 3, 6, 4, 1, 5, 5, 11, 4, 2, 1]) == 28
    assert candidate(abadbbabcd, cdcbdddcbb, ['d', 'd', 'b', 'a', 'c', 'c', 'c', 'a'], ['c', 'a', 'a', 'c', 'b', 'd', 'a', 'd'], [2, 10, 11, 7, 6, 11, 7, 1]) == 79
    assert candidate(abadcadacc, cbabaddcba, ['a', 'd', 'a', 'b', 'c', 'a', 'd', 'b', 'b', 'd', 'c', 'c'], ['b', 'b', 'd', 'd', 'a', 'c', 'a', 'c', 'a', 'c', 'd', 'b'], [7, 6, 11, 11, 8, 10, 4, 11, 2, 3, 11, 7]) == 60
    assert candidate(abadcdadac, baddbccdac, ['d', 'c', 'd', 'c', 'b', 'a'], ['b', 'b', 'c', 'a', 'd', 'd'], [8, 5, 9, 1, 10, 2]) == 57
    assert candidate(abbaadacba, cdbbcadddd, ['d', 'a', 'd', 'c', 'b', 'b', 'c', 'd', 'c', 'a', 'a'], ['a', 'c', 'c', 'd', 'a', 'd', 'a', 'b', 'b', 'd', 'b'], [8, 3, 5, 8, 3, 9, 3, 4, 11, 4, 9]) == 50
    assert candidate(abbaddaacd, ccbbaccacc, ['d', 'd', 'a', 'b', 'c', 'b'], ['a', 'c', 'c', 'd', 'b', 'c'], [9, 8, 2, 8, 3, 1]) == 35
    assert candidate(abbbcabddb, bbccdbbadc, ['c', 'd', 'c', 'a', 'b', 'd', 'd', 'a', 'b', 'b'], ['d', 'a', 'b', 'c', 'c', 'b', 'c', 'd', 'a', 'd'], [3, 6, 9, 4, 9, 6, 9, 6, 10, 7]) == 60
    assert candidate(abbbcbabab, abcacbaddd, ['b', 'c', 'a', 'c', 'a', 'd', 'd', 'c'], ['a', 'b', 'd', 'a', 'b', 'b', 'c', 'd'], [11, 5, 8, 1, 7, 7, 1, 2]) == 77
    assert candidate(abbcaccabb, ddddddcacc, ['a', 'b', 'c', 'b', 'a', 'c', 'c'], ['c', 'c', 'd', 'a', 'd', 'a', 'b'], [2, 6, 10, 11, 9, 7, 3]) == 82
    assert candidate(abbcaccdba, accadababc, ['d', 'a', 'a', 'c', 'b', 'd'], ['c', 'd', 'b', 'a', 'a', 'b'], [7, 4, 10, 11, 5, 5]) == 99
    assert candidate(abbdaccada, acddaccddc, ['b', 'b', 'c', 'a', 'd', 'a', 'd'], ['a', 'c', 'b', 'b', 'b', 'c', 'c'], [4, 9, 3, 1, 11, 3, 3]) == -1
    assert candidate(abcabdaddb, dcbadaaacc, ['d', 'b', 'a', 'a', 'c', 'c'], ['c', 'c', 'd', 'b', 'b', 'a'], [3, 3, 9, 3, 7, 6]) == 61
    assert candidate(abcadcabaa, bbbdddcaba, ['b', 'd', 'c', 'd', 'a', 'c', 'b', 'b'], ['c', 'b', 'a', 'a', 'c', 'b', 'd', 'a'], [1, 8, 4, 3, 8, 3, 11, 5]) == 74
    assert candidate(abccabacaa, aaabacbcbb, ['c', 'c', 'd', 'a', 'd', 'b', 'c', 'b', 'd', 'a'], ['b', 'a', 'a', 'b', 'b', 'd', 'd', 'a', 'c', 'c'], [9, 10, 8, 6, 9, 10, 2, 6, 6, 8]) == 57
    assert candidate(abdaababbb, dbdadabadc, ['a', 'c', 'c', 'b', 'd', 'a', 'b'], ['c', 'a', 'b', 'c', 'b', 'b', 'd'], [3, 4, 6, 1, 8, 11, 6]) == 56
    assert candidate(abdbaaacaa, abbbccccad, ['a', 'a', 'c', 'b', 'd', 'd', 'b'], ['d', 'b', 'b', 'a', 'a', 'b', 'c'], [3, 10, 7, 2, 5, 7, 3]) == 49
    assert candidate(abdcbdbccc, dbbcdcabba, ['c', 'c', 'd', 'b', 'a', 'c', 'a', 'd', 'b', 'd', 'a', 'b'], ['d', 'a', 'b', 'd', 'c', 'b', 'b', 'a', 'c', 'c', 'd', 'a'], [9, 5, 9, 6, 5, 5, 5, 10, 7, 7, 3, 6]) == 46
    assert candidate(acabbbdbdb, accbccbbab, ['b', 'd', 'c', 'd', 'b', 'c'], ['a', 'a', 'a', 'c', 'd', 'd'], [7, 7, 10, 9, 7, 1]) == -1
    assert candidate(acadadccbb, dcaaabbbdd, ['a', 'c', 'c', 'a', 'd', 'b', 'b', 'd', 'b', 'a'], ['d', 'd', 'b', 'b', 'c', 'd', 'a', 'a', 'c', 'c'], [1, 2, 1, 4, 9, 4, 8, 5, 11, 7]) == 25
    assert candidate(acadbbcdcb, bcacabdcdd, ['a', 'b', 'd', 'b', 'b', 'c', 'a'], ['d', 'c', 'c', 'a', 'd', 'b', 'b'], [3, 6, 3, 10, 11, 3, 6]) == 61
    assert candidate(acaddccaad, daacadcdda, ['c', 'c', 'a', 'b', 'b', 'a', 'b', 'd', 'c', 'a', 'd'], ['a', 'b', 'b', 'd', 'a', 'd', 'c', 'b', 'd', 'c', 'c'], [10, 8, 4, 8, 3, 1, 2, 8, 11, 8, 6]) == 52
    assert candidate(acbbabcaac, bdcbaadcab, ['d', 'c', 'a', 'c', 'b', 'a', 'a', 'b', 'c', 'd'], ['a', 'a', 'd', 'd', 'c', 'c', 'b', 'a', 'b', 'c'], [9, 11, 8, 6, 11, 11, 1, 1, 9, 9]) == 45
    assert candidate(accabbadbc, adbbccbcbd, ['a', 'c', 'a', 'd', 'b', 'a', 'c', 'c', 'b', 'b'], ['c', 'd', 'b', 'c', 'd', 'd', 'b', 'a', 'c', 'a'], [7, 10, 9, 3, 2, 5, 1, 8, 11, 2]) == 36
    assert candidate(accabbdddd, cacdccbcad, ['c', 'a', 'd', 'b', 'd', 'c', 'a', 'b', 'b', 'c', 'd'], ['d', 'b', 'a', 'd', 'c', 'a', 'd', 'a', 'c', 'b', 'b'], [11, 6, 6, 4, 7, 11, 2, 7, 7, 7, 2]) == 51
    assert candidate(accbaadbdb, baccbaacbb, ['b', 'b', 'a', 'd', 'd', 'a', 'c'], ['a', 'd', 'd', 'b', 'a', 'c', 'a'], [9, 11, 6, 7, 4, 2, 2]) == 61
    assert candidate(accbddaaab, baddbaabbd, ['a', 'b', 'c', 'd', 'd', 'b', 'd', 'b'], ['b', 'a', 'a', 'b', 'a', 'c', 'c', 'd'], [6, 3, 4, 6, 1, 6, 10, 6]) == 57
    assert candidate(acccbcdccb, bdadccdbad, ['a', 'b', 'c', 'c', 'a', 'd', 'd'], ['b', 'c', 'a', 'd', 'c', 'a', 'c'], [8, 1, 1, 9, 3, 10, 4]) == 48
    assert candidate(accccbccda, daadbbcaac, ['a', 'c', 'a', 'a', 'd', 'd'], ['c', 'd', 'd', 'b', 'b', 'c'], [3, 6, 6, 10, 9, 8]) == -1
    assert candidate(acdacbdadb, aacccbbacd, ['b', 'b', 'a', 'a', 'd', 'c'], ['d', 'a', 'b', 'd', 'a', 'a'], [6, 1, 9, 6, 8, 11]) == -1
    assert candidate(acdbcdadbd, daaadaaadd, ['c', 'a', 'b', 'b', 'b', 'd', 'a'], ['d', 'c', 'd', 'c', 'a', 'b', 'd'], [3, 9, 4, 6, 1, 9, 3]) == 54
    assert candidate(acddadcbca, ddaabaaaac, ['b', 'd', 'c', 'a', 'b', 'd', 'c', 'b', 'd', 'c', 'a'], ['c', 'a', 'b', 'c', 'd', 'c', 'a', 'a', 'b', 'd', 'd'], [7, 8, 2, 10, 1, 7, 8, 1, 1, 11, 4]) == 35
    assert candidate(adaadcaddd, cdddbdccad, ['c', 'c', 'c', 'd', 'b', 'a', 'd'], ['d', 'a', 'b', 'b', 'd', 'b', 'c'], [10, 9, 2, 2, 7, 1, 10]) == 92
    assert candidate(adaaddacba, aabbddbbdd, ['c', 'b', 'a', 'b', 'c', 'b'], ['b', 'c', 'b', 'a', 'd', 'd'], [10, 7, 7, 6, 8, 5]) == -1
    assert candidate(adacdcdacd, ccbabbbbdc, ['a', 'b', 'c', 'a', 'd', 'b', 'a', 'c'], ['c', 'd', 'd', 'd', 'a', 'c', 'b', 'a'], [4, 3, 1, 1, 6, 4, 10, 6]) == 99
    assert candidate(adadbabcdd, abbcdcbdba, ['c', 'd', 'b', 'a', 'c', 'b', 'a'], ['d', 'b', 'd', 'b', 'b', 'a', 'c'], [11, 10, 6, 1, 5, 3, 8]) == 80
    assert candidate(adadcabbda, cabadddccc, ['c', 'a', 'b', 'b', 'a', 'd', 'd'], ['b', 'd', 'd', 'c', 'b', 'c', 'b'], [7, 2, 8, 4, 4, 4, 7]) == -1
    assert candidate(adbaabacdc, bccbbadcdc, ['c', 'b', 'b', 'd', 'c', 'a', 'b'], ['b', 'a', 'c', 'a', 'a', 'd', 'd'], [5, 2, 6, 1, 7, 7, 1]) == -1
    assert candidate(adbadbaacb, bccdbdccab, ['d', 'a', 'c', 'b', 'c', 'd', 'a', 'b', 'c', 'b', 'a', 'd'], ['a', 'c', 'b', 'c', 'a', 'b', 'b', 'd', 'd', 'a', 'd', 'c'], [3, 7, 7, 9, 2, 9, 10, 2, 9, 5, 11, 8]) == 65
    assert candidate(adbcdaddda, cbdccabcbc, ['c', 'a', 'd', 'd', 'b', 'b', 'b'], ['a', 'c', 'c', 'a', 'd', 'c', 'a'], [8, 5, 5, 10, 10, 3, 9]) == -1
    assert candidate(adcacaaabb, daaadadcbb, ['d', 'b', 'a', 'a', 'd', 'c', 'b', 'b', 'd', 'c', 'c', 'a'], ['b', 'c', 'd', 'c', 'c', 'a', 'a', 'd', 'a', 'b', 'd', 'b'], [2, 3, 2, 4, 5, 9, 11, 3, 10, 1, 9, 2]) == 31
    assert candidate(adcbbbdada, cdaabadcdc, ['a', 'a', 'b', 'c', 'd', 'b', 'd'], ['c', 'd', 'c', 'd', 'a', 'a', 'c'], [11, 11, 2, 8, 5, 7, 5]) == 60
    assert candidate(adccbabbca, dcdbbdabba, ['a', 'd', 'd', 'b', 'c', 'b', 'a'], ['c', 'b', 'c', 'c', 'a', 'd', 'd'], [5, 10, 10, 1, 6, 7, 7]) == 90
    assert candidate(adcdcbacab, acddaddadc, ['b', 'd', 'c', 'd', 'c', 'd', 'b', 'c', 'a', 'a', 'a', 'b'], ['a', 'b', 'b', 'c', 'a', 'a', 'd', 'd', 'c', 'b', 'd', 'c'], [2, 11, 11, 9, 1, 3, 6, 9, 6, 4, 8, 5]) == 47
    assert candidate(addbaccbbd, cabdcdadcc, ['b', 'd', 'd', 'd', 'c', 'b', 'a', 'c', 'c'], ['a', 'c', 'a', 'b', 'b', 'd', 'd', 'a', 'd'], [10, 11, 5, 6, 10, 1, 4, 8, 8]) == 82
    assert candidate(addbacdaac, abddcadbcb, ['d', 'a', 'c', 'b', 'a', 'c', 'a', 'd', 'c', 'd', 'b'], ['c', 'c', 'b', 'd', 'd', 'd', 'b', 'b', 'a', 'a', 'c'], [9, 2, 9, 4, 11, 6, 10, 3, 7, 2, 5]) == 37
    assert candidate(addbcccdcb, cbbdbddacb, ['d', 'c', 'a', 'a', 'b', 'b', 'c'], ['c', 'd', 'b', 'd', 'd', 'c', 'b'], [2, 6, 4, 3, 7, 7, 8]) == -1
    assert candidate(addcadccaa, dbbcaccabc, ['a', 'b', 'd', 'b', 'd', 'a', 'c', 'b', 'a', 'c'], ['c', 'd', 'a', 'c', 'b', 'b', 'd', 'a', 'd', 'a'], [8, 11, 5, 1, 11, 4, 3, 8, 11, 4]) == 49
    assert candidate(addcdbdadb, bcabdcccbd, ['b', 'b', 'a', 'c', 'd', 'a', 'b', 'c', 'a'], ['a', 'c', 'c', 'a', 'a', 'b', 'd', 'b', 'd'], [2, 4, 8, 8, 3, 5, 2, 7, 2]) == 59
    assert candidate(adddbbdbdb, cdbadcaccc, ['b', 'c', 'c', 'b', 'a', 'c', 'b', 'a', 'a', 'd', 'd'], ['d', 'a', 'b', 'a', 'b', 'd', 'c', 'c', 'd', 'a', 'c'], [1, 1, 1, 8, 6, 9, 3, 6, 5, 3, 10]) == 40
    assert candidate(adddccacca, cdcdcccdac, ['d', 'c', 'a', 'd', 'b', 'b', 'b', 'a', 'd', 'a', 'c', 'c'], ['c', 'a', 'c', 'a', 'd', 'a', 'c', 'b', 'b', 'd', 'd', 'b'], [7, 7, 6, 10, 1, 1, 11, 5, 3, 2, 10, 3]) == 33
    assert candidate(baacbbcdaa, abdbdbbabd, ['c', 'd', 'c', 'b', 'a', 'c', 'b', 'd', 'b'], ['d', 'c', 'b', 'a', 'd', 'a', 'd', 'a', 'c'], [9, 5, 5, 2, 9, 4, 5, 3, 6]) == 76
    assert candidate(baadcdabbc, acbccadccd, ['b', 'b', 'a', 'a', 'a', 'd', 'd', 'd', 'c', 'c', 'b'], ['c', 'a', 'c', 'b', 'd', 'c', 'a', 'b', 'b', 'd', 'd'], [8, 6, 5, 10, 11, 1, 1, 6, 3, 1, 4]) == 37
    assert candidate(baadcdabda, abdbcdaaca, ['b', 'b', 'c', 'd', 'd', 'a', 'c'], ['d', 'a', 'a', 'b', 'c', 'b', 'd'], [11, 8, 7, 3, 10, 4, 1]) == 48
    assert candidate(babababdba, ccdaaabbac, ['c', 'd', 'b', 'a', 'd', 'a', 'b'], ['b', 'a', 'd', 'c', 'c', 'd', 'c'], [8, 5, 6, 2, 8, 6, 8]) == 55
    assert candidate(babbacabba, adacccdcba, ['c', 'd', 'd', 'd', 'c', 'b', 'b', 'b', 'a'], ['a', 'b', 'c', 'a', 'd', 'a', 'c', 'd', 'c'], [1, 1, 8, 3, 2, 2, 11, 8, 3]) == 27
    assert candidate(babbadbabc, ccdabbcbba, ['a', 'c', 'd', 'a', 'b', 'd', 'b', 'b'], ['b', 'd', 'c', 'd', 'a', 'a', 'c', 'd'], [3, 3, 1, 4, 4, 8, 2, 9]) == 46
    assert candidate(bacbddaacb, dcdaaadcda, ['a', 'd', 'a', 'a', 'd', 'c', 'b', 'c', 'c', 'b'], ['d', 'c', 'c', 'b', 'b', 'b', 'a', 'a', 'd', 'c'], [8, 5, 1, 10, 8, 6, 2, 1, 6, 8]) == 46
    assert candidate(baccbbcdcb, cabadbbacc, ['c', 'a', 'c', 'b', 'c', 'd', 'a', 'b', 'd', 'b'], ['a', 'b', 'b', 'a', 'd', 'b', 'c', 'd', 'c', 'c'], [4, 4, 2, 11, 9, 9, 1, 4, 6, 1]) == 24
    assert candidate(bacdbbcdba, cdcdddbbcd, ['d', 'a', 'c', 'b', 'd', 'a', 'b', 'c', 'b', 'c', 'd'], ['c', 'c', 'a', 'd', 'b', 'b', 'a', 'd', 'c', 'b', 'a'], [3, 8, 4, 6, 5, 8, 6, 2, 1, 6, 2]) == 39
    assert candidate(bacdbccabb, caaccdbaac, ['c', 'd', 'd', 'a', 'd', 'c'], ['d', 'b', 'a', 'b', 'c', 'a'], [8, 4, 4, 4, 3, 6]) == -1
    assert candidate(bacddacdba, bcbbaacdda, ['b', 'c', 'c', 'd', 'd', 'b', 'b', 'd', 'a', 'a', 'c', 'a'], ['a', 'b', 'd', 'b', 'a', 'c', 'd', 'c', 'c', 'd', 'a', 'b'], [5, 6, 7, 4, 4, 8, 8, 6, 8, 3, 6, 11]) == 30
    assert candidate(badaabbaba, caadbcadcd, ['b', 'c', 'a', 'c', 'd', 'a', 'b', 'd', 'd', 'b', 'c'], ['c', 'a', 'd', 'b', 'a', 'c', 'd', 'c', 'b', 'a', 'd'], [4, 8, 6, 3, 1, 8, 3, 8, 3, 6, 9]) == 44
    assert candidate(badabbbbac, dacaabbcaa, ['d', 'b', 'a', 'd', 'c', 'b', 'd', 'c', 'a', 'c', 'a'], ['b', 'c', 'd', 'c', 'a', 'd', 'a', 'd', 'c', 'b', 'b'], [11, 5, 9, 7, 11, 11, 7, 9, 6, 11, 5]) == 50
    assert candidate(badaccbdbd, dbbdacaaab, ['b', 'd', 'b', 'c', 'b', 'd', 'a', 'd', 'a', 'a', 'c', 'c'], ['d', 'a', 'a', 'a', 'c', 'b', 'd', 'c', 'b', 'c', 'd', 'b'], [3, 9, 3, 11, 11, 6, 2, 11, 11, 2, 11, 1]) == 39
    assert candidate(badadcccba, bbdbababcc, ['c', 'c', 'a', 'd', 'd', 'd'], ['a', 'd', 'b', 'a', 'b', 'c'], [1, 3, 2, 2, 4, 4]) == -1
    assert candidate(badbbbccdb, bbbabbccbd, ['a', 'c', 'a', 'c', 'd', 'c', 'd', 'b', 'd', 'b', 'a'], ['c', 'b', 'd', 'd', 'c', 'a', 'b', 'd', 'a', 'c', 'b'], [5, 4, 5, 3, 4, 4, 6, 3, 8, 11, 4]) == 30
    assert candidate(badcbccabc, bdcaacbcad, ['d', 'd', 'c', 'd', 'a', 'b', 'c', 'a'], ['a', 'c', 'd', 'b', 'b', 'a', 'b', 'd'], [1, 5, 4, 5, 11, 10, 8, 11]) == 69
    assert candidate(badcbdddcd, cdcbaddadc, ['c', 'b', 'c', 'd', 'a', 'b', 'b', 'd', 'a', 'c', 'a', 'd'], ['a', 'c', 'b', 'a', 'c', 'd', 'a', 'b', 'd', 'd', 'b', 'c'], [3, 2, 8, 9, 11, 5, 11, 11, 9, 2, 8, 1]) == 32
    assert candidate(baddbcbdbd, acdbcadabd, ['a', 'b', 'b', 'c', 'a', 'a', 'b', 'd', 'c', 'd', 'd'], ['c', 'a', 'd', 'd', 'b', 'd', 'c', 'c', 'b', 'b', 'a'], [9, 10, 5, 4, 1, 5, 7, 8, 11, 9, 8]) == 59
    assert candidate(baddbdacad, cadaccbbab, ['b', 'a', 'd', 'a', 'c', 'b', 'd', 'c', 'a', 'd'], ['d', 'b', 'b', 'd', 'a', 'c', 'a', 'b', 'c', 'c'], [3, 5, 6, 7, 2, 4, 4, 2, 3, 9]) == 32
    assert candidate(bbacdcdcda, cbadabbdcb, ['a', 'd', 'b', 'c', 'b', 'c', 'd', 'a', 'd'], ['b', 'c', 'd', 'a', 'a', 'b', 'b', 'd', 'a'], [11, 6, 2, 8, 5, 7, 5, 8, 9]) == 64
    assert candidate(bbadbbabbb, cbaaddaddc, ['d', 'a', 'b', 'c', 'd', 'c', 'b'], ['b', 'd', 'c', 'b', 'c', 'd', 'd'], [4, 10, 1, 11, 7, 1, 11]) == -1
    assert candidate(bbadcbcbbc, aaaccbccbb, ['b', 'd', 'b', 'd', 'a', 'c', 'c', 'a', 'b'], ['c', 'a', 'a', 'b', 'b', 'a', 'b', 'c', 'd'], [8, 5, 9, 4, 1, 10, 1, 11, 4]) == 39
    assert candidate(bbbadaccbb, dadcaccadb, ['a', 'd', 'd', 'd', 'c', 'b', 'c', 'b', 'c', 'b'], ['d', 'b', 'c', 'a', 'b', 'd', 'd', 'c', 'a', 'a'], [10, 1, 4, 6, 4, 1, 10, 3, 1, 6]) == 41
    assert candidate(bbbadcbadb, aacbdcddcd, ['a', 'd', 'd', 'c', 'a', 'b', 'c', 'b'], ['d', 'b', 'a', 'a', 'c', 'c', 'b', 'd'], [3, 1, 1, 9, 1, 2, 1, 2]) == 19
    assert candidate(bbbbabbcbc, adacababac, ['a', 'c', 'a', 'b', 'b', 'd', 'd', 'a', 'd', 'b', 'c'], ['d', 'b', 'c', 'c', 'd', 'a', 'b', 'b', 'c', 'a', 'd'], [7, 9, 9, 7, 3, 2, 6, 8, 11, 5, 8]) == 39
    assert candidate(bbbbdacbcd, cbadccdaaa, ['d', 'a', 'c', 'b', 'd', 'c', 'a', 'd', 'b', 'a'], ['c', 'c', 'b', 'c', 'a', 'd', 'd', 'b', 'd', 'b'], [2, 9, 11, 3, 6, 11, 6, 4, 5, 5]) == 74


def test_check():
    check(minimumCost)


### Metadata below ###
# question_id = 3235
# question_title = Minimum Cost to Convert String I
# question_title_slug = minimum-cost-to-convert-string-i
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 93
# question_dislikes = 4