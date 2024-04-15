from typing import List

def findWordsContaining(words: List[str], x: str) -> List[int]:
    """
    You are given a 0-indexed array of strings words and a character x.
    Return an array of indices representing the words that contain the character x.
    Note that the returned array may be in any order.
    
    Example 1:
    
    Input: words = ["leet","code"], x = "e"
    Output: [0,1]
    Explanation: "e" occurs in both words: "leet", and "code". Hence, we return indices 0 and 1.
    
    Example 2:
    
    Input: words = ["abc","bcd","aaaa","cbc"], x = "a"
    Output: [0,2]
    Explanation: "a" occurs in "abc", and "aaaa". Hence, we return indices 0 and 2.
    
    Example 3:
    
    Input: words = ["abc","bcd","aaaa","cbc"], x = "z"
    Output: []
    Explanation: "z" does not occur in any of the words. Hence, we return an empty array.
    
    
    Constraints:
    
    1 <= words.length <= 50
    1 <= words[i].length <= 50
    x is a lowercase English letter.
    words[i] consists only of lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['leet', 'code'], e) == [0,1]
    assert candidate(['abc', 'bcd', 'aaaa', 'cbc'], a) == [0,2]
    assert candidate(['abc', 'bcd', 'aaaa', 'cbc'], z) == []
    assert candidate(['sgtkshnss', 'm', 'ryvbkyvuz', 'ezittyjwgb', 'wudlwg'], x) == []
    assert candidate(['lkwnhpbj', 'tlohm', 'juazsb', 'f', 'rq'], v) == []
    assert candidate(['aaa', 'imvtfjmxr', 'wbzfoovjnf', 'hqwrwmi'], c) == []
    assert candidate(['utyeachht', 'bgpkcs', 'skeecqvvvw', 'nccrd'], i) == []
    assert candidate(['alcpxexztg', 'r'], h) == []
    assert candidate(['ekcpg', 'pdknua', 'fot', 'janppw', 'ofomkfvx'], g) == [0]
    assert candidate(['dq', 'rlvopu'], d) == [0]
    assert candidate(['wzppkd', 'jxvk', 'zaztizmwuv', 'hvcdtobr'], b) == [3]
    assert candidate(['y', 'hs', 'qznrkpi'], v) == []
    assert candidate(['pze', 'yojczsb', 'mjvyr', 'i', 'xsygks'], q) == []
    assert candidate(['qsgtjagcu', 'm'], e) == []
    assert candidate(['kidtwmw', 'ogh', 'trdedlh', 'wwbtlindg', 'naoylytpof', 'ujcbzwzkm', 'doamcoxdv'], o) == [1,4,6]
    assert candidate(['tsmeupctki'], t) == [0]
    assert candidate(['dqxlbljmpf', 'uvdzfoiqg', 'jsnbnx', 'fbedae', 'nodewb', 'o', 'ivepktj'], g) == [1]
    assert candidate(['fjlmmecm', 'sautsoorhl', 'n', 'hsyco', 'amlukrpjpv', 'rmhdnj', 'g'], e) == [0]
    assert candidate(['khjchmeciv', 'vgx', 'xghr', 'bbufgegu', 'qyfxu'], r) == [2]
    assert candidate(['jhtcugtcpl', 'bvhlgmmla', 'ntfkwzite', 'imbtzafaj', 'sdl', 't'], m) == [1,3]
    assert candidate(['kxoziqoafc', 'vifcxifq'], q) == [0,1]
    assert candidate(['ckfkjjsonl', 'scaaug', 'rmvqzyiwc', 'a', 'smymw'], p) == []
    assert candidate(['t', 'exo', 'npr', 'skd', 'bxpmbu'], e) == [1]
    assert candidate(['eulsl', 'fwooyct', 'ypytexil'], c) == [1]
    assert candidate(['nhd', 'zheyegi', 'ogz', 'fpybmcc', 'ntbbwtde'], g) == [1,2]
    assert candidate(['gwzvusl', 'upcpvbfyxy', 'hg', 'yu', 'wsfqgzhh', 'zgphqacsyo'], o) == [5]
    assert candidate(['uiovpph', 'xxj', 'uwzxzvkobk'], r) == []
    assert candidate(['abtrpwo', 'sgaegnavk', 'pfmv'], z) == []
    assert candidate(['m', 'fxtphsdmgy', 'otq', 'vwuhhnebr', 'yen'], y) == [1,4]
    assert candidate(['irlzx', 'lbrknhl', 'roupfj', 'fskaieszo', 'nz', 'ijfyejq'], e) == [3,5]
    assert candidate(['raavc', 'tx'], l) == []
    assert candidate(['bkpuvcrexw', 'hxtbcdprhr', 'ovt', 'xgurm', 'pjcz', 'sbhwpjmyz'], g) == [3]
    assert candidate(['f', 'xlmy', 'akbiqa', 'fobo'], s) == []
    assert candidate(['mhan'], a) == [0]
    assert candidate(['uisx'], o) == []
    assert candidate(['znqdolksyn', 'keewspe', 'ffod', 'lah', 'gadhym', 'awnyymd', 'fvkl'], v) == [6]
    assert candidate(['ftujx', 'dnbwrurk', 't', 'x', 'zjzhdl', 'jc'], t) == [0,2]
    assert candidate(['zrwf', 'thp', 'qecwlnq', 'w', 'teetdaxx'], t) == [1,4]
    assert candidate(['xyzgb', 'qflfrfqgaf'], l) == [1]
    assert candidate(['shnjr', 'qfvop'], y) == []
    assert candidate(['fmwclqh', 'xbphhgreze', 'yi', 'gmtzrfdab', 'uicqa', 'n'], i) == [2,4]
    assert candidate(['jgkv', 'njhwihtv', 'v'], z) == []
    assert candidate(['tqkwoofh', 'bcgngl', 'frjpqgrr', 'drvb'], x) == []
    assert candidate(['npkvocbw', 'tn', 'dp', 'c', 'g', 'fsxvzcnty', 'ywnf'], k) == [0]
    assert candidate(['leompil', 'vta', 'fzrsps', 'yp', 'bykmgwgk'], o) == [0]
    assert candidate(['umq', 'c', 'ctuh', 'eadzeuui', 'tabum', 'isuct'], p) == []
    assert candidate(['rnmpdkmrnb', 'icxxsvss', 'h', 'gd'], s) == [1]
    assert candidate(['ft', 'hsjf', 'e', 'xi'], w) == []
    assert candidate(['ozf', 'xkehlkgp', 'vliewlbv', 'okgaahah'], b) == [2]
    assert candidate(['gbktzr', 'kbamubluz', 'dwoi', 'crhldx', 'idjronpded', 'rqaz'], c) == [3]
    assert candidate(['gvbzqcb', 'rwtbra', 'iuijl', 'qbmpbi'], c) == [0]
    assert candidate(['lsh', 'szhxhcdc', 'quem', 'zupiydjeqp', 'czxyvysrrb', 'aqnlqtnfiv'], p) == [3]
    assert candidate(['leuah', 'liaoczeuch', 'ol', 'ify', 'layh', 'ifzudwuybw', 'x'], p) == []
    assert candidate(['ksdpwwho', 'ktunsikyu'], a) == []
    assert candidate(['vpypaumzlp', 'kqrb', 'pgw'], l) == [0]
    assert candidate(['jkrpnx', 'c', 'kqi', 'xrsaviyusg', 'waoxq', 'fld', 'otxfgcp'], l) == [5]
    assert candidate(['tetw', 'zl', 'wd', 'hnkxoxlnz', 'dexgufawjd', 'oolpr', 'yyfwizbsl'], p) == [5]
    assert candidate(['hihprd', 'kitgiflc', 'nr', 'idduuahfkm'], x) == []
    assert candidate(['flfxeca', 'g'], e) == [0]
    assert candidate(['st', 'betf', 'ipacxza', 'jpnw'], r) == []
    assert candidate(['cvuxnzaib', 'c', 'tiytr', 'yiav', 'hp', 'yg'], d) == []
    assert candidate(['yz', 'k', 'midujexvn', 'kwcgbht'], y) == [0]
    assert candidate(['qcxobdaxv'], q) == [0]
    assert candidate(['b', 'shrexcf', 've', 'eqpbnuy', 'qdhahodo', 'aerdf', 'bdjlaakagk'], p) == [3]
    assert candidate(['ympv'], q) == []
    assert candidate(['thfy', 'lnfzoyafiy', 'qmc', 'boijcl', 'pvbzmsa', 'yjarwylcyc'], e) == []
    assert candidate(['hqptwi'], o) == []
    assert candidate(['bv', 'xgrhtjnxh', 'fdtljkxa', 'po', 'hejof'], k) == [2]
    assert candidate(['mfdrclyx', 'pith'], e) == []
    assert candidate(['bxeblhrl', 'o', 'uvv'], b) == [0]
    assert candidate(['giygz'], u) == []
    assert candidate(['ffqw', 'nykncbxrqi', 'pgzy', 'of', 'oye', 'f'], g) == [2]
    assert candidate(['jjnh', 'nrbh', 'z'], l) == []
    assert candidate(['gdzkdtvrm', 'ps', 'kp', 'sbdlkac', 's', 'bt'], n) == []
    assert candidate(['hpsk', 'stjltzz', 'gvbjwzktgg', 'hmeovbxvv', 'gqaxqoshbh', 'mqnwyabqq', 'sq'], f) == []
    assert candidate(['gwmg', 'qdjeaxgc', 'rlajltxpd', 'd'], g) == [0,1]
    assert candidate(['dupx', 'r', 'j', 'wq', 'macfcfoz'], r) == [1]
    assert candidate(['rmypzoyto', 'wvhtrbuz', 'dgt', 'tmhqswmkx', 'trpjwzitp', 'tbetdxic'], t) == [0,1,2,3,4,5]
    assert candidate(['vpkjymgdb', 's', 'gv', 'geie'], g) == [0,2,3]
    assert candidate(['epnmbry', 'hhfhprvqba'], l) == []
    assert candidate(['zst', 'mjzbdxsks', 'dza', 'neqj', 'oqeilr'], d) == [1,2]
    assert candidate(['ffruqk', 'sse', 'cyj', 'tntq', 'mibbhhpce'], c) == [2,4]
    assert candidate(['vumzrbe', 'qudq', 'qfrt'], u) == [0,1]
    assert candidate(['wcrrprvu', 'fizkw', 'vzcjxhjy', 'e'], r) == [0]
    assert candidate(['gjk', 'vri'], n) == []
    assert candidate(['fds', 'vbmg', 'p', 'iesyvc', 'wgmyxhoo', 'yfllvzr'], f) == [0,5]
    assert candidate(['mifbjo', 'kpjlwfbas', 'skhueysodn', 'zeewicisy'], g) == []
    assert candidate(['pvkmoccv', 'j'], y) == []
    assert candidate(['s', 'uhcfwsssbe', 'iwofeukmx', 'yfta', 'ovrdcb', 'psnje'], s) == [0,1,5]
    assert candidate(['klpzrjw', 'qmrhbpa'], v) == []
    assert candidate(['fzegksjmw', 'masiwhjue', 'gngsht', 'xwvmp', 'aahn', 'dwxr'], c) == []
    assert candidate(['mveahpesx', 'tsqds', 'g', 'mux', 'bivffitjx', 'zfsqdje'], f) == [4,5]
    assert candidate(['c'], a) == []
    assert candidate(['jzmhnhqkq'], a) == []
    assert candidate(['cfdgbc', 'ltpvko', 'batjenrlq', 'edwefhw'], t) == [1,2]
    assert candidate(['smlcojfydr', 'slb'], r) == [0]
    assert candidate(['lnjimir'], x) == []
    assert candidate(['do'], e) == []
    assert candidate(['xyyvbxsb', 'dc', 'mmqpb', 'mmbwv', 'wdreyof', 'kpk', 'reeb'], l) == []
    assert candidate(['ytvyknnmzv', 'jsoe', 'wctzk'], i) == []


def test_check():
    check(findWordsContaining)


### Metadata below ###
# question_id = 3194
# question_title = Find Words Containing Character
# question_title_slug = find-words-containing-character
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 134
# question_dislikes = 4