from typing import List

def findPeaks(mountain: List[int]) -> List[int]:
    """
    You are given a 0-indexed array mountain. Your task is to find all the peaks in the mountain array.
    Return an array that consists of indices of peaks in the given array in any order.
    Notes:
    
    A peak is defined as an element that is strictly greater than its neighboring elements.
    The first and last elements of the array are not a peak.
    
    
    Example 1:
    
    Input: mountain = [2,4,4]
    Output: []
    Explanation: mountain[0] and mountain[2] can not be a peak because they are first and last elements of the array.
    mountain[1] also can not be a peak because it is not strictly greater than mountain[2].
    So the answer is [].
    
    Example 2:
    
    Input: mountain = [1,4,3,8,5]
    Output: [1,3]
    Explanation: mountain[0] and mountain[4] can not be a peak because they are first and last elements of the array.
    mountain[2] also can not be a peak because it is not strictly greater than mountain[3] and mountain[1].
    But mountain [1] and mountain[3] are strictly greater than their neighboring elements.
    So the answer is [1,3].
    
    
    Constraints:
    
    3 <= mountain.length <= 100
    1 <= mountain[i] <= 100
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([2, 4, 4]) == []
    assert candidate([1, 4, 3, 8, 5]) == [1,3]
    assert candidate([1, 1, 1]) == []
    assert candidate([1, 1, 3]) == []
    assert candidate([1, 1, 5]) == []
    assert candidate([1, 2, 5]) == []
    assert candidate([1, 4, 1]) == [1]
    assert candidate([1, 4, 3]) == [1]
    assert candidate([1, 5, 5]) == []
    assert candidate([1, 6, 4]) == [1]
    assert candidate([2, 1, 1]) == []
    assert candidate([2, 1, 2]) == []
    assert candidate([2, 2, 3]) == []
    assert candidate([2, 2, 5]) == []
    assert candidate([2, 3, 2]) == [1]
    assert candidate([2, 3, 6]) == []
    assert candidate([2, 4, 3]) == [1]
    assert candidate([2, 4, 5]) == []
    assert candidate([2, 6, 4]) == [1]
    assert candidate([3, 3, 3]) == []
    assert candidate([3, 3, 5]) == []
    assert candidate([3, 4, 6]) == []
    assert candidate([3, 5, 1]) == [1]
    assert candidate([3, 5, 3]) == [1]
    assert candidate([3, 5, 4]) == [1]
    assert candidate([3, 5, 6]) == []
    assert candidate([4, 2, 1]) == []
    assert candidate([4, 2, 2]) == []
    assert candidate([4, 2, 4]) == []
    assert candidate([4, 2, 6]) == []
    assert candidate([4, 4, 1]) == []
    assert candidate([4, 4, 2]) == []
    assert candidate([4, 4, 5]) == []
    assert candidate([4, 5, 4]) == [1]
    assert candidate([4, 6, 1]) == [1]
    assert candidate([4, 6, 6]) == []
    assert candidate([5, 1, 2]) == []
    assert candidate([5, 2, 1]) == []
    assert candidate([5, 2, 2]) == []
    assert candidate([5, 2, 4]) == []
    assert candidate([5, 3, 1]) == []
    assert candidate([5, 5, 1]) == []
    assert candidate([5, 5, 2]) == []
    assert candidate([5, 5, 6]) == []
    assert candidate([5, 6, 1]) == [1]
    assert candidate([5, 6, 4]) == [1]
    assert candidate([6, 1, 1]) == []
    assert candidate([6, 1, 2]) == []
    assert candidate([6, 1, 5]) == []
    assert candidate([6, 2, 2]) == []
    assert candidate([6, 2, 5]) == []
    assert candidate([6, 3, 2]) == []
    assert candidate([6, 3, 3]) == []
    assert candidate([6, 3, 6]) == []
    assert candidate([6, 4, 3]) == []
    assert candidate([6, 5, 2]) == []
    assert candidate([6, 5, 4]) == []
    assert candidate([6, 6, 4]) == []
    assert candidate([1, 1, 1, 4]) == []
    assert candidate([1, 1, 7, 7]) == []
    assert candidate([1, 3, 6, 5]) == [2]
    assert candidate([1, 4, 7, 8]) == []
    assert candidate([1, 6, 6, 6]) == []
    assert candidate([1, 8, 1, 8]) == [1]
    assert candidate([2, 2, 1, 2]) == []
    assert candidate([2, 3, 7, 6]) == [2]
    assert candidate([2, 5, 4, 5]) == [1]
    assert candidate([2, 7, 1, 2]) == [1]
    assert candidate([2, 7, 2, 6]) == [1]
    assert candidate([2, 7, 5, 3]) == [1]
    assert candidate([2, 7, 7, 6]) == []
    assert candidate([3, 1, 2, 5]) == []
    assert candidate([3, 3, 4, 2]) == [2]
    assert candidate([3, 3, 7, 8]) == []
    assert candidate([3, 4, 2, 4]) == [1]
    assert candidate([3, 4, 5, 4]) == [2]
    assert candidate([3, 4, 7, 6]) == [2]
    assert candidate([3, 5, 5, 3]) == []
    assert candidate([3, 6, 4, 7]) == [1]
    assert candidate([3, 8, 5, 5]) == [1]
    assert candidate([4, 2, 4, 3]) == [2]
    assert candidate([4, 2, 6, 8]) == []
    assert candidate([4, 3, 3, 8]) == []
    assert candidate([4, 4, 8, 7]) == [2]
    assert candidate([4, 5, 1, 1]) == [1]
    assert candidate([4, 6, 1, 7]) == [1]
    assert candidate([4, 6, 2, 1]) == [1]
    assert candidate([4, 6, 2, 2]) == [1]
    assert candidate([5, 1, 7, 6]) == [2]
    assert candidate([5, 3, 2, 2]) == []
    assert candidate([5, 3, 6, 3]) == [2]
    assert candidate([5, 3, 8, 3]) == [2]
    assert candidate([5, 4, 4, 6]) == []
    assert candidate([5, 4, 4, 8]) == []
    assert candidate([5, 5, 1, 7]) == []
    assert candidate([5, 5, 8, 2]) == [2]
    assert candidate([5, 6, 7, 4]) == [2]
    assert candidate([5, 7, 4, 3]) == [1]
    assert candidate([5, 8, 7, 8]) == [1]
    assert candidate([6, 2, 8, 6]) == [2]


def test_check():
    check(findPeaks)


### Metadata below ###
# question_id = 3221
# question_title = Find the Peaks
# question_title_slug = find-the-peaks
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 91
# question_dislikes = 9