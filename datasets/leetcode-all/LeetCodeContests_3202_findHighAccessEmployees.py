from typing import List

def findHighAccessEmployees(access_times: List[List[str]]) -> List[str]:
    """
    You are given a 2D 0-indexed array of strings, access_times, with size n. For each i where 0 <= i <= n - 1, access_times[i][0] represents the name of an employee, and access_times[i][1] represents the access time of that employee. All entries in access_times are within the same day.
    The access time is represented as four digits using a 24-hour time format, for example, "0800" or "2250".
    An employee is said to be high-access if he has accessed the system three or more times within a one-hour period.
    Times with exactly one hour of difference are not considered part of the same one-hour period. For example, "0815" and "0915" are not part of the same one-hour period.
    Access times at the start and end of the day are not counted within the same one-hour period. For example, "0005" and "2350" are not part of the same one-hour period.
    Return a list that contains the names of high-access employees with any order you want.
    
    Example 1:
    
    Input: access_times = [["a","0549"],["b","0457"],["a","0532"],["a","0621"],["b","0540"]]
    Output: ["a"]
    Explanation: "a" has three access times in the one-hour period of [05:32, 06:31] which are 05:32, 05:49, and 06:21.
    But "b" does not have more than two access times at all.
    So the answer is ["a"].
    Example 2:
    
    Input: access_times = [["d","0002"],["c","0808"],["c","0829"],["e","0215"],["d","1508"],["d","1444"],["d","1410"],["c","0809"]]
    Output: ["c","d"]
    Explanation: "c" has three access times in the one-hour period of [08:08, 09:07] which are 08:08, 08:09, and 08:29.
    "d" has also three access times in the one-hour period of [14:10, 15:09] which are 14:10, 14:44, and 15:08.
    However, "e" has just one access time, so it can not be in the answer and the final answer is ["c","d"].
    Example 3:
    
    Input: access_times = [["cd","1025"],["ab","1025"],["cd","1046"],["cd","1055"],["ab","1124"],["ab","1120"]]
    Output: ["ab","cd"]
    Explanation: "ab" has three access times in the one-hour period of [10:25, 11:24] which are 10:25, 11:20, and 11:24.
    "cd" has also three access times in the one-hour period of [10:25, 11:24] which are 10:25, 10:46, and 10:55.
    So the answer is ["ab","cd"].
    
    Constraints:
    
    1 <= access_times.length <= 100
    access_times[i].length == 2
    1 <= access_times[i][0].length <= 10
    access_times[i][0] consists only of English small letters.
    access_times[i][1].length == 4
    access_times[i][1] is in 24-hour time format.
    access_times[i][1] consists only of '0' to '9'.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([['a', '0549'], ['b', '0457'], ['a', '0532'], ['a', '0621'], ['b', '0540']]) == ["a"]
    assert candidate([['d', '0002'], ['c', '0808'], ['c', '0829'], ['e', '0215'], ['d', '1508'], ['d', '1444'], ['d', '1410'], ['c', '0809']]) == ["c","d"]
    assert candidate([['cd', '1025'], ['ab', '1025'], ['cd', '1046'], ['cd', '1055'], ['ab', '1124'], ['ab', '1120']]) == ["ab","cd"]
    assert candidate([['baipstt', '1456']]) == []
    assert candidate([['bouo', '1126']]) == []
    assert candidate([['cavfbqg', '2304']]) == []
    assert candidate([['cenjcq', '1007']]) == []
    assert candidate([['cqotrwqcaq', '0131']]) == []
    assert candidate([['downbuk', '1951']]) == []
    assert candidate([['dqsoiyz', '2204']]) == []
    assert candidate([['duzeyrov', '0243']]) == []
    assert candidate([['erfg', '1223']]) == []
    assert candidate([['fwhefd', '2026']]) == []
    assert candidate([['gbefbne', '0911']]) == []
    assert candidate([['gp', '1540']]) == []
    assert candidate([['ht', '1319']]) == []
    assert candidate([['inahnsjdqz', '1750']]) == []
    assert candidate([['jwxvijxo', '0851']]) == []
    assert candidate([['kibwwvjuez', '0716']]) == []
    assert candidate([['lvry', '0706']]) == []
    assert candidate([['mbsyxxfzjf', '0114']]) == []
    assert candidate([['mlehvzqb', '1620']]) == []
    assert candidate([['mmgat', '0516']]) == []
    assert candidate([['mxatapbs', '2240']]) == []
    assert candidate([['mzxbgtfc', '1531']]) == []
    assert candidate([['nnhh', '1445']]) == []
    assert candidate([['o', '1414']]) == []
    assert candidate([['qaxqifxxww', '1557']]) == []
    assert candidate([['rjy', '0200']]) == []
    assert candidate([['sgpgh', '0539']]) == []
    assert candidate([['sxx', '0325']]) == []
    assert candidate([['tkvgcf', '1645']]) == []
    assert candidate([['ttk', '0304']]) == []
    assert candidate([['un', '0833']]) == []
    assert candidate([['vlifcdn', '0731']]) == []
    assert candidate([['w', '2224']]) == []
    assert candidate([['wkmehwsg', '2023']]) == []
    assert candidate([['y', '1005']]) == []
    assert candidate([['ynnale', '1331']]) == []
    assert candidate([['yt', '0900']]) == []
    assert candidate([['zbgzk', '0527']]) == []
    assert candidate([['a', '0039'], ['a', '0042']]) == []
    assert candidate([['ajhzcltqse', '0605'], ['ajhzcltqse', '0558']]) == []
    assert candidate([['cbaqsymoi', '0001'], ['cbaqsymoi', '0004']]) == []
    assert candidate([['df', '1958'], ['df', '2002']]) == []
    assert candidate([['dhmnhvou', '0529'], ['dhmnhvou', '0531']]) == []
    assert candidate([['epghzrog', '0333'], ['epghzrog', '0333']]) == []
    assert candidate([['gda', '1529'], ['gda', '1534']]) == []
    assert candidate([['gjhtgm', '2207'], ['gjhtgm', '2156']]) == []
    assert candidate([['gsd', '2030'], ['gsd', '2046']]) == []
    assert candidate([['gsstuktwm', '1403'], ['gsstuktwm', '1357']]) == []
    assert candidate([['h', '2159'], ['h', '2203']]) == []
    assert candidate([['hxrdffk', '1736'], ['hxrdffk', '1724']]) == []
    assert candidate([['iaxsnenx', '2037'], ['iaxsnenx', '2050']]) == []
    assert candidate([['ikwjvflxq', '0055'], ['ikwjvflxq', '0056']]) == []
    assert candidate([['jkgjmku', '0743'], ['jkgjmku', '0754']]) == []
    assert candidate([['jkw', '0241'], ['jkw', '0235']]) == []
    assert candidate([['jykugiprxf', '1633'], ['jykugiprxf', '1641']]) == []
    assert candidate([['kdxw', '1338'], ['kdxw', '1336']]) == []
    assert candidate([['kenltmrg', '0932'], ['kenltmrg', '0941']]) == []
    assert candidate([['kptjrr', '1356'], ['kptjrr', '1349']]) == []
    assert candidate([['mcd', '1333'], ['mcd', '1325']]) == []
    assert candidate([['mhkizga', '1552'], ['mhkizga', '1551']]) == []
    assert candidate([['monxm', '1748'], ['monxm', '1742']]) == []
    assert candidate([['msjydtinfy', '1301'], ['msjydtinfy', '1245']]) == []
    assert candidate([['myhdmu', '1407'], ['myhdmu', '1419']]) == []
    assert candidate([['nyoezc', '1050'], ['nyoezc', '1041']]) == []
    assert candidate([['oksvrskxch', '0053'], ['oksvrskxch', '0111']]) == []
    assert candidate([['pxc', '1915'], ['pxc', '1910']]) == []
    assert candidate([['qedxyj', '0609'], ['qedxyj', '0614']]) == []
    assert candidate([['qmslkyxnph', '0946'], ['qmslkyxnph', '0958']]) == []
    assert candidate([['r', '0206'], ['r', '0202']]) == []
    assert candidate([['r', '2041'], ['r', '2052']]) == []
    assert candidate([['rf', '2205'], ['rf', '2203']]) == []
    assert candidate([['rswegeuhqd', '0235'], ['rswegeuhqd', '0238']]) == []
    assert candidate([['skfgl', '0718'], ['skfgl', '0712']]) == []
    assert candidate([['smnnl', '2329'], ['smnnl', '2340']]) == []
    assert candidate([['tpbbxpx', '0409'], ['tpbbxpx', '0408']]) == []
    assert candidate([['uiqxqp', '0515'], ['uiqxqp', '0516']]) == []
    assert candidate([['uyuz', '1530'], ['uyuz', '1543']]) == []
    assert candidate([['vfeunkee', '1500'], ['vfeunkee', '1508']]) == []
    assert candidate([['wbyd', '1848'], ['wbyd', '1839']]) == []
    assert candidate([['x', '0522'], ['x', '0506']]) == []
    assert candidate([['xhrhdy', '1455'], ['xhrhdy', '1454']]) == []
    assert candidate([['xmsypay', '1605'], ['xmsypay', '1612']]) == []
    assert candidate([['xy', '0015'], ['xy', '0021']]) == []
    assert candidate([['ydtnnpzw', '0516'], ['ydtnnpzw', '0520']]) == []
    assert candidate([['zh', '2348'], ['zh', '2334']]) == []
    assert candidate([['zinywjn', '0017'], ['zinywjn', '0019']]) == []
    assert candidate([['aczdfmsd', '0317'], ['aczdfmsd', '0314'], ['aczdfmsd', '0320']]) == ["aczdfmsd"]
    assert candidate([['bsluadumi', '1518'], ['bsluadumi', '1516'], ['bsluadumi', '1510']]) == ["bsluadumi"]
    assert candidate([['ckrdpxq', '1122'], ['ckrdpxq', '1125'], ['ckrdpxq', '1121']]) == ["ckrdpxq"]
    assert candidate([['fe', '1320'], ['fe', '1326'], ['fe', '1331']]) == ["fe"]
    assert candidate([['ff', '1508'], ['ff', '1508'], ['ff', '1516']]) == ["ff"]
    assert candidate([['fnlmbcedu', '0052'], ['fnlmbcedu', '0103'], ['fnlmbcedu', '0055']]) == ["fnlmbcedu"]
    assert candidate([['hffgwjjve', '0159'], ['hffgwjjve', '0152'], ['hffgwjjve', '0159']]) == ["hffgwjjve"]
    assert candidate([['ivlvfgwsx', '0122'], ['ivlvfgwsx', '0135'], ['ivlvfgwsx', '0139']]) == ["ivlvfgwsx"]
    assert candidate([['jlfnksqlt', '0304'], ['jlfnksqlt', '0252'], ['jlfnksqlt', '0304']]) == ["jlfnksqlt"]
    assert candidate([['jy', '0647'], ['jy', '0652'], ['jy', '0704']]) == ["jy"]
    assert candidate([['kchzzdso', '2329'], ['kchzzdso', '2326'], ['kchzzdso', '2329']]) == ["kchzzdso"]


def test_check():
    check(findHighAccessEmployees)


### Metadata below ###
# question_id = 3202
# question_title = High-Access Employees
# question_title_slug = high-access-employees
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 110
# question_dislikes = 14