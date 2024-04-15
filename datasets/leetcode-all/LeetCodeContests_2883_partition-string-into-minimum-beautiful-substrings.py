def minimumBeautifulSubstrings(s: str) -> int:
    """
    Given a binary string s, partition the string into one or more substrings such that each substring is beautiful.
    
    A string is beautiful if:
    
     * It doesn't contain leading zeros.
     * It's the binary representation of a number that is a power of 5.
    
    Return the minimum number of substrings in such partition. If it is impossible to partition the string s into beautiful substrings, return -1.
    
    A substring is a contiguous sequence of characters in a string.
    
    Example 1:
    
    Input: s = "1011"
    Output: 2
    Explanation: We can paritition the given string into ["101", "1"].
    - The string "101" does not contain leading zeros and is the binary representation of integer 51 = 5.
    - The string "1" does not contain leading zeros and is the binary representation of integer 50 = 1.
    It can be shown that 2 is the minimum number of beautiful substrings that s can be partitioned into.
    
    Example 2:
    
    Input: s = "111"
    Output: 3
    Explanation: We can paritition the given string into ["1", "1", "1"].
    - The string "1" does not contain leading zeros and is the binary representation of integer 50 = 1.
    It can be shown that 3 is the minimum number of beautiful substrings that s can be partitioned into.
    
    Example 3:
    
    Input: s = "0"
    Output: -1
    Explanation: We can not partition the given string into beautiful substrings.
    
    
    Constraints:
    
     * 1 <= s.length <= 15
     * s[i] is either '0' or '1'.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1011) == 2
    assert candidate(111) == 3
    assert candidate(0) == -1
    assert candidate(100111000110111) == 4
    assert candidate(100111000111) == 3
    assert candidate(1001110001111) == 4
    assert candidate(100111000111101) == 4
    assert candidate(10110011100011) == 3
    assert candidate(101101) == 2
    assert candidate(101101101) == 3
    assert candidate(101101101101101) == 5
    assert candidate(1011011011101) == 5
    assert candidate(10110110111011) == 6
    assert candidate(101101101111001) == 5
    assert candidate(1011011011111) == 7
    assert candidate(101101110011101) == 5
    assert candidate(10110111001111) == 6
    assert candidate(1011011101101) == 5
    assert candidate(101101110110111) == 7
    assert candidate(101101110111011) == 7
    assert candidate(1011011101111) == 7
    assert candidate(101101110111101) == 7
    assert candidate(10110111011111) == 8
    assert candidate(101101111001101) == 5
    assert candidate(10110111101) == 5
    assert candidate(10110111101101) == 6
    assert candidate(101101111011011) == 7
    assert candidate(101101111011101) == 7
    assert candidate(10110111101111) == 8
    assert candidate(101101111011111) == 9
    assert candidate(1011011111) == 6
    assert candidate(1011011111001) == 5
    assert candidate(101101111101) == 6
    assert candidate(1011011111011) == 7
    assert candidate(10110111110111) == 8
    assert candidate(10110111111001) == 6
    assert candidate(101101111110011) == 7
    assert candidate(10110111111011) == 4
    assert candidate(101101111110111) == 5
    assert candidate(101101111111) == 8
    assert candidate(101101111111101) == 5
    assert candidate(101110011011) == 4
    assert candidate(10111001101101) == 4
    assert candidate(101110011011111) == 7
    assert candidate(1011100111) == 4
    assert candidate(10111001110001) == 3
    assert candidate(10111001110011) == 4
    assert candidate(1011100111011) == 5
    assert candidate(10111001110111) == 6
    assert candidate(10111001111) == 5
    assert candidate(10111001111001) == 4
    assert candidate(1011100111101) == 5
    assert candidate(101110011110111) == 7
    assert candidate(101110011111001) == 5
    assert candidate(10111001111101) == 6
    assert candidate(101110011111011) == 7
    assert candidate(1011100111111) == 7
    assert candidate(10111001111111) == 8
    assert candidate(1011101101) == 4
    assert candidate(10111011011011) == 6
    assert candidate(101110110111) == 6
    assert candidate(101110110111011) == 7
    assert candidate(1011101101111) == 7
    assert candidate(101110111001101) == 5
    assert candidate(101110111001111) == 7
    assert candidate(10111011101) == 5
    assert candidate(10111011101111) == 8
    assert candidate(101110111011111) == 9
    assert candidate(1011101111) == 6
    assert candidate(1011101111001) == 5
    assert candidate(10111011110011) == 6
    assert candidate(101110111101) == 6
    assert candidate(1011101111011) == 7
    assert candidate(10111011111) == 7
    assert candidate(10111011111001) == 6
    assert candidate(10111011111011) == 8
    assert candidate(101110111110111) == 9
    assert candidate(101110111111001) == 7
    assert candidate(101110111111011) == 5
    assert candidate(101110111111101) == 5
    assert candidate(10111011111111) == 10
    assert candidate(101110111111111) == 11
    assert candidate(101111) == 4
    assert candidate(101111001) == 3
    assert candidate(1011110011) == 4
    assert candidate(10111100110111) == 6
    assert candidate(101111001110001) == 4
    assert candidate(101111001111101) == 7
    assert candidate(10111100111111) == 8
    assert candidate(101111011) == 5
    assert candidate(10111101101) == 5
    assert candidate(101111011011) == 6
    assert candidate(10111101101101) == 6
    assert candidate(1011110110111) == 7
    assert candidate(1011110111101) == 7
    assert candidate(101111011110111) == 9
    assert candidate(101111011111) == 8
    assert candidate(1011110111111) == 9
    assert candidate(101111011111101) == 5
    assert candidate(10111101111111) == 10


def test_check():
    check(minimumBeautifulSubstrings)


### Metadata below ###
# question_id = 2883
# question_title = Partition String Into Minimum Beautiful Substrings
# question_title_slug = partition-string-into-minimum-beautiful-substrings
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 289
# question_dislikes = 8