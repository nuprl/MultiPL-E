def minNumberOfFrogs(croakOfFrogs: str) -> int:
    """
    You are given the string croakOfFrogs, which represents a combination of the string "croak" from different frogs, that is, multiple frogs can croak at the same time, so multiple "croak" are mixed.
    Return the minimum number of different frogs to finish all the croaks in the given string.
    A valid "croak" means a frog is printing five letters 'c', 'r', 'o', 'a', and 'k' sequentially. The frogs have to print all five letters to finish a croak. If the given string is not a combination of a valid "croak" return -1.
 
    Example 1:

    Input: croakOfFrogs = "croakcroak"
    Output: 1 
    Explanation: One frog yelling "croak" twice.

    Example 2:

    Input: croakOfFrogs = "crcoakroak"
    Output: 2 
    Explanation: The minimum number of frogs is two. 
    The first frog could yell "crcoakroak".
    The second frog could yell later "crcoakroak".

    Example 3:

    Input: croakOfFrogs = "croakcrook"
    Output: -1
    Explanation: The given string is an invalid combination of "croak" from different frogs.

 
    Constraints:

    1 <= croakOfFrogs.length <= 105
    croakOfFrogs is either 'c', 'r', 'o', 'a', or 'k'.

    """
    ### Canonical solution below ###
    counter = [0] * 5
    frogs = max_frogs = 0
    for ch in croakOfFrogs:
        idx = 'croak'.index(ch)
        counter[idx] += 1
        if idx == 0:
            max_frogs = max(max_frogs, frogs + 1)
            frogs += 1
        else:
            counter[idx - 1] -= 1
            if counter[idx - 1] < 0:
                return -1
            if idx == 4:
                frogs -= 1
    return max_frogs if all(count == counter[0] for count in counter) else -1




### Unit tests below ###
def check(candidate):
	assert candidate("crkoakroak") == -1
	assert candidate("croakcroakkk") == -1
	assert candidate("croakcrroak") == -1
	assert candidate("croakcroakcroakcroakcroakcroakcroakcroakcroakccroakcroakcroakcroakcroakcroakcroakcroako") == -1
	assert candidate("croakok") == -1
	assert candidate("cr") == -1
	assert candidate("croakokcroak") == -1
	assert candidate("c") == -1
	assert candidate("crrroak") == -1
	assert candidate("ccroaak") == -1
	assert candidate("croakcr") == -1
	assert candidate("croakcroakcroakc") == -1
	assert candidate("ccroak") == -1
	assert candidate("crocrocrocakakak") == -1
	assert candidate(
    "croakcroakcroakcroakcroakcroakcroakcroakcroakcroakcroakcroakcroakcroakcr") == -1
	assert candidate("crocroakcroakcr") == -1
	assert candidate("croakcrook") == -1
	assert candidate("croakcroakcroakcroakcroakcroakcroakcroakcroakcroakcroakcroakcroakcroakcroakcroakcroakcr") == -1
	assert candidate("croakcrrrrrooak") == -1
	assert candidate("") == 0
def test_check():
	check(minNumberOfFrogs)
# Metadata Difficulty: Medium
# Metadata Topics: string,counting
# Metadata Coverage: 100
