from typing import List

def isAcronym(words: List[str], s: str) -> bool:
    """
    Given an array of strings words and a string s, determine if s is an acronym of words.
    
    The string s is considered an acronym of words if it can be formed by concatenating the first character of each string in words in order. For example, "ab" can be formed from ["apple", "banana"], but it can't be formed from ["bear", "aardvark"].
    
    Return true if s is an acronym of words, and false otherwise.
    
    Example 1:
    
    Input: words = ["alice","bob","charlie"], s = "abc"
    Output: true
    Explanation: The first character in the words "alice", "bob", and "charlie" are 'a', 'b', and 'c', respectively. Hence, s = "abc" is the acronym.
    
    Example 2:
    
    Input: words = ["an","apple"], s = "a"
    Output: false
    Explanation: The first character in the words "an" and "apple" are 'a' and 'a', respectively.
    The acronym formed by concatenating these characters is "aa".
    Hence, s = "a" is not the acronym.
    
    Example 3:
    
    Input: words = ["never","gonna","give","up","on","you"], s = "ngguoy"
    Output: true
    Explanation: By concatenating the first character of the words in the array, we get the string "ngguoy".
    Hence, s = "ngguoy" is the acronym.
    
    
    Constraints:
    
     * 1 <= words.length <= 100
     * 1 <= words[i].length <= 10
     * 1 <= s.length <= 100
     * words[i] and s consist of lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['an', 'apple'], a) == False
    assert candidate(['alice', 'bob', 'charlie'], abc) == True
    assert candidate(['never', 'gonna', 'give', 'up', 'on', 'you'], ngguoy) == True
    assert candidate(['ad', 'uadhrwxki'], au) == True
    assert candidate(['afqcpzsx', 'icenu'], yi) == False
    assert candidate(['afkc', 'icxufam'], ai) == True
    assert candidate(['ahbibag', 'aoximesw'], aa) == True
    assert candidate(['auqoc', 'koioxa'], ak) == True
    assert candidate(['b', 'x'], bx) == True
    assert candidate(['c', 'df'], bd) == False
    assert candidate(['dv', 'g'], sg) == False
    assert candidate(['dvn', 'acafe'], dp) == False
    assert candidate(['bpctc', 'kaqquqbpmw'], bk) == True
    assert candidate(['c', 'evlvvhrsqa'], ce) == True
    assert candidate(['dwrvgkxdtm', 'wy'], hw) == False
    assert candidate(['eceekigel', 'gmgdfvsrkw'], wg) == False
    assert candidate(['cfsrsyt', 'md'], cm) == True
    assert candidate(['envpklvi', 'jpymde'], en) == False
    assert candidate(['espleklys', 'dg'], ea) == False
    assert candidate(['euptjhixnu', 'fwci'], kf) == False
    assert candidate(['ddnlfpvy', 'exs'], de) == True
    assert candidate(['deacf', 'hldiauk'], dh) == True
    assert candidate(['dllcn', 'tnzrnzypg'], dt) == True
    assert candidate(['dmekslxlpo', 'wqdgxqwdk'], dw) == True
    assert candidate(['eyzywjsxza', 'jxeimcc'], ex) == False
    assert candidate(['f', 'oylvtltvo'], ho) == False
    assert candidate(['eo', 'e'], ee) == True
    assert candidate(['eucvcqdgg', 'qtdwhygerb'], eq) == True
    assert candidate(['fnpow', 'ysqwqli'], jy) == False
    assert candidate(['gpqyvv', 'kihi'], ik) == False
    assert candidate(['exrgiw', 'irexgmrl'], ei) == True
    assert candidate(['ez', 'acnmits'], ea) == True
    assert candidate(['fvkekkv', 'jfbv'], fj) == True
    assert candidate(['kncge', 'nje'], kw) == False
    assert candidate(['fyocwzlz', 'lz'], fl) == True
    assert candidate(['mnh', 'clep'], pc) == False
    assert candidate(['mnpdwq', 'hziusbxr'], mg) == False
    assert candidate(['g', 'r'], gr) == True
    assert candidate(['n', 'fddigeie'], hf) == False
    assert candidate(['gle', 'irt'], gi) == True
    assert candidate(['h', 'xhtkcj'], hx) == True
    assert candidate(['n', 'ityua'], ei) == False
    assert candidate(['nmxysdim', 'xnpqsauh'], ne) == False
    assert candidate(['ovdhflcck', 'ndd'], oi) == False
    assert candidate(['piiyodecdf', 'wdwfxsjfou'], pp) == False
    assert candidate(['hdmwkr', 'jfrqh'], hj) == True
    assert candidate(['hflf', 'fvnotmdcpw'], hf) == True
    assert candidate(['hnwphhozqw', 'cfhsjlqj'], hc) == True
    assert candidate(['pxcsaaa', 'lrvxsc'], pz) == False
    assert candidate(['htlsq', 'y'], hy) == True
    assert candidate(['iakfeop', 'pd'], ip) == True
    assert candidate(['qir', 'qyyzmntl'], qa) == False
    assert candidate(['iakfmr', 'gzggxzwor'], ig) == True
    assert candidate(['jna', 'rjdbu'], jr) == True
    assert candidate(['qunqyc', 'ouzjotitvn'], co) == False
    assert candidate(['rdednrsn', 'yfrgdeapme'], ny) == False
    assert candidate(['rtnbfaemv', 'kgpcwaoik'], rf) == False
    assert candidate(['s', 'n'], sx) == False
    assert candidate(['siiyqtkyis', 'mogzgabcgk'], fm) == False
    assert candidate(['tit', 'pmuqzrs'], tz) == False
    assert candidate(['uip', 'hhstwupgg'], eh) == False
    assert candidate(['uyj', 'jlfnksqlt'], ur) == False
    assert candidate(['kabfejv', 'g'], kg) == True
    assert candidate(['w', 'eshensjifo'], ez) == False
    assert candidate(['khhhdsaevp', 'dnod'], kd) == True
    assert candidate(['wefmc', 'tmunsmg'], jt) == False
    assert candidate(['wo', 'jhaabx'], wx) == False
    assert candidate(['kltil', 'mubemf'], km) == True
    assert candidate(['kxkvhylsh', 'gyshntskq'], kg) == True
    assert candidate(['wseopbedw', 'iihrgujev'], wq) == False
    assert candidate(['kzxp', 'fy'], kf) == True
    assert candidate(['wvdx', 'jerzn'], cj) == False
    assert candidate(['y', 'qppnclhhbd'], mq) == False
    assert candidate(['yegnsnddq', 'kusrkz'], bk) == False
    assert candidate(['couqsa', 'sncuru', 'jhgxpxipg'], csa) == False
    assert candidate(['csm', 'hexhvojfj', 'l'], chh) == False
    assert candidate(['lbor', 'zx'], lz) == True
    assert candidate(['losinu', 'ptsjoihvj'], lp) == True
    assert candidate(['maczdfm', 'ywj'], my) == True
    assert candidate(['d', 'geviina', 'tyljs'], dvt) == False
    assert candidate(['mammhva', 'igyzbwpj'], mi) == True
    assert candidate(['ecmlkida', 'vrjwdpe', 'vocff'], hvv) == False
    assert candidate(['emqlklvrw', 'das', 'bzuq'], edm) == False
    assert candidate(['hawikjbs', 'qi', 'ssvgttkzd'], rornirdphvargyce) == False
    assert candidate(['hd', 'f', 'meivn'], hpm) == False
    assert candidate(['mqhptbyzzv', 'mfubjraiqz'], mm) == True
    assert candidate(['mvftnzftb', 'ga'], mg) == True
    assert candidate(['ncgutvi', 'rsh'], nr) == True
    assert candidate(['ntf', 'txayzc'], nt) == True
    assert candidate(['nubibbe', 'wzwdrjcck'], nw) == True
    assert candidate(['hphfek', 'kezkkq', 'oh'], hmo) == False
    assert candidate(['odtclcvcj', 'ufhrhk'], ou) == True
    assert candidate(['ojcn', 'naujlz'], on) == True
    assert candidate(['iho', 'ignyipken', 'q'], wiq) == False
    assert candidate(['olynt', 'xf'], ox) == True
    assert candidate(['ir', 'wzhmxee', 'kjfwful'], iwn) == False
    assert candidate(['ixo', 'wigba', 'raaphui'], dwr) == False
    assert candidate(['opup', 'eme'], oe) == True
    assert candidate(['kmmoq', 'aoh', 'hznkpurdh'], kar) == False
    assert candidate(['ottxwi', 'akpixfvbel'], oa) == True


def test_check():
    check(isAcronym)


### Metadata below ###
# question_id = 2977
# question_title = Check if a String Is an Acronym of Words
# question_title_slug = check-if-a-string-is-an-acronym-of-words
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 257
# question_dislikes = 7