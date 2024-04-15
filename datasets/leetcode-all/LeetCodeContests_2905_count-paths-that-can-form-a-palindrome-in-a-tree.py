from typing import List

def countPalindromePaths(parent: List[int], s: str) -> int:
    """
    You are given a tree (i.e. a connected, undirected graph that has no cycles) rooted at node 0 consisting of n nodes numbered from 0 to n - 1. The tree is represented by a 0-indexed array parent of size n, where parent[i] is the parent of node i. Since node 0 is the root, parent[0] == -1.
    
    You are also given a string s of length n, where s[i] is the character assigned to the edge between i and parent[i]. s[0] can be ignored.
    
    Return the number of pairs of nodes (u, v) such that u < v and the characters assigned to edges on the path from u to v can be rearranged to form a palindrome.
    
    A string is a palindrome when it reads the same backwards as forwards.
    
    Example 1:
    
    [https://assets.leetcode.com/uploads/2023/07/15/treedrawio-8drawio.png]
    
    Input: parent = [-1,0,0,1,1,2], s = "acaabc"
    Output: 8
    Explanation: The valid pairs are:
    - All the pairs (0,1), (0,2), (1,3), (1,4) and (2,5) result in one character which is always a palindrome.
    - The pair (2,3) result in the string "aca" which is a palindrome.
    - The pair (1,5) result in the string "cac" which is a palindrome.
    - The pair (3,5) result in the string "acac" which can be rearranged into the palindrome "acca".
    
    Example 2:
    
    Input: parent = [-1,0,0,0,0], s = "aaaaa"
    Output: 10
    Explanation: Any pair of nodes (u,v) where u < v is valid.
    
    
    Constraints:
    
     * n == parent.length == s.length
     * 1 <= n <= 105
     * 0 <= parent[i] <= n - 1 for all i >= 1
     * parent[0] == -1
     * parent represents a valid tree.
     * s consists of only lowercase English letters.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([-1, 0, 0, 1, 1, 2], acaabc) == 8
    assert candidate([-1, 0, 0, 0, 0], aaaaa) == 10
    assert candidate([-1, 0], pi) == 1
    assert candidate([-1, 5, 0, 5, 5, 2], xsbcqq) == 7
    assert candidate([-1, 6, 8, 5, 0, 4, 2, 0, 4], tiaiaivea) == 20
    assert candidate([-1, 0, 0, 0, 1, 3, 7, 2], pxxgtgpp) == 18
    assert candidate([-1, 0, 1, 4, 1, 0], hfhmmf) == 12
    assert candidate([-1, 0, 1], cri) == 2
    assert candidate([-1, 0, 0, 5, 7, 0, 0, 1, 2, 0], snlzlzngna) == 19
    assert candidate([-1, 0, 0], sat) == 2
    assert candidate([-1, 0], ko) == 1
    assert candidate([-1, 0, 6, 4, 1, 6, 3, 1], jibwrfoi) == 8
    assert candidate([-1, 4, 0, 4, 6, 0, 5, 5], bhrlorou) == 18
    assert candidate([-1, 4, 4, 6, 0, 7, 1, 1], boqvndoo) == 18
    assert candidate([-1, 2, 0, 1, 0], eixnx) == 6
    assert candidate([-1, 5, 0, 2, 2, 3], jwlllw) == 14
    assert candidate([-1, 2, 6, 2, 5, 2, 7, 0], pipfippl) == 15
    assert candidate([-1, 6, 0, 6, 5, 6, 2, 6, 5, 6], zwrdhnhwtf) == 11
    assert candidate([-1, 4, 1, 1, 5, 0], gndfnj) == 9
    assert candidate([-1, 0, 0, 0, 1], crwkr) == 7
    assert candidate([-1, 4, 4, 4, 0, 2, 0], wwwwewd) == 13
    assert candidate([-1, 2, 0], mwz) == 2
    assert candidate([-1, 0, 1, 6, 5, 0, 1, 1, 1, 0], mqgmjzrwuq) == 14
    assert candidate([-1, 2, 3, 0, 3, 3, 3, 3], bnievjov) == 8
    assert candidate([-1, 0, 0], kyr) == 2
    assert candidate([-1, 0, 5, 1, 2, 3, 2, 3, 9, 4], xukzwzsnww) == 18
    assert candidate([-1, 6, 0, 1, 5, 0, 2, 2, 6, 0], snlpzocqpt) == 10
    assert candidate([-1, 3, 0, 5, 5, 2], pxlxpl) == 12
    assert candidate([-1, 5, 5, 5, 5, 0], ketewj) == 6
    assert candidate([-1, 0, 4, 0, 0], zrrqq) == 7
    assert candidate([-1, 0, 0], qlw) == 2
    assert candidate([-1, 0, 0], bds) == 2
    assert candidate([-1, 2, 6, 6, 0, 4, 4, 2], odggsrsp) == 13
    assert candidate([-1, 0, 1], ldk) == 2
    assert candidate([-1, 0, 7, 0, 6, 2, 3, 3, 3], elllffflv) == 28
    assert candidate([-1, 4, 4, 0, 0], ntzhc) == 4
    assert candidate([-1, 5, 4, 1, 1, 0, 4], gmcmavf) == 8
    assert candidate([-1, 0, 0, 4, 0], aogkg) == 6
    assert candidate([-1, 2, 0], xmt) == 2
    assert candidate([-1, 2, 0], dff) == 3
    assert candidate([-1, 0, 1, 1], lsvw) == 3
    assert candidate([-1, 0, 0], ovi) == 2
    assert candidate([-1, 6, 0, 5, 2, 2, 0, 3], lpnfznpf) == 19
    assert candidate([-1, 7, 5, 5, 0, 0, 2, 2], hqitxxwi) == 16
    assert candidate([-1, 2, 0], pyw) == 2
    assert candidate([-1, 0, 0, 0], ybfa) == 3
    assert candidate([-1, 3, 6, 6, 6, 0, 0, 4], ulicllkc) == 11
    assert candidate([-1, 3, 1, 0], ukne) == 3
    assert candidate([-1, 2, 0, 1, 0, 0], rhlxdd) == 6
    assert candidate([-1, 4, 5, 0, 2, 0], zenbnb) == 12
    assert candidate([-1, 0, 5, 4, 5, 1, 3, 9, 7, 4], jigognjnlb) == 12
    assert candidate([-1, 4, 4, 6, 3, 0, 5, 3, 6], imrcmdkew) == 11
    assert candidate([-1, 4, 4, 0, 6, 4, 0, 0], dqpipiyz) == 9
    assert candidate([-1, 0, 0], mgm) == 2
    assert candidate([-1, 0, 4, 0, 1], pzlob) == 4
    assert candidate([-1, 8, 0, 8, 8, 3, 4, 4, 0, 6], vvbvyovyvy) == 30
    assert candidate([-1, 0, 4, 0, 5, 1, 1], dvrvpea) == 9
    assert candidate([-1, 0, 1], jnx) == 2
    assert candidate([-1, 0, 1, 2], wxjj) == 5
    assert candidate([-1, 3, 3, 0, 1, 2, 1], erorchx) == 9
    assert candidate([-1, 0, 4, 1, 1, 4, 3], ywzwzcw) == 14
    assert candidate([-1, 4, 6, 2, 3, 3, 0], bititzq) == 10
    assert candidate([-1, 2, 0], uup) == 2
    assert candidate([-1, 2, 3, 0, 0], siiou) == 6
    assert candidate([-1, 2, 0, 2, 0], dilfs) == 4
    assert candidate([-1, 3, 7, 0, 1, 0, 2, 3, 0], wqojvjoqq) == 22
    assert candidate([-1, 0], hi) == 1
    assert candidate([-1, 3, 1, 4, 0, 6, 3, 1], fwvwwqqw) == 21
    assert candidate([-1, 0, 4, 2, 1, 1, 1], hkmmkmk) == 16
    assert candidate([-1, 4, 3, 1, 0], bzeez) == 9
    assert candidate([-1, 3, 3, 0], zyuj) == 3
    assert candidate([-1, 0, 1, 4, 6, 2, 2], tlcpcll) == 13
    assert candidate([-1, 2, 0], vjw) == 2
    assert candidate([-1, 0], nz) == 1
    assert candidate([-1, 0, 0], iot) == 2
    assert candidate([-1, 2, 8, 8, 3, 1, 2, 0, 0], rlurrluxm) == 19
    assert candidate([-1, 5, 0, 0, 0, 4], zxrddx) == 10
    assert candidate([-1, 0, 1, 2], tffc) == 5
    assert candidate([-1, 5, 3, 0, 3, 0], ltdewr) == 5
    assert candidate([-1, 0, 4, 5, 0, 1], gjwwjv) == 9
    assert candidate([-1, 7, 7, 0, 8, 2, 2, 4, 3, 8], cnssgsoogy) == 20
    assert candidate([-1, 7, 1, 6, 0, 0, 7, 0], zaceoxax) == 13
    assert candidate([-1, 0, 1, 0, 3, 0], zrvyyc) == 8
    assert candidate([-1, 4, 9, 0, 3, 3, 7, 4, 2, 0], qxixxxxxix) == 41
    assert candidate([-1, 2, 0, 5, 5, 2, 5], hoptvuu) == 9
    assert candidate([-1, 7, 3, 0, 3, 1, 0, 3], kopflpao) == 13
    assert candidate([-1, 0, 1, 6, 1, 1, 1], bhhslhl) == 11
    assert candidate([-1, 0, 0, 1, 2], khhch) == 8
    assert candidate([-1, 0, 3, 0], koss) == 5
    assert candidate([-1, 3, 4, 4, 0], owzoq) == 4
    assert candidate([-1, 2, 0, 1, 1], zqqww) == 8
    assert candidate([-1, 0, 1, 1, 1, 2, 2], lacccdb) == 13
    assert candidate([-1, 4, 3, 4, 6, 6, 7, 0, 6], sjoooorrm) == 24
    assert candidate([-1, 7, 4, 2, 0, 6, 2, 3, 7], guqyxxtau) == 9
    assert candidate([-1, 4, 4, 0, 0], scicc) == 8
    assert candidate([-1, 5, 8, 6, 3, 0, 2, 3, 1], naphhahhp) == 29
    assert candidate([-1, 3, 8, 8, 5, 0, 4, 0, 0, 2], ciiyggofij) == 23
    assert candidate([-1, 2, 0, 2, 2, 3, 7, 8, 4, 2], stthtthddt) == 34
    assert candidate([-1, 2, 0, 7, 3, 7, 4, 0], mjjsjdsj) == 18
    assert candidate([-1, 0], ey) == 1


def test_check():
    check(countPalindromePaths)


### Metadata below ###
# question_id = 2905
# question_title = Count Paths That Can Form a Palindrome in a Tree
# question_title_slug = count-paths-that-can-form-a-palindrome-in-a-tree
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 343
# question_dislikes = 4