def accountBalanceAfterPurchase(purchaseAmount: int) -> int:
    """
    Initially, you have a bank account balance of 100 dollars.
    
    You are given an integer purchaseAmount representing the amount you will spend on a purchase in dollars.
    
    At the store where you will make the purchase, the purchase amount is rounded to the nearest multiple of 10. In other words, you pay a non-negative amount, roundedAmount, such that roundedAmount is a multiple of 10 and abs(roundedAmount - purchaseAmount) is minimized.
    
    If there is more than one nearest multiple of 10, the largest multiple is chosen.
    
    Return an integer denoting your account balance after making a purchase worth purchaseAmount dollars from the store.
    
    Note: 0 is considered to be a multiple of 10 in this problem.
    
    Example 1:
    
    Input: purchaseAmount = 9
    Output: 90
    Explanation: In this example, the nearest multiple of 10 to 9 is 10. Hence, your account balance becomes 100 - 10 = 90.
    
    Example 2:
    
    Input: purchaseAmount = 15
    Output: 80
    Explanation: In this example, there are two nearest multiples of 10 to 15: 10 and 20. So, the larger multiple, 20, is chosen.
    Hence, your account balance becomes 100 - 20 = 80.
    
    
    Constraints:
    
     * 0 <= purchaseAmount <= 100
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(9) == 90
    assert candidate(15) == 80
    assert candidate(10) == 90
    assert candidate(11) == 90
    assert candidate(12) == 90
    assert candidate(13) == 90
    assert candidate(14) == 90
    assert candidate(16) == 80
    assert candidate(17) == 80
    assert candidate(18) == 80
    assert candidate(19) == 80
    assert candidate(1) == 100
    assert candidate(2) == 100
    assert candidate(3) == 100
    assert candidate(4) == 100
    assert candidate(5) == 90
    assert candidate(6) == 90
    assert candidate(7) == 90
    assert candidate(8) == 90
    assert candidate(20) == 80
    assert candidate(21) == 80
    assert candidate(22) == 80
    assert candidate(23) == 80
    assert candidate(24) == 80
    assert candidate(25) == 70
    assert candidate(26) == 70
    assert candidate(27) == 70
    assert candidate(28) == 70
    assert candidate(29) == 70
    assert candidate(30) == 70
    assert candidate(31) == 70
    assert candidate(32) == 70
    assert candidate(33) == 70
    assert candidate(34) == 70
    assert candidate(35) == 60
    assert candidate(36) == 60
    assert candidate(37) == 60
    assert candidate(38) == 60
    assert candidate(39) == 60
    assert candidate(40) == 60
    assert candidate(41) == 60
    assert candidate(42) == 60
    assert candidate(43) == 60
    assert candidate(44) == 60
    assert candidate(45) == 50
    assert candidate(46) == 50
    assert candidate(47) == 50
    assert candidate(48) == 50
    assert candidate(49) == 50
    assert candidate(50) == 50
    assert candidate(51) == 50
    assert candidate(52) == 50
    assert candidate(53) == 50
    assert candidate(54) == 50
    assert candidate(55) == 40
    assert candidate(56) == 40
    assert candidate(57) == 40
    assert candidate(58) == 40
    assert candidate(59) == 40
    assert candidate(60) == 40
    assert candidate(61) == 40
    assert candidate(62) == 40
    assert candidate(63) == 40
    assert candidate(64) == 40
    assert candidate(65) == 30
    assert candidate(66) == 30
    assert candidate(67) == 30
    assert candidate(68) == 30
    assert candidate(69) == 30
    assert candidate(70) == 30
    assert candidate(71) == 30
    assert candidate(72) == 30
    assert candidate(73) == 30
    assert candidate(74) == 30
    assert candidate(75) == 20
    assert candidate(76) == 20
    assert candidate(77) == 20
    assert candidate(78) == 20
    assert candidate(79) == 20
    assert candidate(80) == 20
    assert candidate(81) == 20
    assert candidate(82) == 20
    assert candidate(83) == 20
    assert candidate(84) == 20
    assert candidate(85) == 10
    assert candidate(86) == 10
    assert candidate(87) == 10
    assert candidate(88) == 10
    assert candidate(89) == 10
    assert candidate(90) == 10
    assert candidate(91) == 10
    assert candidate(92) == 10
    assert candidate(93) == 10
    assert candidate(94) == 10
    assert candidate(95) == 0
    assert candidate(96) == 0
    assert candidate(97) == 0
    assert candidate(98) == 0
    assert candidate(99) == 0
    assert candidate(100) == 0


def test_check():
    check(accountBalanceAfterPurchase)


### Metadata below ###
# question_id = 2955
# question_title = Account Balance After Rounded Purchase
# question_title_slug = account-balance-after-rounded-purchase
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 178
# question_dislikes = 37