def countSteppingNumbers(low: str, high: str) -> int:
    """
    Given two positive integers low and high represented as strings, find the count of stepping numbers in the inclusive range [low, high].
    
    A stepping number is an integer such that all of its adjacent digits have an absolute difference of exactly 1.
    
    Return an integer denoting the count of stepping numbers in the inclusive range [low, high].
    
    Since the answer may be very large, return it modulo 109 + 7.
    
    Note: A stepping number should not have a leading zero.
    
    Example 1:
    
    Input: low = "1", high = "11"
    Output: 10
    Explanation: The stepping numbers in the range [1,11] are 1, 2, 3, 4, 5, 6, 7, 8, 9 and 10. There are a total of 10 stepping numbers in the range. Hence, the output is 10.
    
    Example 2:
    
    Input: low = "90", high = "101"
    Output: 2
    Explanation: The stepping numbers in the range [90,101] are 98 and 101. There are a total of 2 stepping numbers in the range. Hence, the output is 2.
    
    Constraints:
    
     * 1 <= int(low) <= int(high) < 10100
     * 1 <= low.length, high.length <= 100
     * low and high consist of only digits.
     * low and high don't have any leading zeros.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1, 11) == 10
    assert candidate(90, 101) == 2
    assert candidate(2, 40) == 14
    assert candidate(26, 60) == 6
    assert candidate(40, 70) == 6
    assert candidate(46, 66) == 3
    assert candidate(58, 58) == 0
    assert candidate(23, 99) == 14
    assert candidate(44, 86) == 7
    assert candidate(20, 111) == 16
    assert candidate(70, 75) == 0
    assert candidate(37, 111) == 12
    assert candidate(17, 149) == 18
    assert candidate(21, 145) == 18
    assert candidate(47, 124) == 12
    assert candidate(81, 91) == 2
    assert candidate(18, 159) == 18
    assert candidate(85, 92) == 2
    assert candidate(66, 112) == 7
    assert candidate(84, 102) == 4
    assert candidate(41, 156) == 14
    assert candidate(64, 135) == 10
    assert candidate(57, 143) == 10
    assert candidate(85, 116) == 4
    assert candidate(103, 104) == 0
    assert candidate(98, 118) == 2
    assert candidate(28, 197) == 16
    assert candidate(6, 220) == 26
    assert candidate(106, 121) == 1
    assert candidate(7, 226) == 25
    assert candidate(105, 136) == 2
    assert candidate(30, 221) == 18
    assert candidate(113, 139) == 2
    assert candidate(44, 210) == 14
    assert candidate(13, 242) == 22
    assert candidate(12, 257) == 23
    assert candidate(70, 205) == 8
    assert candidate(55, 229) == 13
    assert candidate(16, 276) == 22
    assert candidate(140, 153) == 0
    assert candidate(79, 218) == 8
    assert candidate(99, 200) == 3
    assert candidate(90, 210) == 5
    assert candidate(123, 186) == 1
    assert candidate(149, 160) == 0
    assert candidate(138, 180) == 0
    assert candidate(160, 163) == 0
    assert candidate(79, 246) == 10
    assert candidate(137, 189) == 0
    assert candidate(163, 163) == 0
    assert candidate(37, 289) == 18
    assert candidate(79, 255) == 10
    assert candidate(140, 197) == 0
    assert candidate(22, 317) == 21
    assert candidate(146, 199) == 0
    assert candidate(57, 288) == 14
    assert candidate(109, 237) == 6
    assert candidate(48, 299) == 16
    assert candidate(158, 194) == 0
    assert candidate(29, 326) == 22
    assert candidate(133, 223) == 2
    assert candidate(109, 249) == 6
    assert candidate(20, 341) == 24
    assert candidate(9, 352) == 29
    assert candidate(115, 253) == 6
    assert candidate(181, 188) == 0
    assert candidate(120, 250) == 6
    assert candidate(100, 273) == 7
    assert candidate(105, 269) == 6
    assert candidate(189, 190) == 0
    assert candidate(148, 237) == 4
    assert candidate(126, 267) == 4
    assert candidate(141, 252) == 4
    assert candidate(185, 209) == 0
    assert candidate(14, 381) == 26
    assert candidate(7, 388) == 31
    assert candidate(15, 383) == 26
    assert candidate(78, 325) == 13
    assert candidate(131, 274) == 4
    assert candidate(177, 230) == 2
    assert candidate(66, 346) == 17
    assert candidate(144, 271) == 4
    assert candidate(96, 322) == 9
    assert candidate(112, 307) == 6
    assert candidate(73, 349) == 16
    assert candidate(128, 296) == 4
    assert candidate(189, 237) == 4
    assert candidate(141, 286) == 4
    assert candidate(47, 382) == 20
    assert candidate(27, 411) == 24
    assert candidate(16, 423) == 26
    assert candidate(22, 417) == 25
    assert candidate(174, 266) == 4
    assert candidate(101, 342) == 9
    assert candidate(76, 370) == 16
    assert candidate(147, 301) == 4
    assert candidate(72, 376) == 16
    assert candidate(154, 297) == 4
    assert candidate(15, 439) == 28
    assert candidate(73, 381) == 16


def test_check():
    check(countSteppingNumbers)


### Metadata below ###
# question_id = 2921
# question_title = Count Stepping Numbers in Range
# question_title_slug = count-stepping-numbers-in-range
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 312
# question_dislikes = 8