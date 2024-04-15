from typing import List

def findPrimePairs(n: int) -> List[List[int]]:
    """
    You are given an integer n. We say that two integers x and y form a prime number pair if:
    
     * 1 <= x <= y <= n
     * x + y == n
     * x and y are prime numbers
    
    Return the 2D sorted list of prime number pairs [xi, yi]. The list should be sorted in increasing order of xi. If there are no prime number pairs at all, return an empty array.
    
    Note: A prime number is a natural number greater than 1 with only two factors, itself and 1.
    
    Example 1:
    
    Input: n = 10
    Output: [[3,7],[5,5]]
    Explanation: In this example, there are two prime pairs that satisfy the criteria.
    These pairs are [3,7] and [5,5], and we return them in the sorted order as described in the problem statement.
    
    Example 2:
    
    Input: n = 2
    Output: []
    Explanation: We can show that there is no prime number pair that gives a sum of 2, so we return an empty array.
    
    
    Constraints:
    
     * 1 <= n <= 106
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10) == [[3,7],[5,5]]
    assert candidate(2) == []
    assert candidate(1) == []
    assert candidate(3) == []
    assert candidate(4) == [[2,2]]
    assert candidate(5) == [[2,3]]
    assert candidate(6) == [[3,3]]
    assert candidate(7) == [[2,5]]
    assert candidate(8) == [[3,5]]
    assert candidate(9) == [[2,7]]
    assert candidate(11) == []
    assert candidate(12) == [[5,7]]
    assert candidate(13) == [[2,11]]
    assert candidate(14) == [[3,11],[7,7]]
    assert candidate(15) == [[2,13]]
    assert candidate(16) == [[3,13],[5,11]]
    assert candidate(17) == []
    assert candidate(18) == [[5,13],[7,11]]
    assert candidate(19) == [[2,17]]
    assert candidate(20) == [[3,17],[7,13]]
    assert candidate(21) == [[2,19]]
    assert candidate(22) == [[3,19],[5,17],[11,11]]
    assert candidate(23) == []
    assert candidate(24) == [[5,19],[7,17],[11,13]]
    assert candidate(25) == [[2,23]]
    assert candidate(26) == [[3,23],[7,19],[13,13]]
    assert candidate(27) == []
    assert candidate(28) == [[5,23],[11,17]]
    assert candidate(29) == []
    assert candidate(30) == [[7,23],[11,19],[13,17]]
    assert candidate(31) == [[2,29]]
    assert candidate(32) == [[3,29],[13,19]]
    assert candidate(33) == [[2,31]]
    assert candidate(34) == [[3,31],[5,29],[11,23],[17,17]]
    assert candidate(35) == []
    assert candidate(36) == [[5,31],[7,29],[13,23],[17,19]]
    assert candidate(37) == []
    assert candidate(38) == [[7,31],[19,19]]
    assert candidate(39) == [[2,37]]
    assert candidate(40) == [[3,37],[11,29],[17,23]]
    assert candidate(41) == []
    assert candidate(42) == [[5,37],[11,31],[13,29],[19,23]]
    assert candidate(43) == [[2,41]]
    assert candidate(44) == [[3,41],[7,37],[13,31]]
    assert candidate(45) == [[2,43]]
    assert candidate(46) == [[3,43],[5,41],[17,29],[23,23]]
    assert candidate(47) == []
    assert candidate(48) == [[5,43],[7,41],[11,37],[17,31],[19,29]]
    assert candidate(49) == [[2,47]]
    assert candidate(50) == [[3,47],[7,43],[13,37],[19,31]]
    assert candidate(51) == []
    assert candidate(52) == [[5,47],[11,41],[23,29]]
    assert candidate(53) == []
    assert candidate(54) == [[7,47],[11,43],[13,41],[17,37],[23,31]]
    assert candidate(55) == [[2,53]]
    assert candidate(56) == [[3,53],[13,43],[19,37]]
    assert candidate(57) == []
    assert candidate(58) == [[5,53],[11,47],[17,41],[29,29]]
    assert candidate(59) == []
    assert candidate(60) == [[7,53],[13,47],[17,43],[19,41],[23,37],[29,31]]
    assert candidate(61) == [[2,59]]
    assert candidate(62) == [[3,59],[19,43],[31,31]]
    assert candidate(63) == [[2,61]]
    assert candidate(64) == [[3,61],[5,59],[11,53],[17,47],[23,41]]
    assert candidate(65) == []
    assert candidate(66) == [[5,61],[7,59],[13,53],[19,47],[23,43],[29,37]]
    assert candidate(67) == []
    assert candidate(68) == [[7,61],[31,37]]
    assert candidate(69) == [[2,67]]
    assert candidate(70) == [[3,67],[11,59],[17,53],[23,47],[29,41]]
    assert candidate(71) == []
    assert candidate(72) == [[5,67],[11,61],[13,59],[19,53],[29,43],[31,41]]
    assert candidate(73) == [[2,71]]
    assert candidate(74) == [[3,71],[7,67],[13,61],[31,43],[37,37]]
    assert candidate(75) == [[2,73]]
    assert candidate(76) == [[3,73],[5,71],[17,59],[23,53],[29,47]]
    assert candidate(77) == []
    assert candidate(78) == [[5,73],[7,71],[11,67],[17,61],[19,59],[31,47],[37,41]]
    assert candidate(79) == []
    assert candidate(80) == [[7,73],[13,67],[19,61],[37,43]]
    assert candidate(81) == [[2,79]]
    assert candidate(82) == [[3,79],[11,71],[23,59],[29,53],[41,41]]
    assert candidate(83) == []
    assert candidate(84) == [[5,79],[11,73],[13,71],[17,67],[23,61],[31,53],[37,47],[41,43]]
    assert candidate(85) == [[2,83]]
    assert candidate(86) == [[3,83],[7,79],[13,73],[19,67],[43,43]]
    assert candidate(87) == []
    assert candidate(88) == [[5,83],[17,71],[29,59],[41,47]]
    assert candidate(89) == []
    assert candidate(90) == [[7,83],[11,79],[17,73],[19,71],[23,67],[29,61],[31,59],[37,53],[43,47]]
    assert candidate(91) == [[2,89]]
    assert candidate(92) == [[3,89],[13,79],[19,73],[31,61]]
    assert candidate(93) == []
    assert candidate(94) == [[5,89],[11,83],[23,71],[41,53],[47,47]]
    assert candidate(95) == []
    assert candidate(96) == [[7,89],[13,83],[17,79],[23,73],[29,67],[37,59],[43,53]]
    assert candidate(97) == []
    assert candidate(98) == [[19,79],[31,67],[37,61]]
    assert candidate(99) == [[2,97]]
    assert candidate(100) == [[3,97],[11,89],[17,83],[29,71],[41,59],[47,53]]


def test_check():
    check(findPrimePairs)


### Metadata below ###
# question_id = 2873
# question_title = Prime Pairs With Target Sum
# question_title_slug = prime-pairs-with-target-sum
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 311
# question_dislikes = 30