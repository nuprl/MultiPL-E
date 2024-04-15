def stringCount(n: int) -> int:
    """
    You are given an integer n.
    
    A string s is called good if it contains only lowercase English characters and it is possible to rearrange the characters of s such that the new string contains "leet" as a substring.
    
    For example:
    
     * The string "lteer" is good because we can rearrange it to form "leetr" .
     * "letl" is not good because we cannot rearrange it to contain "leet" as a substring.
    
    Return the total number of good strings of length n.
    
    Since the answer may be large, return it modulo 109 + 7.
    
    A substring is a contiguous sequence of characters within a string.
    
    
    Example 1:
    
    Input: n = 4
    Output: 12
    Explanation: The 12 strings which can be rearranged to have "leet" as a substring are: "eelt", "eetl", "elet", "elte", "etel", "etle", "leet", "lete", "ltee", "teel", "tele", and "tlee".
    
    Example 2:
    
    Input: n = 10
    Output: 83943898
    Explanation: The number of strings with length 10 which can be rearranged to have "leet" as a substring is 526083947580. Hence the answer is 526083947580 % (109 + 7) = 83943898.
    
    
    Constraints:
    
     * 1 <= n <= 105
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(4) == 12
    assert candidate(10) == 83943898
    assert candidate(1) == 0
    assert candidate(2) == 0
    assert candidate(3) == 0
    assert candidate(5) == 1460
    assert candidate(6) == 106620
    assert candidate(7) == 6058192
    assert candidate(8) == 295164156
    assert candidate(9) == 947613240
    assert candidate(11) == 795234177
    assert candidate(12) == 55396773
    assert candidate(13) == 968092561
    assert candidate(14) == 715599898
    assert candidate(15) == 430509685
    assert candidate(16) == 462719236
    assert candidate(17) == 155543310
    assert candidate(18) == 159683962
    assert candidate(19) == 808507313
    assert candidate(20) == 291395991
    assert candidate(21) == 461951930
    assert candidate(22) == 871561520
    assert candidate(23) == 993268925
    assert candidate(24) == 871982505
    assert candidate(25) == 935610434
    assert candidate(26) == 867518559
    assert candidate(27) == 3067523
    assert candidate(28) == 716801469
    assert candidate(29) == 452206104
    assert candidate(30) == 52805056
    assert candidate(31) == 61992724
    assert candidate(32) == 76928250
    assert candidate(33) == 257967635
    assert candidate(34) == 549347744
    assert candidate(35) == 290653839
    assert candidate(36) == 123906995
    assert candidate(37) == 41253530
    assert candidate(38) == 828924891
    assert candidate(39) == 60893212
    assert candidate(40) == 618599272
    assert candidate(41) == 840600409
    assert candidate(42) == 995406621
    assert candidate(43) == 991833054
    assert candidate(44) == 403185520
    assert candidate(45) == 904195428
    assert candidate(46) == 643609894
    assert candidate(47) == 177947842
    assert candidate(48) == 826753905
    assert candidate(49) == 855443295
    assert candidate(50) == 232825199
    assert candidate(51) == 227116084
    assert candidate(52) == 417264566
    assert candidate(53) == 468973861
    assert candidate(54) == 999145386
    assert candidate(55) == 721276317
    assert candidate(56) == 385673910
    assert candidate(57) == 7891114
    assert candidate(58) == 85081065
    assert candidate(59) == 194677227
    assert candidate(60) == 759126147
    assert candidate(61) == 273111337
    assert candidate(62) == 166598301
    assert candidate(63) == 955460796
    assert candidate(64) == 685704195
    assert candidate(65) == 821093882
    assert candidate(66) == 172674695
    assert candidate(67) == 464621746
    assert candidate(68) == 432202634
    assert candidate(69) == 465445347
    assert candidate(70) == 654273613
    assert candidate(71) == 366864502
    assert candidate(72) == 124689502
    assert candidate(73) == 419691288
    assert candidate(74) == 987033948
    assert candidate(75) == 842828500
    assert candidate(76) == 409614634
    assert candidate(77) == 73844796
    assert candidate(78) == 584672527
    assert candidate(79) == 113476429
    assert candidate(80) == 974106352
    assert candidate(81) == 646239862
    assert candidate(82) == 420253116
    assert candidate(83) == 817573615
    assert candidate(84) == 471199144
    assert candidate(85) == 567239979
    assert candidate(86) == 221534816
    assert candidate(87) == 707218848
    assert candidate(88) == 687360104
    assert candidate(89) == 551986596
    assert candidate(90) == 122933939
    assert candidate(91) == 427294641
    assert candidate(92) == 14022454
    assert candidate(93) == 568729284
    assert candidate(94) == 653568519
    assert candidate(95) == 15509440
    assert candidate(96) == 991824044
    assert candidate(97) == 690441338
    assert candidate(98) == 600462833
    assert candidate(99) == 880019356
    assert candidate(100) == 86731066


def test_check():
    check(stringCount)


### Metadata below ###
# question_id = 3200
# question_title = Number of Strings Which Can Be Rearranged to Contain Substring
# question_title_slug = number-of-strings-which-can-be-rearranged-to-contain-substring
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 119
# question_dislikes = 54