from typing import List

def getWordsInLongestSubsequence(n: int, words: List[str], groups: List[int]) -> List[str]:
    """
    You are given an integer n, a 0-indexed string array words, and a 0-indexed binary array groups, both arrays having length n.
    
    You need to select the longest subsequence from an array of indices [0, 1, ..., n - 1], such that for the subsequence denoted as [i0, i1, ..., ik - 1] having length k, groups[ij] != groups[ij + 1], for each j where 0 < j + 1 < k.
    
    Return a string array containing the words corresponding to the indices (in order) in the selected subsequence. If there are multiple answers, return any of them.
    
    A subsequence of an array is a new array that is formed from the original array by deleting some (possibly none) of the elements without disturbing the relative positions of the remaining elements.
    
    Note: strings in words may be unequal in length.
    
    Example 1:
    
    Input: n = 3, words = ["e","a","b"], groups = [0,0,1]
    Output: ["e","b"]
    Explanation: A subsequence that can be selected is [0,2] because groups[0] != groups[2].
    So, a valid answer is [words[0],words[2]] = ["e","b"].
    Another subsequence that can be selected is [1,2] because groups[1] != groups[2].
    This results in [words[1],words[2]] = ["a","b"].
    It is also a valid answer.
    It can be shown that the length of the longest subsequence of indices that satisfies the condition is 2.
    
    Example 2:
    
    Input: n = 4, words = ["a","b","c","d"], groups = [1,0,1,1]
    Output: ["a","b","c"]
    Explanation: A subsequence that can be selected is [0,1,2] because groups[0] != groups[1] and groups[1] != groups[2].
    So, a valid answer is [words[0],words[1],words[2]] = ["a","b","c"].
    Another subsequence that can be selected is [0,1,3] because groups[0] != groups[1] and groups[1] != groups[3].
    This results in [words[0],words[1],words[3]] = ["a","b","d"].
    It is also a valid answer.
    It can be shown that the length of the longest subsequence of indices that satisfies the condition is 3.
    
    
    Constraints:
    
     * 1 <= n == words.length == groups.length <= 100
     * 1 <= words[i].length <= 10
     * 0 <= groups[i] < 2
     * words consists of distinct strings.
     * words[i] consists of lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(3, ['e', 'a', 'b'], [0, 0, 1]) == ["e","b"]
    assert candidate(4, ['a', 'b', 'c', 'd'], [1, 0, 1, 1]) == ["a","b","c"]
    assert candidate(1, ['c'], [0]) == ["c"]
    assert candidate(1, ['d'], [1]) == ["d"]
    assert candidate(1, ['e'], [0]) == ["e"]
    assert candidate(1, ['fe'], [0]) == ["fe"]
    assert candidate(1, ['frl'], [1]) == ["frl"]
    assert candidate(1, ['ha'], [1]) == ["ha"]
    assert candidate(1, ['l'], [0]) == ["l"]
    assert candidate(1, ['n'], [1]) == ["n"]
    assert candidate(1, ['s'], [1]) == ["s"]
    assert candidate(2, ['d', 'g'], [0, 1]) == ["d","g"]
    assert candidate(2, ['lr', 'h'], [0, 0]) == ["lr"]
    assert candidate(2, ['wx', 'h'], [0, 1]) == ["wx","h"]
    assert candidate(2, ['yw', 'n'], [0, 1]) == ["yw","n"]
    assert candidate(2, ['z', 'n'], [0, 0]) == ["z"]
    assert candidate(2, ['zr', 'a'], [0, 0]) == ["zr"]
    assert candidate(3, ['h', 'vv', 'kp'], [0, 1, 0]) == ["h","vv","kp"]
    assert candidate(3, ['m', 'v', 'y'], [0, 1, 0]) == ["m","v","y"]
    assert candidate(3, ['o', 'cfy', 'en'], [1, 0, 0]) == ["o","cfy"]
    assert candidate(3, ['tu', 'rv', 'bn'], [0, 0, 0]) == ["tu"]
    assert candidate(4, ['c', 'f', 'y', 'i'], [1, 0, 1, 1]) == ["c","f","y"]
    assert candidate(4, ['c', 'w', 'h', 's'], [0, 0, 0, 1]) == ["c","s"]
    assert candidate(4, ['d', 'a', 'v', 'b'], [1, 0, 0, 1]) == ["d","a","b"]
    assert candidate(4, ['hh', 'svj', 'a', 'nr'], [1, 1, 1, 1]) == ["hh"]
    assert candidate(4, ['im', 'j', 'xq', 'cjs'], [1, 0, 0, 1]) == ["im","j","cjs"]
    assert candidate(4, ['m', 'dkg', 'r', 'h'], [1, 1, 1, 0]) == ["m","h"]
    assert candidate(4, ['ow', 'qay', 'r', 'j'], [1, 1, 1, 1]) == ["ow"]
    assert candidate(4, ['r', 'k', 'pb', 'x'], [0, 0, 1, 0]) == ["r","pb","x"]
    assert candidate(4, ['sq', 'do', 'bcj', 'nm'], [0, 1, 1, 0]) == ["sq","do","nm"]
    assert candidate(4, ['sz', 'mq', 'j', 'u'], [0, 0, 1, 0]) == ["sz","j","u"]
    assert candidate(4, ['x', 'nf', 'p', 'asn'], [1, 1, 1, 1]) == ["x"]
    assert candidate(4, ['z', 'tkt', 'x', 'swy'], [1, 0, 1, 1]) == ["z","tkt","x"]
    assert candidate(5, ['ht', 'lw', 'ax', 'vi', 'fo'], [0, 0, 1, 0, 0]) == ["ht","ax","vi"]
    assert candidate(5, ['mc', 'kh', 'x', 'q', 'z'], [0, 0, 1, 1, 0]) == ["mc","x","z"]
    assert candidate(5, ['n', 'fg', 'fy', 'tv', 'gv'], [1, 1, 1, 1, 1]) == ["n"]
    assert candidate(5, ['n', 'l', 'e', 'd', 'm'], [1, 1, 0, 1, 1]) == ["n","e","d"]
    assert candidate(5, ['n', 'm', 'g', 'b', 'd'], [0, 0, 1, 0, 0]) == ["n","g","b"]
    assert candidate(5, ['nz', 'zwt', 'hig', 's', 'jze'], [1, 1, 1, 0, 1]) == ["nz","s","jze"]
    assert candidate(5, ['o', 'i', 'b', 'k', 'kz'], [0, 0, 1, 1, 1]) == ["o","b"]
    assert candidate(5, ['r', 'o', 'k', 'd', 'f'], [0, 0, 0, 1, 1]) == ["r","d"]
    assert candidate(5, ['sfh', 'exd', 'j', 'w', 'gc'], [1, 0, 1, 1, 1]) == ["sfh","exd","j"]
    assert candidate(5, ['v', 'f', 'k', 'l', 'p'], [0, 0, 1, 0, 0]) == ["v","k","l"]
    assert candidate(5, ['vbd', 'ua', 'muo', 'mu', 'qi'], [0, 0, 0, 1, 0]) == ["vbd","mu","qi"]
    assert candidate(5, ['we', 'ch', 'tl', 'yx', 'utx'], [1, 0, 0, 1, 1]) == ["we","ch","yx"]
    assert candidate(5, ['x', 'vlk', 'tds', 'dfn', 'kr'], [0, 0, 1, 1, 0]) == ["x","tds","kr"]
    assert candidate(5, ['y', 'j', 'u', 'r', 'f'], [0, 0, 1, 1, 0]) == ["y","u","f"]
    assert candidate(5, ['y', 'r', 'z', 'x', 'q'], [0, 1, 0, 1, 1]) == ["y","r","z","x"]
    assert candidate(5, ['yc', 'fgq', 'gg', 'og', 'tca'], [0, 1, 1, 1, 0]) == ["yc","fgq","tca"]
    assert candidate(5, ['z', 'd', 'p', 'c', 'm'], [0, 0, 0, 0, 0]) == ["z"]
    assert candidate(6, ['c', 'i', 'to', 'kv', 'op', 'u'], [0, 0, 1, 0, 0, 0]) == ["c","to","kv"]
    assert candidate(6, ['d', 'h', 'e', 'k', 'j', 'r'], [0, 1, 1, 0, 1, 0]) == ["d","h","k","j","r"]
    assert candidate(6, ['l', 'f', 'v', 'b', 'w', 'k'], [1, 0, 1, 1, 0, 0]) == ["l","f","v","w"]
    assert candidate(6, ['lj', 'vf', 'pa', 'w', 'z', 'q'], [0, 0, 1, 0, 0, 0]) == ["lj","pa","w"]
    assert candidate(7, ['cd', 'oki', 'ho', 'oi', 'm', 'yvy', 'i'], [1, 1, 0, 1, 1, 1, 1]) == ["cd","ho","oi"]
    assert candidate(7, ['exb', 'c', 'oq', 'lq', 'xh', 'zmo', 'aug'], [1, 1, 0, 1, 1, 0, 0]) == ["exb","oq","lq","zmo"]
    assert candidate(7, ['f', 'r', 'k', 'h', 'm', 'v', 'p'], [1, 0, 0, 0, 1, 0, 0]) == ["f","r","m","v"]
    assert candidate(7, ['fd', 'fc', 'jm', 'z', 'lg', 'kl', 'ux'], [0, 1, 0, 1, 0, 1, 0]) == ["fd","fc","jm","z","lg","kl","ux"]
    assert candidate(7, ['ft', 'iw', 'm', 'v', 'gx', 'd', 'pm'], [1, 1, 1, 0, 1, 1, 1]) == ["ft","v","gx"]
    assert candidate(7, ['lma', 'i', 'rt', 'xar', 'bfx', 'np', 'x'], [1, 1, 1, 1, 1, 0, 1]) == ["lma","np","x"]
    assert candidate(7, ['nsv', 'r', 'o', 'qo', 'pb', 'xqv', 'clb'], [1, 1, 0, 0, 0, 0, 0]) == ["nsv","o"]
    assert candidate(7, ['p', 'qdb', 'zcd', 'l', 'tv', 'ln', 'ogb'], [1, 1, 0, 1, 0, 0, 1]) == ["p","zcd","l","tv","ogb"]
    assert candidate(7, ['z', 'cee', 'j', 'jqu', 'w', 'ljr', 'k'], [1, 0, 1, 1, 0, 0, 1]) == ["z","cee","j","w","k"]
    assert candidate(8, ['h', 'p', 'q', 't', 'j', 'a', 'c', 'n'], [0, 1, 1, 1, 0, 0, 1, 1]) == ["h","p","j","c"]
    assert candidate(8, ['r', 'v', 'c', 't', 'd', 'a', 'x', 'o'], [1, 1, 0, 1, 1, 0, 0, 1]) == ["r","c","t","a","o"]
    assert candidate(8, ['u', 'l', 'a', 'y', 'j', 's', 'h', 'q'], [0, 0, 0, 0, 0, 1, 0, 0]) == ["u","s","h"]
    assert candidate(8, ['x', 'mr', 'yyf', 'l', 'z', 'q', 'zvj', 'zqt'], [0, 1, 1, 1, 0, 1, 1, 0]) == ["x","mr","z","q","zqt"]
    assert candidate(8, ['y', 'x', 'i', 'xtm', 'ze', 'n', 'cma', 'dgk'], [0, 1, 0, 0, 1, 1, 0, 0]) == ["y","x","i","ze","cma"]
    assert candidate(8, ['yun', 'x', 'zpp', 'bpr', 'ii', 'ezg', 'dn', 'k'], [0, 1, 1, 1, 1, 0, 1, 0]) == ["yun","x","ezg","dn","k"]
    assert candidate(9, ['ckr', 'iz', 'top', 'of', 'sb', 'wv', 'hb', 'da', 'wd'], [1, 1, 0, 1, 1, 0, 0, 0, 1]) == ["ckr","top","of","wv","wd"]
    assert candidate(9, ['g', 'h', 'u', 'n', 'w', 'o', 'f', 'p', 'm'], [1, 0, 0, 1, 1, 0, 0, 1, 0]) == ["g","h","n","o","p","m"]
    assert candidate(9, ['ilw', 't', 'dyy', 'irz', 'oxy', 'k', 'rfj', 'hi', 'zxe'], [1, 1, 1, 0, 1, 1, 0, 1, 1]) == ["ilw","irz","oxy","rfj","hi"]
    assert candidate(9, ['l', 'iuz', 'd', 'tfw', 'mu', 'a', 'rp', 'mrb', 'wnl'], [1, 1, 1, 1, 1, 0, 1, 1, 0]) == ["l","a","rp","wnl"]
    assert candidate(9, ['mc', 'b', 'yr', 'cj', 'zk', 'wi', 'esm', 'yu', 'cw'], [0, 0, 1, 1, 0, 0, 1, 1, 0]) == ["mc","yr","zk","esm","cw"]
    assert candidate(9, ['nw', 'hx', 'ygc', 'vjo', 'jmv', 'p', 'juv', 'b', 'y'], [0, 1, 0, 0, 1, 0, 0, 1, 0]) == ["nw","hx","ygc","jmv","p","b","y"]
    assert candidate(9, ['osq', 'qiw', 'h', 'tc', 'xg', 'tvt', 'fqp', 'zq', 'b'], [0, 0, 1, 0, 1, 1, 0, 1, 1]) == ["osq","h","tc","xg","fqp","zq"]
    assert candidate(9, ['vr', 'lw', 'e', 'g', 'dz', 'kf', 'qe', 'h', 'p'], [1, 0, 0, 1, 1, 0, 0, 0, 0]) == ["vr","lw","g","kf"]
    assert candidate(10, ['gy', 'nd', 'l', 'hr', 'i', 'qf', 'zz', 'nq', 'e', 'oa'], [0, 1, 0, 0, 1, 0, 1, 1, 1, 0]) == ["gy","nd","l","i","qf","zz","oa"]
    assert candidate(10, ['j', 'r', 'h', 't', 'z', 'b', 'a', 's', 'v', 'q'], [1, 0, 1, 1, 1, 1, 0, 0, 0, 1]) == ["j","r","h","a","q"]
    assert candidate(10, ['k', 'f', 'u', 'h', 'x', 'w', 'c', 'e', 'l', 'p'], [0, 1, 1, 1, 1, 1, 1, 1, 1, 0]) == ["k","f","p"]
    assert candidate(10, ['lj', 'huy', 'lg', 'h', 'o', 'b', 'ava', 'ay', 'r', 'us'], [1, 1, 1, 1, 0, 0, 1, 1, 1, 1]) == ["lj","o","ava"]
    assert candidate(10, ['m', 'd', 'xv', 'dp', 'nq', 'xi', 'e', 'g', 'n', 'qw'], [1, 0, 1, 1, 1, 1, 0, 1, 0, 1]) == ["m","d","xv","e","g","n","qw"]
    assert candidate(10, ['n', 'c', 'y', 'h', 'w', 'm', 'g', 't', 'x', 'v'], [1, 1, 1, 0, 0, 1, 0, 0, 0, 1]) == ["n","h","m","g","v"]
    assert candidate(10, ['o', 'w', 'l', 'g', 'm', 'x', 'f', 'q', 'c', 'v'], [1, 1, 1, 0, 1, 1, 1, 0, 0, 1]) == ["o","g","m","q","v"]
    assert candidate(10, ['p', 'mw', 'm', 'xld', 'j', 'jv', 'n', 'so', 'pkd', 'rwt'], [0, 0, 1, 0, 1, 1, 0, 0, 1, 1]) == ["p","m","xld","j","n","pkd"]
    assert candidate(10, ['vyv', 'msl', 'd', 'bu', 'ubl', 'bgk', 'sz', 'njv', 'pf', 's'], [1, 0, 1, 1, 0, 0, 1, 0, 1, 0]) == ["vyv","msl","d","ubl","sz","njv","pf","s"]
    assert candidate(10, ['y', 'mz', 'lt', 'ur', 'o', 'm', 'djh', 'tb', 'w', 'j'], [0, 0, 1, 0, 1, 1, 0, 1, 0, 0]) == ["y","lt","ur","o","djh","tb","w"]
    assert candidate(10, ['y', 's', 'i', 'v', 'a', 'w', 'l', 'q', 'k', 't'], [0, 1, 1, 1, 0, 1, 1, 1, 0, 0]) == ["y","s","a","w","k"]
    assert candidate(11, ['a', 'tea', 'ldt', 'ybm', 'zkw', 'r', 'd', 'dms', 'le', 'u', 'ze'], [1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1]) == ["a","ldt","r","u","ze"]
    assert candidate(11, ['c', 'o', 'e', 'r', 'x', 'w', 'b', 'd', 'h', 'y', 'z'], [1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1]) == ["c","o","e","r","x","w","b","y","z"]
    assert candidate(11, ['chu', 'a', 'qdx', 'fgd', 'qe', 'bqc', 'x', 'kbx', 'sv', 'ly', 'br'], [1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0]) == ["chu","a","x","kbx","sv","br"]
    assert candidate(11, ['ec', 'jdf', 'b', 'wa', 'kjd', 'bb', 'ty', 'yi', 'ybw', 'ilj', 'cv'], [0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1]) == ["ec","jdf","b","wa","ilj","cv"]
    assert candidate(11, ['ew', 'isn', 'fl', 'mg', 'pdg', 'd', 'p', 'hh', 'e', 'y', 'whm'], [0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1]) == ["ew","fl","pdg","y"]
    assert candidate(11, ['h', 'o', 'd', 'y', 'r', 'c', 'p', 'b', 'g', 'j', 'k'], [1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0]) == ["h","d","y","c","p","g"]
    assert candidate(11, ['ipr', 'l', 'zy', 'j', 'h', 'hdt', 'm', 'd', 'pd', 'nv', 'wy'], [1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1]) == ["ipr","h","hdt","m","d"]
    assert candidate(11, ['j', 'g', 'go', 'a', 'f', 'bg', 'o', 'l', 'ze', 'kq', 'w'], [0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1]) == ["j","go","a","f","bg","ze","kq","w"]
    assert candidate(11, ['j', 'r', 'a', 'g', 'x', 'b', 'y', 'v', 'k', 'i', 'c'], [0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0]) == ["j","r","a","y","k"]
    assert candidate(11, ['kgo', 'han', 'nlu', 'tv', 'us', 'pk', 'xw', 'cxc', 'eml', 'v', 'msz'], [1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0]) == ["kgo","han","tv","us","xw","cxc","eml","msz"]
    assert candidate(11, ['kh', 'op', 'ij', 'te', 'hk', 'pmt', 'v', 'ne', 'en', 'b', 'zuj'], [0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1]) == ["kh","ij","pmt","v","en","b"]
    assert candidate(11, ['ms', 't', 'oz', 'x', 'pw', 'ik', 'd', 'gj', 'z', 'ps', 'i'], [1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1]) == ["ms","oz","x","pw","d","z","i"]


def test_check():
    check(getWordsInLongestSubsequence)


### Metadata below ###
# question_id = 3143
# question_title = Longest Unequal Adjacent Groups Subsequence I
# question_title_slug = longest-unequal-adjacent-groups-subsequence-i
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 86
# question_dislikes = 26