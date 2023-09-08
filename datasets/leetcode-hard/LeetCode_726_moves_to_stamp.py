from typing import List


def moves_to_stamp(stamp: str, target: str) -> list:
    """
    You are given two strings stamp and target. Initially, there is a string s of length target.length with all s[i] == '?'.
    In one turn, you can place stamp over s and replace every letter in the s with the corresponding letter from stamp.

    For example, if stamp = "abc" and target = "abcba", then s is "?????" initially. In one turn you can:


    place stamp at index 0 of s to obtain "abc??",
    place stamp at index 1 of s to obtain "?abc?", or
    place stamp at index 2 of s to obtain "??abc".

        Note that stamp must be fully contained in the boundaries of s in order to stamp (i.e., you cannot place stamp at index 3 of s).

    We want to convert s to target using at most 10 * target.length turns.
    Return an array of the index of the left-most letter being stamped at each turn. If we cannot obtain target from s within 10 * target.length turns, return an empty array.
 
    Example 1:

    Input: stamp = "abc", target = "ababc"
    Output: [0,2]
    Explanation: Initially s = "?????".
    - Place stamp at index 0 to get "abc??".
    - Place stamp at index 2 to get "ababc".
    [1,0,2] would also be accepted as an answer, as well as some other answers.

    Example 2:

    Input: stamp = "abca", target = "aabcaca"
    Output: [3,0,1]
    Explanation: Initially s = "???????".
    - Place stamp at index 3 to get "???abca".
    - Place stamp at index 0 to get "abcabca".
    - Place stamp at index 1 to get "aabcaca".

 
    Constraints:

    1 <= stamp.length <= target.length <= 1000
    stamp and target consist of lowercase English letters.

    """
    ### Canonical solution below ###
    result = []
    is_stamped = [False] * len(target)
    stamp_count = 0
    target = list(target)

    while stamp_count < 10 * len(target):
        found_stamp = False
        for i in range(len(target) - len(stamp) + 1):
            if is_stamped[i]:
                continue
            j = 0
            overlap = 0
            while j < len(stamp) and (target[i + j] == '?' or target[i + j] == stamp[j]):
                if target[i + j] == stamp[j]:
                    overlap += 1
                j += 1
            if j == len(stamp) and overlap > 0:
                for j in range(len(stamp)):
                    target[i + j] = '?'
                result.append(i)
                is_stamped[i] = True
                found_stamp = True
        if not found_stamp:
            break

        stamp_count += 1

    for c in target:
        if c != '?':
            return []

    return result[::-1]




### Unit tests below ###
def check(candidate):
	assert candidate(
    "abc", "bbabca") == []
	assert candidate("abab", "baba") == []
	assert candidate(
    "abca", "bca") == []
	assert candidate("abca", "aabc") == []
	assert candidate(
    "aaaaaaaaaaaaaaab", "aaaaaaaaaaaaaaab") == [0]
	assert candidate("ab", "ab") == [0]
	assert candidate(
    "abc", "abcabcabcd") == []
	assert candidate(
    "abc",
    "abcabcabcd") == []
	assert candidate(
    "abc", "ababba") == []
	assert candidate("abca", "aabcac") == []
	assert candidate(
    "abc", "cccc") == []
	assert candidate(
    "abca", "aabcac") == []
	assert candidate("aab", "aaaaaabaaa") == []
	assert candidate("ab", "ababc") == []
	assert candidate("abc", "abcabcabcd") == []
	assert candidate(
    "abc", "babca") == []
	assert candidate(
    "abc", "ababc") == [0, 2]
	assert candidate(
    "abca", "abca") == [0]
	assert candidate("abc", "ab") == []
	assert candidate("abcd", "abcd") == [0]
	assert candidate(
    "abca", "abcabcabcd") == []
	assert candidate(
    "abca",
    "aabcac") == []
	assert candidate("a", "a") == [0]
	assert candidate("abc", "abc") == [0]
def test_check():
	check(moves_to_stamp)
# Metadata Difficulty: Hard
# Metadata Topics: string,stack,greedy,queue
# Metadata Coverage: 100
