from typing import List


def equationsPossible(equations: List[str]) -> bool:
    """
    You are given an array of strings equations that represent relationships between variables where each string equations[i] is of length 4 and takes one of two different forms: "xi==yi" or "xi!=yi".Here, xi and yi are lowercase letters (not necessarily different) that represent one-letter variable names.
    Return true if it is possible to assign integers to variable names so as to satisfy all the given equations, or false otherwise.
 
    Example 1:

    Input: equations = ["a==b","b!=a"]
    Output: false
    Explanation: If we assign say, a = 1 and b = 1, then the first equation is satisfied, but not the second.
    There is no way to assign the variables to satisfy both equations.

    Example 2:

    Input: equations = ["b==a","a==b"]
    Output: true
    Explanation: We could assign a = 1 and b = 1 to satisfy both equations.

 
    Constraints:

    1 <= equations.length <= 500
    equations[i].length == 4
    equations[i][0] is a lowercase letter.
    equations[i][1] is either '=' or '!'.
    equations[i][2] is '='.
    equations[i][3] is a lowercase letter.

    """
    ### Canonical solution below ###
    parent = [i for i in range(26)]

    def find(x):
        if parent[x] != x:
            parent[x] = find(parent[x])
        return parent[x]

    for e in equations:
        if e[1] == '=':
            x = ord(e[0]) - ord('a')
            y = ord(e[3]) - ord('a')
            parent[find(x)] = find(y)

    for e in equations:
        if e[1] == '!' and find(ord(e[0]) - ord('a')) == find(ord(e[3]) - ord('a')):
            return False

    return True




### Unit tests below ###
def check(candidate):
	assert candidate(["x==y", "y==z", "y==z", "z==x", "z==v", "x==v"]) == True
	assert candidate(["a==b", "b!=c", "a==c"]) == False
	assert candidate(["a==b", "b==c", "c==d", "d==e", "e==f", "f==g", "g==h", "h==i", "i==j", "j==k", "k==l", "l==m", "m==n", "n!=e"]) == False
	assert candidate(["a!=b", "b!=c", "c!=d", "d!=a"]) == True
	assert candidate(["b==c", "c==d", "a==d", "x!=z", "z==y", "y==x"]) == False
	assert candidate(["a==b", "b==c", "c==d", "d==e", "e==f", "f==g", "g==h", "h==i", "i==j", "j==k", "k==l", "l==a"]) == True
	assert candidate(["a!=a"]) == False
	assert candidate(["x==y", "y==z", "y==x", "z!=x"]) == False
	assert candidate(["a==b", "b==c", "a==c"]) == True
	assert candidate(["a==b", "b==c", "c==d", "d!=a", "a==d"]) == False
	assert candidate(["x==y", "y==z", "z==x", "x!=z"]) == False
	assert candidate(["a==b", "b==c", "c==d", "d!=a"]) == False
	assert candidate(["x==y", "y==z", "z!=x", "z==x"]) == False
	assert candidate(["a==b", "b!=a"]) == False
	assert candidate(["b==c", "c==d", "b!=a", "a==d", "z==y", "z==x", "z!=y"]) == False
	assert candidate(["c==c", "b==d", "x!=z"]) == True
	assert candidate(["x==y", "y==z", "z!=x"]) == False
	assert candidate(["a==b", "b!=c", "c==a"]) == False
	assert candidate(["a==b", "b==c", "c==d", "d==a"]) == True
	assert candidate(["a!=b", "b!=c", "c==a", "a==b", "b==c", "c==d", "d!=a"]) == False
	assert candidate(["x==y", "y==z", "z==x"]) == True
	assert candidate(["u!=y", "x==z", "z!=w", "y==z", "u==x", "a==b", "b==z", "u!=y", "z!=w", "z==x", "z==x", "y!=w", "y==z", "x!=y", "u==x", "y==c", "z!=w", "x==c", "x!=a", "u==z", "u==y", "y==c", "a==z", "x!=a", "u!=y"]) == False
	assert candidate(["a==b", "b==a"]) == True
	assert candidate(["a==b", "b==c", "a==c", "c==d", "d!=a"]) == False
	assert candidate(["x==y", "y!=z", "z!=x", "z==y"]) == False
	assert candidate(["x==y", "y==z", "x!=z"]) == False
	assert candidate(["a==b"]) == True
	assert candidate(["p==q", "q==r", "r==s", "s==t", "t==u", "u==v", "v==w", "w==x", "x==y", "y!=p"]) == False
	assert candidate(["a==b", "b!=c", "c==d", "d==a"]) == False
	assert candidate(["a==b", "b==c", "c==d", "d==e", "e==f", "f==g", "g==h", "h==i", "i==j", "j==k", "k==l", "l==m", "m==n", "n==e"]) == True
	assert candidate(["x==y", "y==z"]) == True
	assert candidate(["a==b", "b==c", "a!=c"]) == False
	assert candidate(["x!=y", "y==z", "z==x"]) == False
	assert candidate(["x!=y", "y!=z", "z!=x"]) == True
	assert candidate(["a==b", "b==c", "c==d", "d==e", "e==f", "f==g", "g==h", "h==i", "i==j", "j==k", "k==l", "l!=a"]) == False
def test_check():
	check(equationsPossible)
# Metadata Difficulty: Medium
# Metadata Topics: array,string,union-find,graph
# Metadata Coverage: 100
