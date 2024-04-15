def theMaximumAchievableX(num: int, t: int) -> int:
    """
    You are given two integers, num and t.
    
    An integer x is called achievable if it can become equal to num after applying the following operation no more than t times:
    
     * Increase or decrease x by 1, and simultaneously increase or decrease num by 1.
    
    Return the maximum possible achievable number. It can be proven that there exists at least one achievable number.
    
    Example 1:
    
    Input: num = 4, t = 1
    Output: 6
    Explanation: The maximum achievable number is x = 6; it can become equal to num after performing this operation:
    1- Decrease x by 1, and increase num by 1. Now, x = 5 and num = 5.
    It can be proven that there is no achievable number larger than 6.
    
    Example 2:
    
    Input: num = 3, t = 2
    Output: 7
    Explanation: The maximum achievable number is x = 7; after performing these operations, x will equal num:
    1- Decrease x by 1, and increase num by 1. Now, x = 6 and num = 4.
    2- Decrease x by 1, and increase num by 1. Now, x = 5 and num = 5.
    It can be proven that there is no achievable number larger than 7.
    
    
    Constraints:
    
     * 1 <= num, t <= 50
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(4, 1) == 6
    assert candidate(3, 2) == 7
    assert candidate(1, 1) == 3
    assert candidate(1, 2) == 5
    assert candidate(1, 3) == 7
    assert candidate(1, 4) == 9
    assert candidate(1, 5) == 11
    assert candidate(1, 6) == 13
    assert candidate(1, 7) == 15
    assert candidate(1, 8) == 17
    assert candidate(1, 9) == 19
    assert candidate(1, 10) == 21
    assert candidate(1, 11) == 23
    assert candidate(1, 12) == 25
    assert candidate(1, 13) == 27
    assert candidate(1, 14) == 29
    assert candidate(1, 15) == 31
    assert candidate(1, 16) == 33
    assert candidate(1, 17) == 35
    assert candidate(1, 18) == 37
    assert candidate(1, 19) == 39
    assert candidate(1, 20) == 41
    assert candidate(1, 21) == 43
    assert candidate(1, 22) == 45
    assert candidate(1, 23) == 47
    assert candidate(1, 24) == 49
    assert candidate(1, 25) == 51
    assert candidate(1, 26) == 53
    assert candidate(1, 27) == 55
    assert candidate(1, 28) == 57
    assert candidate(1, 29) == 59
    assert candidate(1, 30) == 61
    assert candidate(1, 31) == 63
    assert candidate(1, 32) == 65
    assert candidate(1, 33) == 67
    assert candidate(1, 34) == 69
    assert candidate(1, 35) == 71
    assert candidate(1, 36) == 73
    assert candidate(1, 37) == 75
    assert candidate(1, 38) == 77
    assert candidate(1, 39) == 79
    assert candidate(1, 40) == 81
    assert candidate(1, 41) == 83
    assert candidate(1, 42) == 85
    assert candidate(1, 43) == 87
    assert candidate(1, 44) == 89
    assert candidate(1, 45) == 91
    assert candidate(1, 46) == 93
    assert candidate(1, 47) == 95
    assert candidate(1, 48) == 97
    assert candidate(1, 49) == 99
    assert candidate(1, 50) == 101
    assert candidate(2, 1) == 4
    assert candidate(2, 2) == 6
    assert candidate(2, 3) == 8
    assert candidate(2, 4) == 10
    assert candidate(2, 5) == 12
    assert candidate(2, 6) == 14
    assert candidate(2, 7) == 16
    assert candidate(2, 8) == 18
    assert candidate(2, 9) == 20
    assert candidate(2, 10) == 22
    assert candidate(2, 11) == 24
    assert candidate(2, 12) == 26
    assert candidate(2, 13) == 28
    assert candidate(2, 14) == 30
    assert candidate(2, 15) == 32
    assert candidate(2, 16) == 34
    assert candidate(2, 17) == 36
    assert candidate(2, 18) == 38
    assert candidate(2, 19) == 40
    assert candidate(2, 20) == 42
    assert candidate(2, 21) == 44
    assert candidate(2, 22) == 46
    assert candidate(2, 23) == 48
    assert candidate(2, 24) == 50
    assert candidate(2, 25) == 52
    assert candidate(2, 26) == 54
    assert candidate(2, 27) == 56
    assert candidate(2, 28) == 58
    assert candidate(2, 29) == 60
    assert candidate(2, 30) == 62
    assert candidate(2, 31) == 64
    assert candidate(2, 32) == 66
    assert candidate(2, 33) == 68
    assert candidate(2, 34) == 70
    assert candidate(2, 35) == 72
    assert candidate(2, 36) == 74
    assert candidate(2, 37) == 76
    assert candidate(2, 38) == 78
    assert candidate(2, 39) == 80
    assert candidate(2, 40) == 82
    assert candidate(2, 41) == 84
    assert candidate(2, 42) == 86
    assert candidate(2, 43) == 88
    assert candidate(2, 44) == 90
    assert candidate(2, 45) == 92
    assert candidate(2, 46) == 94
    assert candidate(2, 47) == 96
    assert candidate(2, 48) == 98


def test_check():
    check(theMaximumAchievableX)


### Metadata below ###
# question_id = 2812
# question_title = Find the Maximum Achievable Number
# question_title_slug = find-the-maximum-achievable-number
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 230
# question_dislikes = 286