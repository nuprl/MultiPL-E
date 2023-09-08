def are_almost_equal(s1: str, s2: str) -> bool:
    """
    You are given two strings s1 and s2 of equal length. A string swap is an operation where you choose two indices in a string (not necessarily different) and swap the characters at these indices.
    Return true if it is possible to make both strings equal by performing at most one string swap on exactly one of the strings. Otherwise, return false.
 
    Example 1:

    Input: s1 = "bank", s2 = "kanb"
    Output: true
    Explanation: For example, swap the first character with the last character of s2 to make "bank".

    Example 2:

    Input: s1 = "attack", s2 = "defend"
    Output: false
    Explanation: It is impossible to make them equal with one string swap.

    Example 3:

    Input: s1 = "kelb", s2 = "kelb"
    Output: true
    Explanation: The two strings are already equal, so no string swap operation is required.

 
    Constraints:

    1 <= s1.length, s2.length <= 100
    s1.length == s2.length
    s1 and s2 consist of only lowercase English letters.

    """
    ### Canonical solution below ###
    if s1 == s2:
        return True
    diff = [i for i in range(len(s1)) if s1[i] != s2[i]]
    return len(diff) == 2 and s1[diff[0]] == s2[diff[1]] and s1[diff[1]] == s2[diff[0]]




### Unit tests below ###
def check(candidate):
	assert candidate("elixir", "elxiri") == False
	assert candidate("h", "h") == True
	assert candidate("docker", "dockre") == True
	assert candidate("mongodb", "mongodb") == True
	assert candidate("typescript", "typescript") == True
	assert candidate("nodejs", "nodejs") == True
	assert candidate("elixir", "elixir") == True
	assert candidate("c", "c") == True
	assert candidate(
    "react", "rceat") == False
	assert candidate("d", "e") == False
	assert candidate(
    "kanb", "bank") == True
	assert candidate("python", "python") == True
	assert candidate("java", "java") == True
	assert candidate("java", "jvaa") == True
	assert candidate("attack", "defend") == False
	assert candidate("swift", "swfit") == True
	assert candidate("css", "csss") == False
	assert candidate(
    "c", "c") == True
	assert candidate("php", "php") == True
	assert candidate(
    "azrue", "azure") == True
	assert candidate(
    "dockre", "docker") == True
	assert candidate("python", "pyhton") == True
	assert candidate(
    "cgp", "gcp") == True
	assert candidate(
    "mongobd", "mongodb") == True
	assert candidate(
    "ngulara", "angular") == False
	assert candidate("s", "s") == True
	assert candidate("swift", "swifts") == False
	assert candidate("go", "go") == True
	assert candidate(
    "nodejs", "nodejss") == False
	assert candidate(
    "elxiri", "elixir") == False
	assert candidate("sql", "slq") == True
	assert candidate(
    "uve", "vue") == True
	assert candidate("mongodb", "mongobd") == True
	assert candidate(
    "fireabse", "firebase") == True
	assert candidate("css", "scs") == True
	assert candidate("javascript", "javasriptc") == False
	assert candidate("javascript", "javascript") == True
	assert candidate("world", "wlrod") == True
	assert candidate("algo", "algo") == True
	assert candidate("c#", "c#") == True
	assert candidate("rust", "rust") == True
	assert candidate("typescript", "typesctipt") == False
	assert candidate("html", "html") == True
	assert candidate("tcl", "tcl") == True
	assert candidate("z", "z") == True
	assert candidate(
    "kelb", "kelb") == True
	assert candidate("go", "og") == True
	assert candidate("gcp", "cgp") == True
	assert candidate("csharp", "cshrap") == True
	assert candidate("sql", "sql") == True
	assert candidate("d", "d") == True
	assert candidate(
    "rust", "rust") == True
	assert candidate("bank", "kanb") == True
	assert candidate("kotlin", "kotlni") == True
	assert candidate("firebase", "fireabse") == True
	assert candidate("angular", "ngulara") == False
	assert candidate("docker", "docker") == True
	assert candidate(
    "javascript", "javascripdt") == False
	assert candidate(
    "docker", "dockre") == True
	assert candidate("r", "r") == True
	assert candidate("vue", "uve") == True
	assert candidate("aws", "aws") == True
	assert candidate(
    "hmtl", "html") == True
	assert candidate("crystal", "crsytal") == True
	assert candidate("hello", "hlelo") == True
	assert candidate("react", "rceat") == False
	assert candidate(
    "rceat", "react") == False
	assert candidate(
    "python", "python") == True
	assert candidate("html", "hmtl") == True
	assert candidate("aws", "asw") == True
	assert candidate("javascript", "javascripr") == False
	assert candidate(
    "hlelo", "hello") == True
	assert candidate("azure", "azrue") == True
	assert candidate(
    "flask", "fktash") == False
	assert candidate("jquery", "jquery") == True
	assert candidate("kelb", "kelb") == True
def test_check():
	check(are_almost_equal)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string,counting
# Metadata Coverage: 100
