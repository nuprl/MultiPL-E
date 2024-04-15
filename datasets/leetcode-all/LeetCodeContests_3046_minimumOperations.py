def minimumOperations(num: str) -> int:
    """
    You are given a 0-indexed string num representing a non-negative integer.
    
    In one operation, you can pick any digit of num and delete it. Note that if you delete all the digits of num, num becomes 0.
    
    Return the minimum number of operations required to make num special.
    
    An integer x is considered special if it is divisible by 25.
    
    Example 1:
    
    Input: num = "2245047"
    Output: 2
    Explanation: Delete digits num[5] and num[6]. The resulting number is "22450" which is special since it is divisible by 25.
    It can be shown that 2 is the minimum number of operations required to get a special number.
    
    Example 2:
    
    Input: num = "2908305"
    Output: 3
    Explanation: Delete digits num[3], num[4], and num[6]. The resulting number is "2900" which is special since it is divisible by 25.
    It can be shown that 3 is the minimum number of operations required to get a special number.
    
    Example 3:
    
    Input: num = "10"
    Output: 1
    Explanation: Delete digit num[0]. The resulting number is "0" which is special since it is divisible by 25.
    It can be shown that 1 is the minimum number of operations required to get a special number.
    
    
    Constraints:
    
     * 1 <= num.length <= 100
     * num only consists of digits '0' through '9'.
     * num does not contain any leading zeros.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2245047) == 2
    assert candidate(2908305) == 3
    assert candidate(10) == 1
    assert candidate(1) == 1
    assert candidate(2) == 1
    assert candidate(3) == 1
    assert candidate(4) == 1
    assert candidate(5) == 1
    assert candidate(6) == 1
    assert candidate(7) == 1
    assert candidate(8) == 1
    assert candidate(9) == 1
    assert candidate(11) == 2
    assert candidate(12) == 2
    assert candidate(13) == 2
    assert candidate(14) == 2
    assert candidate(15) == 2
    assert candidate(16) == 2
    assert candidate(17) == 2
    assert candidate(18) == 2
    assert candidate(19) == 2
    assert candidate(20) == 1
    assert candidate(21) == 2
    assert candidate(22) == 2
    assert candidate(23) == 2
    assert candidate(24) == 2
    assert candidate(25) == 0
    assert candidate(26) == 2
    assert candidate(27) == 2
    assert candidate(28) == 2
    assert candidate(29) == 2
    assert candidate(30) == 1
    assert candidate(31) == 2
    assert candidate(32) == 2
    assert candidate(33) == 2
    assert candidate(34) == 2
    assert candidate(35) == 2
    assert candidate(36) == 2
    assert candidate(37) == 2
    assert candidate(38) == 2
    assert candidate(39) == 2
    assert candidate(40) == 1
    assert candidate(41) == 2
    assert candidate(42) == 2
    assert candidate(43) == 2
    assert candidate(44) == 2
    assert candidate(45) == 2
    assert candidate(46) == 2
    assert candidate(47) == 2
    assert candidate(48) == 2
    assert candidate(49) == 2
    assert candidate(50) == 0
    assert candidate(51) == 2
    assert candidate(52) == 2
    assert candidate(53) == 2
    assert candidate(54) == 2
    assert candidate(55) == 2
    assert candidate(56) == 2
    assert candidate(57) == 2
    assert candidate(58) == 2
    assert candidate(59) == 2
    assert candidate(60) == 1
    assert candidate(61) == 2
    assert candidate(62) == 2
    assert candidate(63) == 2
    assert candidate(64) == 2
    assert candidate(65) == 2
    assert candidate(66) == 2
    assert candidate(67) == 2
    assert candidate(68) == 2
    assert candidate(69) == 2
    assert candidate(70) == 1
    assert candidate(71) == 2
    assert candidate(72) == 2
    assert candidate(73) == 2
    assert candidate(74) == 2
    assert candidate(75) == 0
    assert candidate(76) == 2
    assert candidate(77) == 2
    assert candidate(78) == 2
    assert candidate(79) == 2
    assert candidate(80) == 1
    assert candidate(81) == 2
    assert candidate(82) == 2
    assert candidate(83) == 2
    assert candidate(84) == 2
    assert candidate(85) == 2
    assert candidate(86) == 2
    assert candidate(87) == 2
    assert candidate(88) == 2
    assert candidate(89) == 2
    assert candidate(90) == 1
    assert candidate(91) == 2
    assert candidate(92) == 2
    assert candidate(93) == 2
    assert candidate(94) == 2
    assert candidate(95) == 2
    assert candidate(96) == 2
    assert candidate(97) == 2
    assert candidate(98) == 2


def test_check():
    check(minimumOperations)


### Metadata below ###
# question_id = 3046
# question_title = Minimum Operations to Make a Special Number
# question_title_slug = minimum-operations-to-make-a-special-number
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 317
# question_dislikes = 48