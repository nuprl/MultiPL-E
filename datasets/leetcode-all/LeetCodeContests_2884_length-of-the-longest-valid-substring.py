from typing import List

def longestValidSubstring(word: str, forbidden: List[str]) -> int:
    """
    You are given a string word and an array of strings forbidden.
    
    A string is called valid if none of its substrings are present in forbidden.
    
    Return the length of the longest valid substring of the string word.
    
    A substring is a contiguous sequence of characters in a string, possibly empty.
    
    Example 1:
    
    Input: word = "cbaaaabc", forbidden = ["aaa","cb"]
    Output: 4
    Explanation: There are 11 valid substrings in word: "c", "b", "a", "ba", "aa", "bc", "baa", "aab", "ab", "abc" and "aabc". The length of the longest valid substring is 4.
    It can be shown that all other substrings contain either "aaa" or "cb" as a substring.
    
    Example 2:
    
    Input: word = "leetcode", forbidden = ["de","le","e"]
    Output: 4
    Explanation: There are 11 valid substrings in word: "l", "t", "c", "o", "d", "tc", "co", "od", "tco", "cod", and "tcod". The length of the longest valid substring is 4.
    It can be shown that all other substrings contain either "de", "le", or "e" as a substring.
    
    
    Constraints:
    
     * 1 <= word.length <= 105
     * word consists only of lowercase English letters.
     * 1 <= forbidden.length <= 105
     * 1 <= forbidden[i].length <= 10
     * forbidden[i] consists only of lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(cbaaaabc, ['aaa', 'cb']) == 4
    assert candidate(leetcode, ['de', 'le', 'e']) == 4
    assert candidate(a, ['n']) == 1
    assert candidate(a, ['s']) == 1
    assert candidate(a, ['a']) == 0
    assert candidate(b, ['g']) == 1
    assert candidate(b, ['t']) == 1
    assert candidate(b, ['b']) == 0
    assert candidate(c, ['k']) == 1
    assert candidate(c, ['s']) == 1
    assert candidate(c, ['c']) == 0
    assert candidate(d, ['h']) == 1
    assert candidate(d, ['n']) == 1
    assert candidate(d, ['d']) == 0
    assert candidate(e, ['s']) == 1
    assert candidate(e, ['e']) == 0
    assert candidate(f, ['b']) == 1
    assert candidate(f, ['s']) == 1
    assert candidate(f, ['f']) == 0
    assert candidate(g, ['r']) == 1
    assert candidate(g, ['y']) == 1
    assert candidate(g, ['g']) == 0
    assert candidate(h, ['v']) == 1
    assert candidate(h, ['b']) == 1
    assert candidate(h, ['h']) == 0
    assert candidate(i, ['k']) == 1
    assert candidate(i, ['y']) == 1
    assert candidate(i, ['i']) == 0
    assert candidate(j, ['v']) == 1
    assert candidate(j, ['u']) == 1
    assert candidate(j, ['j']) == 0
    assert candidate(k, ['z']) == 1
    assert candidate(k, ['o']) == 1
    assert candidate(k, ['k']) == 0
    assert candidate(l, ['i']) == 1
    assert candidate(l, ['r']) == 1
    assert candidate(l, ['l']) == 0
    assert candidate(m, ['s']) == 1
    assert candidate(m, ['g']) == 1
    assert candidate(m, ['m']) == 0
    assert candidate(n, ['e']) == 1
    assert candidate(n, ['i']) == 1
    assert candidate(n, ['n']) == 0
    assert candidate(o, ['j']) == 1
    assert candidate(o, ['f']) == 1
    assert candidate(o, ['o']) == 0
    assert candidate(p, ['z']) == 1
    assert candidate(p, ['i']) == 1
    assert candidate(p, ['p']) == 0
    assert candidate(q, ['j']) == 1
    assert candidate(q, ['z']) == 1
    assert candidate(q, ['q']) == 0
    assert candidate(r, ['v']) == 1
    assert candidate(r, ['p']) == 1
    assert candidate(r, ['r']) == 0
    assert candidate(s, ['m']) == 1
    assert candidate(s, ['x']) == 1
    assert candidate(s, ['s']) == 0
    assert candidate(t, ['v']) == 1
    assert candidate(t, ['m']) == 1
    assert candidate(t, ['t']) == 0
    assert candidate(u, ['l']) == 1
    assert candidate(u, ['n']) == 1
    assert candidate(u, ['u']) == 0
    assert candidate(v, ['o']) == 1
    assert candidate(v, ['v']) == 0
    assert candidate(w, ['w']) == 0
    assert candidate(w, ['s']) == 1
    assert candidate(x, ['r']) == 1
    assert candidate(x, ['q']) == 1
    assert candidate(x, ['x']) == 0
    assert candidate(y, ['w']) == 1
    assert candidate(y, ['t']) == 1
    assert candidate(y, ['y']) == 0
    assert candidate(z, ['l']) == 1
    assert candidate(z, ['o']) == 1
    assert candidate(z, ['z']) == 0
    assert candidate(acbc, ['cbc', 'acb', 'acb', 'acbc']) == 2
    assert candidate(cabba, ['aaba', 'abba', 'acabb', 'cabb']) == 3
    assert candidate(bbc, ['baba', 'babc', 'bbc', 'bbc']) == 2
    assert candidate(acb, ['acb', 'caccc', 'baaab', 'baa']) == 2
    assert candidate(aaac, ['aaac', 'aac', 'aaa', 'aaac']) == 2
    assert candidate(ca, ['ababa', 'ca', 'caac', 'babb']) == 1
    assert candidate(babbb, ['bbb', 'aacb', 'babbb', 'bcab']) == 4
    assert candidate(cbbba, ['bca', 'cbbba', 'acbcc', 'aabb']) == 4
    assert candidate(abab, ['aab', 'abab', 'cacb', 'bab']) == 3
    assert candidate(cbab, ['bbcc', 'aaccc', 'cbab', 'babca']) == 3
    assert candidate(caaa, ['aaa', 'cbb', 'aaa', 'caaa']) == 3
    assert candidate(baa, ['aaab', 'bbaa', 'babac', 'baa']) == 2
    assert candidate(cbcc, ['cbcc', 'baa', 'bbba', 'cac']) == 3
    assert candidate(cac, ['cccaa', 'baaca', 'cac', 'cac']) == 2
    assert candidate(cabab, ['cabab', 'abab', 'cabab', 'abab']) == 4
    assert candidate(caa, ['caa', 'bba', 'acc', 'bcabb']) == 2
    assert candidate(ba, ['ba', 'ba', 'cab', 'cbcac']) == 1
    assert candidate(bbc, ['baca', 'bbc', 'bbc', 'caa']) == 2
    assert candidate(bbb, ['cbaab', 'bbb', 'bbb', 'bab']) == 2
    assert candidate(bbccc, ['ccc', 'bcba', 'bcc', 'bcc']) == 3
    assert candidate(bcac, ['bcac', 'caca', 'bcac', 'bca']) == 3
    assert candidate(ab, ['aca', 'cabcc', 'caba', 'ab']) == 1
    assert candidate(caa, ['bab', 'babbb', 'abbaa', 'caa']) == 2


def test_check():
    check(longestValidSubstring)


### Metadata below ###
# question_id = 2884
# question_title = Length of the Longest Valid Substring
# question_title_slug = length-of-the-longest-valid-substring
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 447
# question_dislikes = 9