from typing import List

def sorted_list_sum(lst: List[str]) -> List[str]:
    """Write a function that accepts an array array list of strings as a parameter,
    deletes the strings that have odd lengths from it,
    and returns the resulted array list with a sorted order,
    The array list is always an array array list of strings and never an array array list of numbers,
    and it may contain duplicates.
    The order of the array list should be ascending by length of each word, and you
    should return the array list sorted by that rule.
    If two words have the same length, sort the array list alphabetically.
    The function should return an array array list of strings in sorted order.
    You may assume that all words will have the same length.
    For example:
    >>> list_sort(["aa", "a", "aaa"]) 
    ["aa"]
    >>> list_sort(["ab", "a", "aaa", "cd"]) 
    ["ab", "cd"]
    """
    ### Canonical solution below ###
    lst.sort()
    new_lst = []
    for i in lst:
        if len(i)%2 == 0:
            new_lst.append(i)
    return sorted(new_lst, key=len)

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    assert candidate(["aa", "a", "aaa"]) == ["aa"]
    assert candidate(["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"]
    assert candidate(["d", "b", "c", "a"]) == []
    assert candidate(["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"]

    # Check some edge cases that are easy to work out by hand.
    assert candidate(["AI", "ai", "au"]) == ["AI", "ai", "au"]
    assert candidate(["a", "b", "b", "c", "c", "a"]) == []
    assert candidate(['aaaa', 'bbbb', 'dd', 'cc']) == ["cc", "dd", "aaaa", "bbbb"]

def test_check():
    check(sorted_list_sum)
